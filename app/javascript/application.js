import "@hotwired/turbo-rails";
import "controllers";

// Uncomment the following lines if you are using Flatpickr
// import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.css";

import "@rails/actioncable";

document.addEventListener('turbo:load', function() {
  flatpickr("#datePicker1", {
    mode: "range"
  });

  flatpickr("#datePicker2", {
    mode: "range"
  });

  document.getElementById('useMyLocation').addEventListener('click', function() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        alert("Latitude: " + position.coords.latitude + "\nLongitude: " + position.coords.longitude);
      });
    } else {
      console.log('Geolocation is not supported by this browser.');
    }
  });
});
