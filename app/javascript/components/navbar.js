const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  const userIcon = document.querySelector('.fa-user-circle');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navbar.offsetHeight) {
        navbar.style.padding = "7px 20px";
        document.querySelectorAll('.nav-link').forEach(item => item.style.fontSize = "12px");
        if(userIcon){
          userIcon.style.fontSize = "2.1em";
        }

      } else {
        navbar.style.padding = "15px 40px";
        document.querySelectorAll('.nav-link').forEach(item => item.style.fontSize = "14px");
        if(userIcon){
          userIcon.style.fontSize = "3em";
        }

      }
    });
  }
}


export {initUpdateNavbarOnScroll};
