import Typed from 'typed.js';

const bannerTyped = document.querySelector('#banner-typed-text');

if (bannerTyped) {
  new Typed('#banner-typed-text', {
    strings: ["", "wild", "alternative", "unusual"],
    typeSpeed: 180,
    loop: true
  });
}
