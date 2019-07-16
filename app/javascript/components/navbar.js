const toggleNavbarBackground = function() {
  const navbar = document.querySelector('.navbar-wagon');

  window.addEventListener('scroll', (event) => {
    if (window.scrollY > window.innerHeight / 2 ) {
      navbar.classList.remove('navbar-wagon-transparent');
      navbar.classList.add('navbar-wagon-dark');
    } else {
      navbar.classList.remove('navbar-wagon-dark');
      navbar.classList.add('navbar-wagon-transparent');
    }
  });
}

export { toggleNavbarBackground };
