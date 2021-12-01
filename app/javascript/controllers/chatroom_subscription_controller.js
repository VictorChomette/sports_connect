import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static targets = ['list']
  static values = { chatroomId: Number,
                    user: Number
                  }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.listTarget.insertAdjacentHTML("beforeend", data) }
    )
    // console.log(this.userValue)
    this._toggle_chatbox();
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`);
  }

  _toggle_chatbox() {
    document.querySelector(".chatbox-btn").addEventListener('click', event => {
      document.querySelector(".chatbox").classList.toggle("d-none");
    })
  }
}
