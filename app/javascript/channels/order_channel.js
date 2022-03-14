import consumer from "./consumer"

consumer.subscriptions.create("OrderChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("order update received");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $('#order-update').append('<div class="message alert alert-success fade show"> ' +
        '<strong>Order with ID: ' + data.content + 'marked as complete </strong>' +
        '</div>')
    console.log("Recieving:")
    console.log(data.order_id)
  }
});
