const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  const userIcon = document.querySelector('.fa-user-circle');
  const cartIcon = document.querySelector('.fa-shopping-cart');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navbar.offsetHeight) {
        navbar.style.padding = "7px 20px";
        document.querySelectorAll('.nav-link').forEach(item => item.style.fontSize = "12px");
        if(userIcon){
          userIcon.style.fontSize = "2.1em";
          cartIcon.style.fontSize = "1.5em";

        }

      } else {
        navbar.style.padding = "15px 40px";
        document.querySelectorAll('.nav-link').forEach(item => item.style.fontSize = "14px");
        if(userIcon){
          userIcon.style.fontSize = "3em";
          cartIcon.style.fontSize = "2em";
        }

      }
    });
  }
}


export {initUpdateNavbarOnScroll};
