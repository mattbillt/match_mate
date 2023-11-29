import "@hotwired/turbo-rails";
import "controllers";

// Add the Flatpickr JS using a CDN link
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";

// Any additional JavaScript code or imports can go here
document.addEventListener('DOMContentLoaded', function() {
  flatpickr("#datePicker1", {
    mode: "range"
  });
  flatpickr("#datePicker2", {
    mode: "range"
  });
});
