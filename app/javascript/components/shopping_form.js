const test = () => {
  const btns = document.querySelectorAll(".incrementer");
  if(btns.length != 0){
    const minusBtn = btns[0];
    const quantity = document.querySelector("#quantity");
    const counter = document.querySelector("#counter");
    
    const checkCounter = () => {
      if (counter.dataset.count > 1) {
        minusBtn.classList.remove('disabled');
      }else{
        minusBtn.classList.add('disabled');
      }
    };

    const updateCounter = (currentCount, counter) => {
      counter.dataset.count = currentCount;
      counter.innerText = currentCount;
      quantity.value = currentCount
    };
    
    const setCurrentCount = (btn) => {
      const variation = Number.parseInt(btn.dataset.offset, 10);
      const currentCount = Number.parseInt(counter.dataset.count, 10) + variation;
      updateCounter(currentCount, counter);
      checkCounter();
    };

    btns.forEach((btnElement) => {
      btnElement.addEventListener("click", (event) => {
        setCurrentCount(event.currentTarget);
      });
    });
  }
};

export { test }