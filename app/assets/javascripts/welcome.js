// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function () {
    $("#slideout").click(function () {
        if($(this).hasClass("popped")){
        $(this).animate({right:'-18.5%'}, {queue: false, duration: 500}).removeClass("popped");
        console.log("right -280")
    }else {
        $(this).animate({right: "0%" }, {queue: false, duration: 500}).addClass("popped");
        console.log("right 0")
      }
    });
});
