import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static targets = ['list']
  static values = { chatroomId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this._insertMessage(data) }
    )
    this._toggle_chatbox();
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`);
  }

  _toggle_chatbox() {
    document.querySelector(".chatbox-btn").addEventListener('click', event => {
      document.querySelector(".chatbox").classList.toggle("d-none");
    })
  }

  _insertMessage(data) {
    this.listTarget.insertAdjacentHTML("beforeend", data)
    document.querySelector("#message_content").value = "";
    document.querySelector('.message-wrapper:last-of-type').scrollIntoView({ behavior: "smooth", block: "end", inline: "nearest" });
  }
}
