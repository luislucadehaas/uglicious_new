const totalPriceField = document.querySelector('#total-price');
console.log(kgPrice);
const kgPrice = parseInt(document.querySelector('#kg-price').innerText.replace(/\D/g,''));
console.log(kgPrice);
const kgOrderField = document.querySelector('#kg-order input');
console.log(kgOrderField);
const delOptions = document.querySelector('#del-option select');
const delOptionsField = document.querySelector('#del-option select');
const delOption = delOptions.options[delOptions.selectedIndex].value;
console.log(delOption);


const  calculateTotalCost = (event) => {
  let kgOrder = parseInt(document.querySelector('#kg-order input').value);

  if (isNaN(kgOrder)){
    totalPriceField.innerText = "Total Price:";
  } else {
      if (delOptions.selectedIndex == 2) {
      totalPriceField.innerText =  `Total Price: ${kgPrice * kgOrder + 8}€`;
    } else {
      totalPriceField.innerText =  `Total Price: ${kgPrice * kgOrder }€`;
    }
  }
};


kgOrderField.addEventListener('input', calculateTotalCost);
delOptionsField.addEventListener('change', calculateTotalCost);
