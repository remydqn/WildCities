import Typed from 'typed.js';

const bannerTyped = document.querySelector('#banner-typed-text');

if (bannerTyped) {
  new Typed('#banner-typed-text', {
    strings: ["alternativ", "unusual", "wild"],
    typeSpeed: 180,
    loop: true
  });
}
