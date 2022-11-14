
use ws::*;

/// A WebSocket echo server
pub fn start_ws_server() {
    let _ = listen("127.0.0.1:3012", |out| {
        move |msg| {
            println!("#Received: {}", msg);

            // echo back
            out.send(msg)
        }
    });
}