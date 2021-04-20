import { event } from "jquery";

const updateQuantity = () => {
  const quantityForm = document.querySelectorAll('.update-form');

  if(quantityForm){
    
    quantityForm.forEach((input)=>{
      input.addEventListener("change", ()=>{
        input.submit();
      })
    });
  }
};

export { updateQuantity }