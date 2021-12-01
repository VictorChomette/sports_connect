import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['messages', 'form'];

  connect() {
    console.log(this.element);
    console.log(this.messagesTarget);
    console.log(this.formTarget);
  }

  refresh(event) {
    event.preventDefault();

    fetch(this.formTarget.action, {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_message) {
          this.messagesTarget.insertAdjacentHTML("beforeend", data.inserted_message);
        }
        this.formTarget.outerHTML = data.form;
      });
  }
}
