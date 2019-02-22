'use strict';

var parallax= document.querySelector(".parallax");
var parallax2= document.querySelector(".parallax2");

window.addEventListener("scroll", function() {

   var scrolledHeight= window.pageYOffset,
                limit= parallax.offsetTop+ parallax.offsetHeight;
                
  if(scrolledHeight > parallax.offsetTop && scrolledHeight <= limit) {
    parallax.style.backgroundPositionY=  (scrolledHeight - parallax.offsetTop) /1.5+ "px";
 
    } else {
     parallax.style.backgroundPositionY=  "0";
    }
    });

  window.addEventListener("scroll", function() {

    var scrolledHeight= window.pageYOffset,
                  limit= parallax2.offsetTop+ parallax2.offsetHeight;
                   
  if(scrolledHeight > parallax2.offsetTop && scrolledHeight <= limit) {
    parallax2.style.backgroundPositionY=  (scrolledHeight - parallax2.offsetTop) /1.5+ "px";
    
    } else {
    parallax2.style.backgroundPositionY=  "0";
    }
    });