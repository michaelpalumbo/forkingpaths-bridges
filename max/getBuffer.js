// bufferToDict.js
autowatch = 1;

function extract(bufferName, dictName) {
    // Note: I changed 'foo' back to bufferName to use the argument passed in
    var b = new Buffer(bufferName);
    var d = new Dict(dictName);

    // Check if the buffer actually exists and has data
    if (b.framecount() <= 0) {
        post("Error: Buffer '" + bufferName + "' not found or is empty\n");
        return;
    }

    var channelCount = b.channelcount();
    var frameCount = b.framecount();
    var fullContent = [];

    post("Extracting " + frameCount + " frames from " + bufferName + "...\n");

    for (var chan = 0; chan < channelCount; chan++) {
        // b.peek returns a Float32Array (a TypedArray)
        var channelData = b.peek(chan + 1, 0, frameCount);
        
        // IMPORTANT: Max Dicts cannot accept TypedArrays (Float32Array) directly.
        // We convert to a standard Array. 
        // For large buffers, a simple loop is safer than Array.apply or Array.from
        var standardArray = new Array(channelData.length);
        for (var i = 0; i < channelData.length; i++) {
            standardArray[i] = channelData[i];
        }
        
        fullContent.push(standardArray);
    }

    d.clear();
    d.set("name", bufferName);
    d.set("channels", channelCount);
    d.set("frames", frameCount);
    // Note: If this is a single channel, you might prefer d.set("samples", fullContent[0])
    d.set("samples", fullContent);

    post("Success: " + bufferName + " written to dict " + dictName + "\n");
    
    // Output a bang or the dict name to notify other objects
    outlet(0, "bang");
}