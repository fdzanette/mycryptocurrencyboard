import "bootstrap";

const add_button = document.querySelectorAll('.crypto-name');
let dinamictext = document.getElementById('crypto_name');
let nameField;
let coinName;

for (let i = 0; i < add_button.length; i++) {
  coinName = document.getElementById(add_button[i].innerHTML)

  coinName.addEventListener('click', (event) => {
    nameField = add_button[i].innerHTML;
    localStorage.setItem('superValue', nameField);

  });
};

setInterval(function () {
    if (dinamictext.value !== localStorage['superValue']) {
      dinamictext.value = localStorage['superValue'];
    }
}, 500);

