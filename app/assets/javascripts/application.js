// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require_tree .

function Slider() {
  var sc = $("#slider img").size();
  var count = 2;
  setInterval(function() {
    $("#slider #slide"+count).show("slide", {direction: 'right'}, 500);
    $("#slider #slide"+count).delay(3500).hide("slide", {direction: 'left'}, 500);

    if(count == sc){
      count = 1;
    }else{
      count = count + 1;
    }
  }, 4500);
}




$(document).ready(function () {
  Slider();


$("#zoom_05").elevateZoom({
  zoomType        : "inner",
  cursor: "crosshair"
});





});





