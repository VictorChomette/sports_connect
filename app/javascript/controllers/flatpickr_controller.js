import { Controller } from "stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ['input', 'slots']
  static values = { fieldId: Number }

  connect() {
    // console.log(this.inputTarget)
    this._init_flatpickr();
  }

  _init_flatpickr () {
    flatpickr(this.inputTarget, {
      inline: true,
      onChange: this._change.bind(this)
    });
  }

  async _change(evt) {
    const params = this._params(evt)
    const response = await fetch(`/fetch_presences?${params}`)
    const data = await response.json()
    this.slotsTarget.outerHTML = data.html
    console.log(params);
  }

  _params(evt) {
    return new URLSearchParams({
      day: evt[0],
      field_id: this.fieldIdValue,
    }).toString();
  }
}
