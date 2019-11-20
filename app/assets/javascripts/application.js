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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery.validate
//= require_tree .


$(document).on('click', '#checkoutModal', function() {
    $('#checkoutForm').validate({
      // Specify validation rules
      rules: {
        // The key name on the left side is the name attribute
        // of an input field. Validation rules are defined
        // on the right side
        firstname: "required",
        lastname: "required",
        country: "required",
        address: "required",
        city: "required",
        state: "required",
        zip: "required",

        email: {
          required: true,
          // Specify that email should be validated
          // by the built-in "email" rule
          email: true
        },
      },
      // Specify validation error messages
      messages: {
        firstname: "Please enter your firstname",
        lastname: "Please enter your lastname",
        country: "Please select your country",
        address: "Please enter a valid street address",
        city: "Please enter your city",
        state: "Please enter your state",
        zip: "Please enter your postal code",
        email: "Please enter a valid email address"
      },
    });
  });