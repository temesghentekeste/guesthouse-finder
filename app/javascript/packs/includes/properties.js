
$(function() {
  var btnToggle = document.querySelector('.btn-toggle-details');
  
  btnToggle.addEventListener('click', ()=>{
    var details = document.querySelector('#property-details');
    console.log(details);
    details.classList.toggle('open')
    btnToggle.innerHTML = details.classList.contains('open') ? "Show less" : "Show more"
    console.log(details);
  })
})
