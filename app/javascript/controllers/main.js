// EMAIL JS
const contactForm = document.getElementById('contact_form');
      contactMessage = document.getElementById('contact_message');

const sendEmail = (e) => {
  e.preventDefault()
  emailjs.sendForm('service_2ltf408','template_5xzoch8','#contact_form', 'LgALbUXWHpDPxIIRP')
  .then(()=> {
    // show sent messeage
    contactMessage.textContent = 'Message sent successfully ✅'
    // remove message after 5 seconds
    setTimeout(() =>{
      contactMessage.textContent = ''
    }, 3000)
    //  clear input fields
    contactForm.reset()
  }, () => {
    //  show error message
    contactMessage.textContent = 'Message sent ( service error ) ❌'
  })
}

contactForm.addEventListener('submit', sendEmail)
