// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

    $('#banner-wrap').hover(
        function() {
            $('#banner-overlay').stop(true,true).fadeIn();
        }, function() {
            $('#banner-overlay').stop(true,true).fadeOut();
        }
    );

    $('.galleries .gallery').hover(
        function() {
            $(this).find('.image-overlay').stop(true, true).slideDown(200);
        }, function() {
            $(this).find('.image-overlay').stop(true, true).slideUp(200);
        }
    );

    $('body').bind('keyup', function(event) {
        if (event.keyCode == 27) { 
            window.location = "/admin"; 
        }
    });

});