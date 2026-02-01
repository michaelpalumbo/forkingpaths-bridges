outlets = 1

let currentParam = false;

let parent = this.patcher.parentpatcher.name
outlet(0, 'patcherName', parent)

// Max JS (js object in Max)

autowatch = 1;

var pip = null;
var currentNames = []; // our last known snapshot

function loadbang() {
    var pclass = this.patcher.parentpatcher;
    if (pclass) {
        post("The parent patcher class is " + pclass.name);
        post(`OSC route will be /${pclass.name}`)
        parent = pclass.name
        outlet(0, 'patcherName', parent)
    } else {
        post("This is a top-level patcher");
    }

    initNamespaceWatcher();
}

// 1) Query current namespace
function initNamespaceWatcher() {
    // Create watcher with callback for added/removed params
    pip = new ParameterInfoProvider(paramschanged);

    // Initial snapshot
    refreshNamespace();

    watchvalues()

    outlet(0, 'script', 'start')
}

// Call this any time you want a fresh list
function refreshNamespace() {
    if (!pip) {
        post("ParameterInfoProvider not initialized yet.\n");
        return;
    }

    var names = pip.getnames() || [];
    names.sort();

    currentNames = names;

    post("---- PARAM NAMESPACE (" + names.length + ") ----\n");
    for (var i = 0; i < names.length; i++) {
        post(names[i] + "\n");
    }
    post("-----------------------------------\n");

    
}

// 2) Listen for updates to the namespace
function paramschanged(data) {
    // data.added and data.removed are arrays of parameter names
    var added = (data && data.added) ? data.added : [];
    var removed = (data && data.removed) ? data.removed : [];

    if (added.length) {
        post("PARAMS ADDED: " + added.join(", ") + "\n");
    }
    if (removed.length) {
        post("PARAMS REMOVED: " + removed.join(", ") + "\n");
    }

    for (var i = 0; i < added.length; i++) ensureValueListener(added[i]);
    for (var j = 0; j < removed.length; j++) removeValueListener(removed[j]);
    // attach listeners to all params
    watchvalues()
}

// Convenience: ask for info on a specific param name
function info(paramName) {
    if (!pip) return;

    var infoArr = pip.getinfo(paramName);
    if (!infoArr) {
        post("No info for: " + paramName + "\n");
        return;
    }

    post("---- INFO: " + paramName + " ----\n");
    for (var k in infoArr) {
        post(k + ": " + infoArr[k] + "\n");
    }
    post("-------------------------\n");
}


// ------------------------------
// 3) VALUE WATCHING (add-on)
// ------------------------------

var paramListeners = {}; // { [paramName]: MaxobjListener }
var paramValues    = {}; // { [paramName]: lastValue }

// Call this whenever you want to attach listeners for *all* current params
function watchvalues() {
    if (!pip) {
        post("ParameterInfoProvider not initialized yet.\n");
        return;
    }

    // ensure currentNames is fresh
    refreshNamespace();

    // create listeners for any param we don't already have
    for (var i = 0; i < currentNames.length; i++) {
        ensureValueListener(currentNames[i]);
    }

    post("Value watching enabled for " + Object.keys(paramListeners).length + " params.\n");
}

// Optional: stop watching (best effort—removes refs so GC can clean up)
function unwatchvalues() {
    var keys = Object.keys(paramListeners);
    for (var i = 0; i < keys.length; i++) {
        var name = keys[i];
        paramListeners[name] = null;
        delete paramListeners[name];
    }
    post("Value watching disabled.\n");
}

// Print the current cached values (and try to refresh each value live)
function dumpvalues() {
    var keys = Object.keys(paramListeners);
    keys.sort();

    post("---- PARAM VALUES (" + keys.length + ") ----\n");
    for (var i = 0; i < keys.length; i++) {
        var name = keys[i];
        var v = getvalue(name); // refreshes cache if possible
        post(name + " : " + v + "\n");
    }
    post("-----------------------------------\n");
}

// return cached values to node.script
function getParamStates() {
    var keys = Object.keys(paramListeners);
    keys.sort();

    let cachedState = {}
    for (var i = 0; i < keys.length; i++) {
        var name = keys[i];
        // cachedState[name] = null
        cachedState[name] = getvalue(name)
        // var v = getvalue(name); // refreshes cache if possible
        // post(name + " : " + v + "\n");
    }
    let obj = {
        cmd: "keyFrame",
        data: cachedState,
        parent: this.patcher.parentpatcher.name
    }

    outlet(0, 'cachedState', JSON.stringify(obj))
}

// Get a single param value (live if possible, else cached, else null)
function getvalue(paramName) {
    var l = paramListeners[paramName];
    if (l) {
        try {
            var v = l.getvalue();
            paramValues[paramName] = v;
            return v;
        } catch (e) {
            // fall through to cached
        }
    }
    if (paramValues.hasOwnProperty(paramName)) return paramValues[paramName];
    return null;
}

// INTERNAL: create a listener if possible
function ensureValueListener(paramName) {
    if (paramListeners[paramName]) return; // already watching

    var info = pip.getinfo(paramName);
    if (!info) return;

    // docs say the info object always contains `maxobj`
    // (example output shows "maxobject" — so we defensively check both)
    var host =
        info.maxobj ||
        info.maxobject ||
        info.maxobject /* sometimes typo'd in docs */;

    if (!host) {
        // Can't watch value without the host Maxobj
        // post("No host Maxobj for " + paramName + "\n");
        return;
    }

    // Create listener for the object's value (no attrName)
    var l = new MaxobjListener(host, valuechanged);

    // stash the paramName on the listener so the callback can identify it
    l._paramName = paramName;

    paramListeners[paramName] = l;

    // grab initial value (if supported)
    try {
        paramValues[paramName] = l.getvalue();
    } catch (e) {
        // some objects may not have an observable value
        // (still fine; listener just may not fire / getvalue may fail)
    }
}


// Callback for any watched param value change
function valuechanged(data) {
    // data.listener is the MaxobjListener instance
    var l = data && data.listener ? data.listener : null;
    var name = (l && l._paramName) ? l._paramName : "(unknown)";

    // data.value is the new value
    var v = (data && typeof data.value !== "undefined") ? data.value : null;

    paramValues[name] = v;

    // keep this quiet or verbose—your call
    // post("VALUE CHANGED: " + name + " -> " + v + "\n");

    let obj = {
        cmd: "paramUpdate",
        param: name, 
        value: v,
        parent: parent
    }
    outlet(0, 'paramUpdate', JSON.stringify(obj));

    currentParam = name
   
}

function endGesture(){
    post('note: see github issue #71')
    
    /*
    if(currentParam){
        
        
        let obj = {
            cmd: "paramUpdate",
            param: currentParam, 
            value: 'endGesture',
            parent: parent
        }
        
        outlet(0, 'paramUpdate', JSON.stringify(obj));
        // reset
        currentParam = false
    }
        */
}


// ------------------------------
// Hook value watching into your existing namespace updates
// (edit your existing paramschanged to add these lines)
// ------------------------------

// In your existing paramschanged(data), after you compute added/removed,
// add this block:
//
//   for (var i = 0; i < added.length; i++) ensureValueListener(added[i]);
//   for (var j = 0; j < removed.length; j++) removeValueListener(removed[j]);
//
// and add this helper below:

function removeValueListener(paramName) {
    if (paramListeners[paramName]) {
        paramListeners[paramName] = null;
        delete paramListeners[paramName];
    }
    if (paramValues.hasOwnProperty(paramName)) {
        delete paramValues[paramName];
    }
}

// ------------------------------
// 4) SET PARAM VALUE FROM MAX
// ------------------------------

// Usage from Max:
//   set <paramName> <value...>
//
// Examples:
//   set slider[1] 120
//   set live.dial 0.5

function set() {
    if (arguments.length < 2) {
    
        return;
    }

    var paramName = arguments[0];

    // Collect value(s)
    var value;
    if (arguments.length === 2) {
        value = arguments[1];
    } else {
        // allow list values
        value = Array.prototype.slice.call(arguments, 1);
    }

    setParamValue(paramName, value);
}

// Internal helper
function setParamValue(paramName, value) {
    var l = paramListeners[paramName];

    if (!l) {
        post("No listener for param: " + paramName + "\n");
        return;
    }

    try {
        // Prevent feedback loops if desired
        l.silent = 1;
        l.setvalue(value);
        l.silent = 0;

        // Update cache immediately
        paramValues[paramName] = value;

  
    } catch (e) {
        post("Failed to set " + paramName + ": " + e + "\n");
    }
}

function anything() {
    var paramName = messagename;
    if (!paramName || arguments.length === 0) return;

    var value;
    if (arguments.length === 1) {
        value = arguments[0];
    } else {
        value = arrayfromargs(arguments);
    }

    setParamValue(paramName, value);
}


// ------------------------------
// 4b) APPLY MANY PARAM VALUES AT ONCE
// ------------------------------
//
// From Max you can call either:
//   applyjson <json-string>
//   apply <dict-or-object>   (if passing an actual JS object reference)
//
// Examples:
//   [message] applyjson {"slider":50,"slider[1]":28,"multislider":[0.1,0.2,0.3,0.4]}
//   [message] apply {"slider":50,"slider[1]":28}
//
// Notes:
// - Keys must match the param names from ParameterInfoProvider.getnames()
// - Values can be number, string, or array/list

function applyjson() {
    if (arguments.length < 1) {
       
        return;
    }

    // If you send a JSON string with spaces, Max may split it into tokens.
    // Re-join everything into one string.
    var jsonStr = arrayfromargs(arguments).join(" ");

    var obj = null;
    try {
        obj = JSON.parse(jsonStr);
    } catch (e) {
        post("applyjson: JSON.parse failed: " + e + "\n");
        return;
    }

    applyObject(obj);
}

// If you can pass an actual JS object into this function (less common),
// this will work too.
function apply(obj) {
    applyObject(obj);
}

function applyObject(obj) {
    if (!obj || typeof obj !== "object") {
        post("applyObject: expected an object\n");
        return;
    }

    var keys = Object.keys(obj);

    // Optional: deterministic order
    keys.sort();

    for (var i = 0; i < keys.length; i++) {
        var paramName = keys[i];
        var value = obj[paramName];

        // If the sender gave us a typed array or something array-like,
        // normalize to a plain Array.
        if (value && typeof value === "object" && typeof value.length === "number" && !Array.isArray(value)) {
            value = Array.prototype.slice.call(value);
        }

        setParamValue(paramName, value);
    }
}

// ------------------------------
// 5) APPLY MANY PARAM CHANGES
// ------------------------------
//
// Accepts either:
//   - a Dict name (string), e.g. applydict myParams
//   - or a JS object (if you call it internally)
//
// It will set each key -> value using your existing setParamValue().

function applydict(dictName) {
    try {
        var d = new Dict(dictName);

        // Get full JSON string from the dict
        var json = d.stringify();

        // Convert to a plain JS object (literal keys, brackets preserved)
        var obj = JSON.parse(json);

        applyParamObject(obj);
    } catch (e) {
        post("applydict failed: " + e + "\n");
    }
}

function applyParamObject(obj) {
    if (!obj || typeof obj !== "object") {
        post("applyParamObject: expected an object\n");
        return;
    }

    var keys = Object.keys(obj);

    for (var i = 0; i < keys.length; i++) {
        var paramName = keys[i];
        var value = obj[paramName];

        // skip nested objects (but allow arrays)
        if (value && typeof value === "object" && !Array.isArray(value)) {
            post("Skipping nested object param '" + paramName + "'\n");
            continue;
        }

        setParamValue(paramName, value);
    }
}

function gesturePlayBack(param, value){
    // post('playback', param, value)
    setParamValue(param, value);
}


// function applydict(dictName) {
//     try {
//         var d = new Dict(dictName);
//         var keys = d.getkeys(); // array of keys, or null if empty

//         if (!keys || !keys.length) {
//             post("applydict: dict is empty or missing keys.\n");
//             return;
//         }

//         for (var i = 0; i < keys.length; i++) {
//             var k = keys[i];
//             var v = d.get(k); // value for that key
//             setParamValue(k, v);
//         }
//     } catch (e) {
//         post("applydict failed: " + e + "\n");
//     }
// }


// function applyParamObject(obj) {
//     if (!obj || typeof obj !== "object") {
//         post("applyParamObject: expected an object\n");
//         return;
//     }

//     var keys = Object.keys(obj);

//     // Optional: you can guard against feedback loops:
//     // - set listeners silent while applying
//     // - or just rely on your l.silent usage in setParamValue
//     for (var i = 0; i < keys.length; i++) {
//         var paramName = keys[i];
//         var value = obj[paramName];
        
//         // If your dict contains nested objects, skip or handle here
//         if (value && typeof value === "object" && !Array.isArray(value)) {
//             post("Skipping nested object param '" + paramName + "'\n");
//             continue;
//         }
//         post(paramName, value)
//         setParamValue(paramName, value);
//     }
// }