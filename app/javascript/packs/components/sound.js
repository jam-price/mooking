const playSound = () => {
  const button = document.querySelector(".btn.btn-flat.moo");
  if (button) {
    const audio = new Audio(button.dataset.audio);
    button.addEventListener("click", (event) => {
      event.preventDefault();
      audio.play();
    });
  }
};

export { playSound };
