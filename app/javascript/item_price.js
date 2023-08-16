function tax() {
  const itemPrice = document.getElementById("item-price");
  const addTaxPrice = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");

  itemPrice.addEventListener('input', () => {
    const fee = itemPrice.value * 0.1;
    const salesProfit = itemPrice.value - fee;
    addTaxPrice.textContent = `${Math.floor(fee)}`;
    profit.textContent = `${Math.floor(salesProfit)}`;
  });
}

window.addEventListener('load', tax);