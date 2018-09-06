const red = document.querySelector('.btn-tinder-red');
const green = document.querySelector('.btn-tinder-green');
const elem = document.querySelector('.event-proposition');

if (elem) {
  red.addEventListener('click', (event) => {
    event.preventDefault();
    elem.classList.add('animated')
    elem.classList.add('bounceOutLeft');
    setTimeout(function() { window.location.href = red.dataset.href; }, 600);
  });

  green.addEventListener('click', (event) => {
    event.preventDefault();
    elem.classList.add('animated')
    elem.classList.add('bounceOutRight');
    setTimeout(function() { window.location.href = green.dataset.href; }, 600);
  });
}
