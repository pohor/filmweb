// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

window.addEventListener('load', function () {
  var button = document.getElementById('show');
  var reviews = document.getElementById('reviews');
  button.addEventListener('click', function () {
    if (button.innerHTML == "Show reviews") {
      reviews.setAttribute('style','display:block')
      button.innerHTML = "Hide reviews"
    } else {
      reviews.setAttribute('style','display:none');
      button.innerHTML = "Show reviews"
    }
  })
})
