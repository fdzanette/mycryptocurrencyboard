import "bootstrap";

const add_button = document.querySelectorAll('.crypto-name');

let nameField;
let coinName;

for (let i = 0; i < add_button.length; i++) {
  coinName = document.getElementById(add_button[i].innerHTML)

  coinName.addEventListener('click', (event) => {
   nameField = add_button[i].innerHTML;
  });
};


const setCoinName = document.getElementById('crypto_name');
console.log(nameField);
setCoinName.addEventListener('click', (event) => {
  setCoinName.value = nameField;
});
