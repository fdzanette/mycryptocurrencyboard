import "bootstrap";

const currencys = document.querySelectorAll('.add-to-portfolio');
const add_button = document.querySelectorAll('.crypto-name');
const addNameToField = document.getElementById('crypto_name');

let i = 0;
currencys.forEach((currency) => {
  console.log(add_button[i].innerHTML);
  i +=1;
});

currencys.addEventListener('click', (event) => {
  console.log(add_button.innerHTML);
});

