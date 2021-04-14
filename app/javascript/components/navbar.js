const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navbar.offsetHeight) {
        navbar.classList.add('fixed-top');

      } else {
        navbar.classList.remove('fixed-top');

      }
    });
  }
}


export {initUpdateNavbarOnScroll};
