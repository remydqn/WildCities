import "bootstrap";
import "./smooth-scroll";
import "./typed";

document.addEventListener("DOMContentLoaded", function() {
  setTimeout(loaderRemove, 2000);
});

function loaderRemove() {
  document.querySelector("#loader").remove()
}
