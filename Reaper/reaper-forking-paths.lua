

-- @description Forking Paths Global UDP Bridge (Fixed API)
-- @author Michael Palumbo

-- --- 1. BOOTSTRAP LOCAL LUASOCKET ---
local socket = (function()
    local info = debug.getinfo(1, 'S')
    local script_path = info.source:match([[^@?(.*[\/])]])
    package.path = script_path .. "?.lua;" .. package.path
    package.cpath = script_path .. "?.so;" .. script_path .. "?.dylib;" .. package.cpath
    local ok, s = pcall(require, "socket")
    return ok and s or nil
end)()

if not socket then reaper.ShowConsoleMsg("❌ ERROR: LuaSocket not found.\n") return end

-- --- 2. SETUP UDP ---
local udp = socket.udp()
udp:setpeername("127.0.0.1", 4000)
udp:settimeout(0)

-- --- 3. STATE TRACKING ---
-- --- 3. STATE TRACKING ---
local last_change_count = reaper.GetProjectStateChangeCount(0)
local last_change_time = 0
local last_project_guid = "" -- Add this line
local SETTLE_TIME = 0.3 
local pending_update = false
local has_synced = false
local last_sent_chunks = {} -- This is the "Memory" for Delta tracking

-- --- 4. CORE FUNCTIONS ---

-- local function send_full_sync()
--     local data = get_full_project_data()
    
--     local tracks_json = ""
--     for i, t in ipairs(data.tracks) do
--         tracks_json = tracks_json .. '{"guid":"'..t.guid..'","chunk":"'..t.chunk..'"}'
--         if i < #data.tracks then tracks_json = tracks_json .. "," end
--     end

--     -- We change the CMD to REAPER_FULL_SYNC so Rust knows this is the "Big Bang"
--     local msg = '{"cmd":"REAPER_FULL_SYNC","payload":['..tracks_json..']}'
    
--     local ok, err = udp:send(msg)
--     if ok then
--         reaper.ShowConsoleMsg("📦 FULL PROJECT SYNC SENT (" .. #data.tracks .. " tracks)\n")
--     else
--         reaper.ShowConsoleMsg("❌ UDP FULL SYNC ERROR: " .. tostring(err) .. "\n")
--     end
-- end

-- local function get_full_project_data()
--     -- Get the number of tracks
--     local track_count = reaper.CountTracks(0)
--     local project_data = {
--         track_count = track_count,
--         tracks = {}
--     }

--     -- Capture every track's chunk (the "blueprint")
--     for i = 0, track_count - 1 do
--         local track = reaper.GetTrack(0, i)
--         local _, chunk = reaper.GetTrackStateChunk(track, "", false)
--         table.insert(project_data.tracks, {
--             idx = i,
--             guid = reaper.GetTrackGUID(track),
--             chunk = chunk:gsub("\n", "\\n"):gsub('"', '\\"'):gsub("\r", "")
--         })
--     end
    
--     return project_data
-- end

-- local function send_global_update()
--     local _, undo_desc = reaper.Undo_CanUndo2(0)
--     local data = get_full_project_data()
    
--     -- Manually build a JSON-ish string to avoid needing a heavy JSON library
--     local tracks_json = ""
--     for i, t in ipairs(data.tracks) do
--         tracks_json = tracks_json .. '{"guid":"'..t.guid..'","chunk":"'..t.chunk..'"}'
--         if i < #data.tracks then tracks_json = tracks_json .. "," end
--     end

--     local msg = '{"cmd":"REAPER_STATE_UPDATE","payload":['..tracks_json..'], "meta":{"action":"'..(undo_desc or "Edit")..'"}}'
    
--     -- Send via UDP
--     local ok, err = udp:send(msg)
--     if ok then
--         reaper.ShowConsoleMsg("🚀 SENT: " .. (undo_desc or "Manual Change") .. " (" .. #data.tracks .. " tracks)\n")
--     else
--         reaper.ShowConsoleMsg("❌ UDP ERROR: " .. tostring(err) .. " (Message might be too large for UDP)\n")
--     end
-- end

-- This helper handles the actual UDP delivery
local function send_to_rust(cmd, tracks_table, meta)
    local tracks_json = ""
    for i, t in ipairs(tracks_table) do
        tracks_json = tracks_json .. '{"guid":"'..t.guid..'","chunk":"'..t.chunk..'"}'
        if i < #tracks_table then tracks_json = tracks_json .. "," end
    end

    local meta_json = meta and (', "meta":{"action":"'..meta..'"}') or ""
    local msg = '{"cmd":"'..cmd..'", "payload":['..tracks_json..']'..meta_json..'}'
    
    local ok, err = udp:send(msg)
    return ok, err
end

-- 1. FULL SYNC: Sends everything and populates memory
local function send_full_sync()
    last_sent_chunks = {} -- Wipe memory for fresh sync
    local track_count = reaper.CountTracks(0)
    local tracks_to_send = {}

    for i = 0, track_count - 1 do
        local track = reaper.GetTrack(0, i)
        local guid = reaper.GetTrackGUID(track)
        local _, chunk = reaper.GetTrackStateChunk(track, "", false)
        
        last_sent_chunks[guid] = chunk -- Remember it
        table.insert(tracks_to_send, {
            guid = guid,
            chunk = chunk:gsub("\n", "\\n"):gsub('"', '\\"'):gsub("\r", "")
        })
    end

    send_to_rust("REAPER_FULL_SYNC", tracks_to_send)
    reaper.ShowConsoleMsg("📦 FULL SYNC: Sent " .. #tracks_to_send .. " tracks\n")
end

-- 2. DELTA UPDATE: Only sends what changed since last time
local function send_global_update()
    local _, undo_desc = reaper.Undo_CanUndo2(0)
    local track_count = reaper.CountTracks(0)
    local changed_tracks = {}

    for i = 0, track_count - 1 do
        local track = reaper.GetTrack(0, i)
        local guid = reaper.GetTrackGUID(track)
        local _, current_chunk = reaper.GetTrackStateChunk(track, "", false)
        
        -- The "Work Hard" Logic: Compare current to memory
        if current_chunk ~= last_sent_chunks[guid] then
            table.insert(changed_tracks, {
                guid = guid,
                chunk = current_chunk:gsub("\n", "\\n"):gsub('"', '\\"'):gsub("\r", "")
            })
            last_sent_chunks[guid] = current_chunk -- Update memory
        end
    end
    
    if #changed_tracks > 0 then
        send_to_rust("REAPER_STATE_UPDATE", changed_tracks, undo_desc or "Edit")
        reaper.ShowConsoleMsg("🚀 DELTA: " .. #changed_tracks .. " track(s) updated\n")
    end
end

local has_synced = false -- The Dirty Flag

-- --- 5. MAIN LOOP ---
function main_loop()
    -- 1. Get the current project path/name as the ID
    -- EnumProjects returns the pointer and the string path
    local proj_ptr, proj_fn = reaper.EnumProjects(-1)
    
    -- If it's a new unsaved project, proj_fn might be empty, 
    -- so we use the pointer as a fallback string
    local current_project_id = proj_fn ~= "" and proj_fn or tostring(proj_ptr)
    
    -- 2. Detect Project Switch (using the ID we just made)
    if current_project_id ~= last_project_guid then
        reaper.ShowConsoleMsg("📂 PROJECT CHANGE: " .. current_project_id .. "\n")
        last_project_guid = current_project_id
        has_synced = false 
    end

    -- 3. Initial Sync
    if not has_synced then
        send_full_sync()
        has_synced = true
    end

    local cur_count = reaper.GetProjectStateChangeCount(0)
    
    if cur_count ~= last_change_count then
        last_change_count = cur_count
        last_change_time = reaper.time_precise()
        pending_update = true
    end

    if pending_update then
        if (reaper.time_precise() - last_change_time) > SETTLE_TIME then
            send_global_update()
            pending_update = false
        end
    end
    
    reaper.defer(main_loop)
end

reaper.ClearConsole()
reaper.ShowConsoleMsg("--- 🌐 GLOBAL OBSERVER ACTIVE ---\n")
main_loop()
