import "@hotwired/turbo-rails";
import "controllers";

// Uncomment the following lines if you are using Flatpickr
// import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.css";

import "@rails/actioncable";

document.addEventListener('DOMContentLoaded', function() {
  var btn = document.querySelector('.btn-danger');
  var fileInput = document.querySelector('.form-control[type="file"]');

  btn.addEventListener('click', function() {
    fileInput.value = '';
  });
});
