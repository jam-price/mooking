const playSound = () => {
  const button = document.querySelector(".btn.btn-flat.moo");
  if (button) {
    const audio = new Audio(button.dataset.audio);
    button.addEventListener("click", (event) => {
      event.preventDefault();
      // event.currentTarget.classList.add("disabled");
      // event.currentTarget.innerHTML = "Bingo!";
      audio.play();
    });
  }
};

export { playSound };
