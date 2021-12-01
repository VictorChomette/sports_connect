import Typed from 'typed.js';

const typing = () => {
  if (document.querySelector('.element')) {
    const options = {
      strings: ["Today I'll play Basketball",
      "Today I'll play Ping-Pong",
      "Today I'll swim",
      "Today I'll play Football"],
      typeSpeed: 150,
      backSpeed: 50,
      smartBackspace: true,
      loop: true,
      showCursor: false
    };

    const typed = new Typed('.element', options);
  }
}

export { typing };
