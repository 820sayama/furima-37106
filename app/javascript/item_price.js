window.addEventListener('load', () => {
  console.log("OK");
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
   console.log(inputValue);
    console.log(priceInput);
    const priceInput2 = document.getElementById("add-tax-price"); 
    price = inputValue * 0.1
  console.log(price);
  priceInput2.innerHTML = Math.floor(price);

  console.log(priceInput2);
 const priceInput3 = document.getElementById("profit");
 profit = inputValue - price
 console.log(profit);
 priceInput3.innerHTML = Math.floor(profit);
  })

});