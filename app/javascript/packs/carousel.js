import { tns } from "tiny-slider/src/tiny-slider.js";
import "tiny-slider/dist/tiny-slider.css";

const carousel = document.querySelector(".carousel");
if (carousel) {
  tns({
    container: carousel,
    controls: false,
    mouseDrag: true,
    autoplay: true
  });
}
