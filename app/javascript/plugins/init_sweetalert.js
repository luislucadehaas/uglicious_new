import Swal from 'sweetalert2';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);

  console.log(swalButton);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {

      Swal.fire(options);
    });
  }
};

export { initSweetalert };
