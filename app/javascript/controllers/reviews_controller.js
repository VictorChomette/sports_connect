import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['list', 'form'];

  connect() {
    console.log(this.element);
    console.log(this.listTarget);
    console.log(this.formTarget);
  }

  async send(event) {
    event.preventDefault();

    const options = {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: new FormData(this.formTarget)
    }

    const response = await fetch(this.formTarget.action, options)
    const data = await response.json();
    this.listTarget.innerHTML = data.html
  }
}
