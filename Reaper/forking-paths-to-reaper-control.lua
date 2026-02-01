local TARGET_TRACK = 0 -- Track 1

-- The "Delta" we want to apply
local TARGET_LINE_START = "VOLPAN"
local NEW_VALUE_LINE = "VOLPAN 2.15306599269332 0 -1 -1 1"

function restore_delta()
    local track = reaper.GetTrack(0, TARGET_TRACK)
    if not track then return end

    -- 1. Get the current FULL state
    local _, chunk = reaper.GetTrackStateChunk(track, "", false)
    
    -- 2. Use Lua patterns to find the VOLPAN line and swap it
    -- This looks for a line starting with VOLPAN and replaces the whole line
    local new_chunk, substitutions = string.gsub(
        chunk, 
        "VOLPAN [^\n\r]+", 
        NEW_VALUE_LINE
    )

    if substitutions > 0 then
        -- 3. Wrap in Undo block so we can Cmd+Z this restoration
        reaper.Undo_BeginBlock()
        
        -- 4. Apply the modified FULL chunk
        reaper.SetTrackStateChunk(track, new_chunk, false)
        
        reaper.Undo_EndBlock("FPS: Restore Specific Delta", -1)
        reaper.ShowConsoleMsg("Successfully restored: " .. NEW_VALUE_LINE .. "\n")
    else
        reaper.ShowConsoleMsg("Error: Could not find a VOLPAN line to replace.\n")
    end
end

restore_delta()
