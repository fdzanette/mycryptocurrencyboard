import "bootstrap";

const add_button = document.querySelectorAll('.crypto-name');
const addNameToField = document.getElementById('crypto_name');

let coinName;
let i = 0;

for (let i = 0; i < add_button.length; i++) {
  coinName = document.getElementById(add_button[i].innerHTML)

  coinName.addEventListener('click', (event) => {
   console.log(coinName.id);
   console.log(add_button[i].innerHTML);
   if (coinName.id === add_button[i].innerHTML) {
      document.getElementById('crypto_name').value = coinName.id;
   } else {}
  });
};
i +=1;


