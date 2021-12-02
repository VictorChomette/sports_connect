import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";
import "jquery-bar-rating";
import $ from 'jquery';

export default class extends Controller {
  static targets = ['list', 'form', 'comment', 'stars'];

  connect() {
    this._init_stars()
    console.log(this.element)
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
    this.commentTarget.value = '';

    // this._init_stars()
    this.rating.barrating('clear');
  }

  _init_stars() {
    this.rating = $('#review_rating').barrating({theme: 'css-stars' });
  }
}
