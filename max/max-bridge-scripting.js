outlets = 1


function bang() {
    var pclass = this.patcher.parentpatcher;
    if (pclass) {
        post("The parent patcher class is " + pclass.name);
        post(`OSC route will be /${pclass.name}`)
    } else {
        post("This is a top-level patcher");
    }
}

// Max JS (js object in Max)

autowatch = 1;

var pip = null;
var currentNames = []; // our last known snapshot

function loadbang() {
    initNamespaceWatcher();
}

// 1) Query current namespace
function initNamespaceWatcher() {
    // Create watcher with callback for added/removed params
    pip = new ParameterInfoProvider(paramschanged);

    // Initial snapshot
    refreshNamespace();

    watchvalues()
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
        param: name, 
        value: v
    }
    outlet(0, 'paramUpdate', obj);
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
        post("usage: set <paramName> <value...>\n");
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

        post("SET: " + paramName + " -> " + value + "\n");
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
