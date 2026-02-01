

import path from "path";
import Max from "max-api";
import WebSocket from "ws";

let isConnecting = false;
let ws; 
let parentName;



function connect() {
  if (isConnecting) return;
  isConnecting = true;

  console.log(`🔄 Attempting to connect to "ws://localhost:3001"...`);
  ws = new WebSocket("ws://localhost:3001/ws");

  ws.on("open", () => {
    isConnecting = false;
    console.log("✅ Connected to WebSocket server on port 3001");
//    ws.send(JSON.stringify({
  //    cmd: "maxBridgeIsReady",
    //  data: parentName
 //   }))
    // request current parameter state from patcher
    Max.outlet('getParamStates');
  });

  ws.on("message", (data) => {
    try {
      let msg = JSON.parse(data);
      Max.post(msg)
      switch(msg.cmd){
        case 'recallState':
          Max.setDict("paramRecalls", msg.data);
          Max.outlet("applydict", "paramRecalls");
        break;
        case 'gesturePlayBack':
          // Max.post('gesturedata', msg.data)
          Max.outlet("gesturePlayBack", msg.data.param, msg.data.value);
        break

        case 'getParamStates':
          // request current parameter state from patcher
          Max.outlet('getParamStates');
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
connect();


// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("paramUpdate", (msg) => {
  
  ws.send(msg);
});

Max.addHandler('endGesture', (msg) =>{
  // ws.send(msg);
  Max.post('note: see github issue #71')
})

// send current full state
Max.addHandler("cachedState", (msg) => {
	

  ws.send(msg);
});


Max.addHandler('patcherName', (pname) =>{
  Max.post('script', pname)
  parentName = pname
})

Max.addHandler('seek', (direction) =>{
    ws.send(JSON.stringify({
        cmd: "seek",
        data: direction
    }));
})
