import "bootstrap";

const add_button = document.querySelectorAll('.crypto-name');
const addNameToField = document.getElementById('crypto_name');

let coinName;
let i = 0;
let setCoinName = document.getElementById('crypto_name');

for (let i = 0; i < add_button.length; i++) {
  coinName = document.getElementById(add_button[i].innerHTML)

  coinName.addEventListener('click', (event) => {
   setCoinName.value = add_button[i].innerHTML;
  });
};
i +=1;



