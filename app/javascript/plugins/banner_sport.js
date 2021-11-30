const change_banner = () => {
  const array_sport = ["picture-banner-basket", "picture-banner-ping-pong", "picture-banner-swim","picture-banner-football"];
  let i = 0;
  window.setInterval(function () {
    document.querySelector(".banner-sport").setAttribute('id', array_sport[i]);
    i = i + 1;
    if (i > 3) {
      i = 0;
    }
  }, 4000);
}

export { change_banner};
