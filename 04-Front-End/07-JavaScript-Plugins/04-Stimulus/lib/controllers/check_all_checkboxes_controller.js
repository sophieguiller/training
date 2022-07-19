import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["checkbox"];

  checkAll(event) {
    this.checkboxTargets.forEach((checkbox) => {
      checkbox.checked = event.currentTarget.checked;
    });
  }
}
