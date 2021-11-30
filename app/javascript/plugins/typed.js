import Typed from 'typed.js';

const typing = () => {
  if (document.querySelector('.element')) {
    const options = {
      strings: ["Today I'll play <strong>Basketball!</strong>",
      "Today I'll play <strong>Ping-Pong!</strong>",
      "Today I'll <strong>swim!</strong>",
      "Today I'll play <strong>Football!</strong>"],
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
