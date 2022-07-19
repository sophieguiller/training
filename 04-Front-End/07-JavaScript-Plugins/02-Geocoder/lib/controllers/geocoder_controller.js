import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "coordinates"]

  geocode(event) {
    event.preventDefault();
    const address = this.inputTarget.value;
    const token = "pk.eyJ1Ijoic2d1aWxsZXIiLCJhIjoiY2t2Y2VoOXpkMDd6djJxbzA0MzlhN3N4MiJ9.XjdQ0Wwa7MdO2pHmMXfCsA";
    fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${address}.json?access_token=${token}`)
      .then(response => response.json())
      .then((data) => {
        console.log(data);
      });
  }
}
