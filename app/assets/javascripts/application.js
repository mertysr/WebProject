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
//= require jquery
//= require bootstrap
//= require turbolinks
//= require_tree .
$(document).ready(function () {
 
    $(".gosterButonu, .gosterButonu img").click(function (event) {
        var butonAdi = $(this).closest('div').attr('id'); // tıklanan linkin idsini aldık
        var butonNo = butonAdi.slice(4); // idnin içinden 5. karakterden sonrasını aldık
        var kutuAdi = "#kutu" + butonNo; // kutu adını elde ettik
 
        $(kutuAdi).fadeIn(300);
    });
 
 
    $(".kapatButonu").click(function () {
 
        $(".kutu").fadeOut(200); // kapatButonuna tıklanınca açılmış durumdaki kutu kapansın.
 
    });
 
    $(".kutu").click(function () {
 
        $(".kutu").fadeOut(200); // kutuya tıklanırsa da açılan kutu kapansın.
 
    });
 
    $(".icKutu").click(function () {
        event.preventDefault();
        event.stopPropagation();
 
    });
 
});
