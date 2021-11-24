window.addEventListener('load', () => {
  console.log("OK");
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
   console.log(inputValue);
    // 1.変数を定義して、手数料の計算をする

    // 2.定義した変数の値を入れる

    // 3.利益部分に変数を入れる
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

 
// console.log(priceInput2);
// const priceInput3 = document.getElementById("profit");
// console.log(priceInput3);
});