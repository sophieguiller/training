import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "city", "date", "description", "temperature", "icon"]

  initialize() {
    this.apiKey = "f36e0882074e30d62f3faa9c06578d65";
  }

  fetchWeather(event) {
    event.preventDefault();
    const city = this.inputTarget.value;
    fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${this.apiKey}&units=metric`)
      .then(response => response.json())
      .then(data => console.log(data));
  }
}
