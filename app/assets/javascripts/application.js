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
//= require jquery3
//= require_tree .



$( document ).ready(function(){
    // setInterval(timer,1000); // I would like to add timer, however unable to due to Riddles controller rendering the page everytime anincorect guess is made will reset the timer. TODO
    hideDiv();
});

const hideDiv = function() {
    $('.view_score').click(function(){
        $(".coverup").fadeOut(1000);
    });
};

// let sec = 0;
// const timer = function(){
//     sec += 1;
//     $(".timer").text(sec); 
// };
