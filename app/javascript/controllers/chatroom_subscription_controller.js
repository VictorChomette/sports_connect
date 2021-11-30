import { Controller } from "stimulus";
import consumer from "../channels/consumer";

const toggleChatBox = () => {
  document.querySelector(".chatbox-btn").addEventListener('click', event => {
    document.querySelector(".chatbox").classList.toggle("d-none");
  })
}

export default class extends Controller {
  static values = { chatroomId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.element.insertAdjacentHTML("beforeend", data) }
    )
    toggleChatBox();
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`);
  }
}
