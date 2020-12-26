/*
  $('document').ready(function(){}); is eqt to
  vanila js: window.onload="myFunction()";
*/

window.onload = function() {
  var btnToggle = document.querySelector('.btn-toggle-details');
  const btnTelephone = document.querySelector('#show-tel');

  btnTelephone.addEventListener('click', e => {
    e.preventDefault();
    const data = btnTelephone.dataset.telephone;
    const span = btnTelephone.querySelector('span');
    span.textContent = data;
    console.log('clicked', data);
  })
  
  btnToggle.addEventListener('click', ()=>{
    var details = document.querySelector('#property-details');
    console.log(details);
    details.classList.toggle('open')
    btnToggle.innerHTML = details.classList.contains('open') ? "Show less" : "Show more"
    console.log(details);
  })
}
