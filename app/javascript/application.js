// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Add the Flatpickr JS using a CDN link
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";
import "flatpickr/l10n";

// Any additional JavaScript code or imports can go here
document.addEventListener('DOMContentLoaded', function() {
  flatpickr("#datePicker1", {
    mode: "range"
  });
  flatpickr("#datePicker2", {
    mode: "range"
  });
});
