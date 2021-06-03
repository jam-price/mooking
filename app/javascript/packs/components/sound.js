const playSound = () => {
  const button = document.querySelector(".btn.btn-flat.moo");
  console.log(button);
  if (button) {
    const audio = new Audio(button.dataset.audio);
    button.addEventListener("click", (event) => {
      console.log(event);
      event.preventDefault();
      audio.play();
    });
  }
};

export { playSound };
