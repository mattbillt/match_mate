// your_script.js

import "@hotwired/turbo-rails";
import "controllers";
//import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.css";
import "@rails/actioncable";


document.addEventListener('DOMContentLoaded', function() {
  // Flatpickr initialization for the first date picker
  flatpickr("#datePicker1", {
    mode: "range"
  });

  // Flatpickr initialization for the second date picker
  flatpickr("#datePicker2", {
    mode: "range"
  });

  // Event listener for the "Use My Location" button
  document.getElementById('useMyLocation').addEventListener('click', function() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        // Access position.coords.latitude and position.coords.longitude
        alert("Latitude: " + position.coords.latitude + "\nLongitude: " + position.coords.longitude);
      });
    } else {
      console.log('Geolocation is not supported by this browser.');
    }
  });
});
