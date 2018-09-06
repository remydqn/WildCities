import "bootstrap";
import "./smooth-scroll";
import "./typed";
import "./slider";
import "./map";
import "./carousel";


// document.addEventListener("DOMContentLoaded", function() {
//   setTimeout(loaderRemove, 2000);
// });

function loaderRemove() {
  document.querySelector("#loader").remove();
}



const red = document.querySelector('.btn-tinder-red');
const green = document.querySelector('.btn-tinder-green');
const elem = document.querySelector('.event-proposition');

red.addEventListener('click', (event) => {
  event.preventDefault();
  elem.classList.add('animated')
  elem.classList.add('bounceOutLeft');
  setTimeout(function() { window.location.href = red.href; }, 600);
});

green.addEventListener('click', (event) => {
  event.preventDefault();
  elem.classList.add('animated')
  elem.classList.add('bounceOutRight');
  setTimeout(function() { window.location.href = green.href; }, 600);
});
