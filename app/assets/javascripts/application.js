// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
// = require bootstrap-sprockets
//= require_tree .
//
window.onscroll = changePos;

function changePos() {
    var header = document.getElementById("navigation");
    if (window.pageYOffset > 580) {
        header.style.position = "fixed";
        header.style.top = 0;
        header.style.height = "80px";

    } else {
        header.style.position = "";
        header.style.top = "";
    }
}

screen_width = $(window).width()

$('document').ready(function(){
navigation=$('ul.navbar-nav').html()                                                
  if (screen_width > 767)
    {
      console.log(navigation)
      $(navigation).hide()
    }
  else
    {
    console.log('start')
      $('.home-top-nav .navbar-collapse ').append(navigation)
    }
    // nav = $('.home-page #navigation' ).html();
    // logo = $('.home-page a.navbar-brand').html();
    // $('.home-page #navigation , .home-page > nav').remove();
    // $('body.home-page').prepend(nav) ;
    // $('.home-page .navbar-collapse').before(logo)
    // $('.home-page .banner-nav').remove();

   
})

// $(window).on('resize',function(){location.reload();});
$('.carousel').carousel({
  interval: 6000
})