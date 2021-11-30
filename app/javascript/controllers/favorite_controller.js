import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = [];

  connect() {
    console.log(this.element);
  }

  async update(event) {
    event.preventDefault();
    console.log(event.params.fieldId)

    const options = {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
    }

    const response = await fetch(`/fav?field_id=${event.params.fieldId}`, options)
    const data = await response.json();

    if (data.status === 'created') {
      event.target.classList.add('fas')
      event.target.classList.remove('far')
    } else {
      event.target.classList.remove('fas')
      event.target.classList.add('far')
    }
  }
}
