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

	function startTimer(duration, display) {
	    var start = Date.now(),
	        diff,
	        minutes,
	        seconds;
	    function timer() {
	        // get the number of seconds that have elapsed since 
	        // startTimer() was called
	        diff = duration - (((Date.now() - start) / 1000) | 0);

	        // does the same job as parseInt truncates the float
	        minutes = (diff / 60) | 0;
	        seconds = (diff % 60) | 0;

	        minutes = minutes < 10 ? "0" + minutes : minutes;
	        seconds = seconds < 10 ? "0" + seconds : seconds;

	        display.textContent = minutes + ":" + seconds; 

	        if (diff <= 0) {
	            // add one second so that the count down starts at the full duration
	            // example 05:00 not 04:59
	            start = Date.now() + 1000;
	        }
	    };
	    // we don't want to wait a full second before the timer starts
	    timer();
	    setInterval(timer, 1000);
	}

	window.onload = function () {
	    var sevenMinutes = 60 * 7,
	        display = document.querySelector('#time');
	    startTimer(sevenMinutes, display);
	};

$(document).on('turbolinks:load', function(){
  $('.alert').delay(1000).fadeOut(4000);
});
