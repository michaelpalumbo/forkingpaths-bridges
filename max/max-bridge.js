

import path from "path";
import Max from "max-api";
import WebSocket from "ws";

let isConnecting = false;
let ws; 

function connect() {
  if (isConnecting) return;
  isConnecting = true;

  console.log(`🔄 Attempting to connect to "ws://localhost:3001"...`);
  ws = new WebSocket("ws://localhost:3001");

  ws.on("open", () => {
    isConnecting = false;
    console.log("✅ Connected to WebSocket server on port 3001");
    ws.send(JSON.stringify({
      cmd: "maxBridgeIsReady"
    }))
    // request current parameter state from patcher
    Max.outlet('getParamStates');
  });

  ws.on("message", (data) => {
    try {
      let msg = JSON.parse(data);
      switch(msg.cmd){
        case 'maxStateRecall':
          Max.setDict("paramRecalls", msg.data);
          Max.outlet("applydict", "paramRecalls");
          break;
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
// Create a connection to your WS server
// const ws = new WebSocket("ws://localhost:3001");

// // Fired when the connection opens
// ws.on("open", () => {
//   console.log("✅ Connected to WebSocket server on port 3001");

//   // request current parameter state from patcher
//   Max.outlet('getParamStates')
// });

// // Fired when a message is received
// ws.on("message", (data) => {
//   // console.log("📩 Message from server:", data.toString());
//   let msg = JSON.parse(data)
  

//   switch(msg.cmd){
//     case 'maxStateRecall':
//       Max.post(msg)
//       Max.setDict("paramRecalls", msg.data);
//       Max.outlet("applydict", "paramRecalls");

//       // sendParamBatch(msg.data);
      
//     break;

//     default: console.log('no switch case for msg', msg.cmd)
//   }
// });

// // Fired on error
// ws.on("error", (err) => {
//   console.error("❌ WebSocket error:", err);
// });

// // Fired when the connection closes
// ws.on("close", (code, reason) => {
//   console.log(`🔌 Connection closed (${code})`, reason?.toString());
// });



// This will be printed directly to the Max console
// Max.post(`Loaded the ${path.basename(__filename)} script`);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler("bang", () => {
	Max.post("Who you think you bangin'?");
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("paramUpdate", (msg) => {
	// Max.post(msg);

  ws.send(msg);
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("cachedState", (msg) => {
	

  ws.send(msg);
});




// async function sendParamBatch(updates) {
  
//   // updates is a normal JS object like:
//   // { "multislider": [ ... ], "slider": 50, "slider[1]": 28 }

//   // Write into a named Max dict
//   await 

  

//   // Tell the v8 js object to apply it
//   // (assuming you patch the node.script outlet to the v8 object's inlet)
  
// }