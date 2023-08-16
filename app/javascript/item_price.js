function tax() {
  const itemPrice = document.getElementById("item-price");
  const addTaxPrice = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");

  itemPrice.addEventListener('input', () => {
    const fee = itemPrice.value * 0.1;
    const salesProfit = itemPrice.value - fee;
    addTaxPrice.textContent = `${fee.toFixed(0)}`;
    profit.textContent = `${salesProfit.toFixed(0)}`;
  });
}

window.addEventListener('load', tax);