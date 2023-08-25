function tax() {
  const itemPrice = document.getElementById("item-price");
  const addTaxPrice = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");

  itemPrice.addEventListener('input', () => {
    const price = parseInt(itemPrice.value);
    const fee = Math.floor(price * 0.1);
    const salesProfit = price - fee;
    addTaxPrice.textContent = fee;
    profit.textContent =  Math.ceil(price * 0.9.toLocaleString());
    // profit.textContent = salesProfit + fee;
  });
}

window.addEventListener('turbo:load', tax);

console.log("test2")
