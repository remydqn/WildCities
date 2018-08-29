import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["alternativ", "unsusual", "wild"],
    typeSpeed: 180,
    loop: true
  });
}

export { loadDynamicBannerText };
