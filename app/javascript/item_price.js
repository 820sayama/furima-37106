window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const priceInput2 = document.getElementById("add-tax-price"); 
    price = inputValue * 0.1
  priceInput2.innerHTML = Math.floor(price);

 const priceInput3 = document.getElementById("profit");
 profit = inputValue - price
 priceInput3.innerHTML = Math.floor(profit);
  })

});