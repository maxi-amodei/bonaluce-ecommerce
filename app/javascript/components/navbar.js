const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navbar.offsetHeight) {
        navbar.style.padding = "7px 20px";
        document.querySelectorAll('.nav-link').forEach(item => item.style.fontSize = "12px");
        document.querySelector('.fa-3x').style.fontSize = "2.1em";

      } else {
        navbar.style.padding = "15px 40px";
        document.querySelectorAll('.nav-link').forEach(item => item.style.fontSize = "14px");
        document.querySelector('.fa-3x').style.fontSize = "3em";

      }
    });
  }
}


export {initUpdateNavbarOnScroll};
