

import path from "path";
import Max from "max-api";
import WebSocket from "ws";

let isConnecting = false;
let ws; 
let parentName;

let wsAddress = "ws://steve:3001"

// once script is running, send bang to get creation arguments (if any)
Max.outlet('getCreationArgs')

function connect(ip) {
  if (isConnecting) return;
  isConnecting = true;

    // set remote ip address
    if (ip){
        wsAddress = `ws://${ip}:3001`
    }
    
    console.log(`🔄 Attempting to connect to "ws://localhost:3001"...`);
  ws = new WebSocket(wsAddress);

  ws.on("open", () => {
    isConnecting = false;
    console.log("✅ Connected to WebSocket server on port 3001");
    ws.send(JSON.stringify({
      cmd: "maxBridgeIsReady",
      data: parentName
    }))
    // request current parameter state from patcher
    Max.outlet('getKeyframe');
  });

  ws.on("message", (data) => {
    try {
      let msg = JSON.parse(data);
      switch(msg.cmd){
        case 'maxStateRecall':
          Max.setDict("paramRecalls", msg.data);
          Max.outlet("applydict", "paramRecalls");
        break;
        case 'gesturePlayBack':
          // Max.post('gesturedata', msg.data)
          Max.outlet("gesturePlayBack", msg.data.param, msg.data.value);
        break

        case 'getKeyframe':
          // request current parameter state from patcher
          Max.outlet('getKeyframe');
        break
        default: 
          console.log('no switch case for msg', msg.cmd);
      }
    } catch (e) {
      console.error("Error parsing JSON:", e);
    }
  });

  ws.on("error", (err) => {
    // We don't need to trigger reconnect here because 'close' always follows 'error'
    console.error("❌ WebSocket error:", err.message);
  });

  ws.on("close", (code, reason) => {
    isConnecting = false;
    console.log(`🔌 Connection closed. Retrying in 1s...`);
    
    // Trigger the retry
    setTimeout(() => {
      connect();
    }, 1000);
  });
}

// Start the initial connection
connect('localhost');


// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("paramUpdate", (msg) => {
  
  ws.send(msg);
});

Max.addHandler('endGesture', (msg) =>{
  ws.send(msg);
})

// send current full state
Max.addHandler("cachedState", (msg) => {
	

  ws.send(msg);
});


Max.addHandler('patcherName', (pname) =>{
  Max.post('script', pname)
  parentName = pname
})


Max.addHandler('wsAddress', (address) =>{
    
    connect(address)
    
    })



// Max.addHandler("endGesture", () => {
//   ws.send('endGesture');
// });


// async function sendParamBatch(updates) {
  
//   // updates is a normal JS object like:
//   // { "multislider": [ ... ], "slider": 50, "slider[1]": 28 }

//   // Write into a named Max dict
//   await 

  

//   // Tell the v8 js object to apply it
//   // (assuming you patch the node.script outlet to the v8 object's inlet)
  
// }