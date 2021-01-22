/*
  $('document').ready(function(){}); is eqt to
  vanila js: window.onload="myFunction()";
*/

window.onload = function () {
  var btnToggle = document.querySelector('.btn-toggle-details');
  const btnTelephone = document.querySelector('#show-tel');

  btnTelephone.addEventListener('click', (e) => {
    e.preventDefault();
    const data = btnTelephone.dataset.telephone;
    const span = btnTelephone.querySelector('span');
    span.textContent = data;
    console.log('clicked', data);
  });

  btnToggle.addEventListener('click', () => {
    var details = document.querySelector('#property-details');
    console.log(details);
    details.classList.toggle('open');
    btnToggle.innerHTML = details.classList.contains('open')
      ? 'Show less'
      : 'Show more';
    console.log(details);
  });

 
  $('#send-message-to-agent').on('click', function (event) {
    var agent_id = $('#agent_id').val(),
      first_name = $('#message-first-name').val(),
      last_name = $('#message-last-name').val(),
      email = $('#message-email').val(),
      message = $('#message-text').val();
      console.log(agent_id, first_name, last_name, message);

    $.ajax({
      url: '/agent/message',
      method: 'POST',
      dataType: 'json',
      data: {
        agent_id,
        first_name,
        last_name,
        email,
        message,
      },
      success: function (data) {
        $('#contact-modal form').remove();
        $('#send-message-to-agent').remove();
        $('#contact-modal .modal-body').text("Your message has been sent successfully!");
      },
    });
  });

  $('#contact-modal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    console.log('Popped up');
  });
};



