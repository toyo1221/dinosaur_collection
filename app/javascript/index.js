function index() {
  const containers = document.querySelectorAll('.heading-li');
  containers.forEach(container => {
    const link = container.querySelector('a');
    if (link.href === window.location.href) {
      container.classList.add('active-container');
    } else {
      container.classList.remove('active-container');
    }
  });

  const liDinosaurElements = document.querySelectorAll(".li-dinosaur");
  liDinosaurElements.forEach(function(liDinosaurElement) {
    liDinosaurElement.addEventListener("mouseenter", function() {
      this.style.transform = "scale(1.1)";
      this.style.transition = "transform 0.3s";
    });
    liDinosaurElement.addEventListener("mouseleave", function() {
      this.style.transform = "";
      this.style.transition = "transform 0.3s";
    });
  });

  const dinosaurBtn = document.querySelector('.dinosaur-btn');
  if (dinosaurBtn) {
    dinosaurBtn.addEventListener("mouseenter", function() {
      this.style.transform = "scale(1.1)";
      this.style.transition = "transform 0.3s";
    });
    dinosaurBtn.addEventListener("mouseleave", function() {
      this.style.transform = "";
      this.style.transition = "transform 0.3s";
    });
  }
}

document.addEventListener('turbo:load', index);
document.addEventListener('turbo:render', index);