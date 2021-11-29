import Typed from 'typed.js';

const options = {
  strings: ["Today I'll play <strong>basketball!</strong>",
  "Today I'll play <strong>tennis!</strong>",
  "Today I'll <strong>run</strong>",
  "Today I'll play <strong>football!</strong>"],
  typeSpeed: 100,
  backSpeed: 100,
  smartBackspace: true,
  loop: true,
  showCursor: false
};

const typed = new Typed('.element', options);

export { typed };
