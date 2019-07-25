import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import Swal from 'sweetalert2';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  position: 'center',
  type: 'success',
  title: 'Thank you for your order',
  showConfirmButton: false,
  html: '<a href="/customer-dashboard"><button class= "btn banner-button">Go to Dashboard</button></a>' +
  '<a href="/products"><button class= "btn banner-button-3">Keep shopping</button></a>'
});


initSweetalert('#sweet-alert-update', {
  position: 'center',
  type: 'success',
  title: 'Updated successfully',
  showConfirmButton: false,
  timer: 1500,

});

// var showAutocomplete = document.getElementById("product_title");
// if (showAutocomplete){
//   document.getElementById("something").style.display = none;
//   showAutocomplete. addEventListener("click", () => {
// document.getElementById("something").style.display = initial;

// });
// }

var productTitleField = document.getElementById("something");
if (productTitleField){
  productTitleField. addEventListener("click", () => {


      document.getElementById("product_subgroup_id").value = "371";
      document.getElementById("product_description").value = "The carrot is a root vegetable often claimed to be the perfect health food. It is crunchy, tasty, and highly nutritious. Carrots are a particularly good source of beta carotene, fiber, vitamin K1, potassium, and antioxidants. They also have a number of health benefits. They’re a weight-loss-friendly food and have been linked to lower cholesterol levels and improved eye health.";
      document.getElementById("product_price_in_cents").value = "2";
      document.getElementById("product_min_quantity_to_order").value = "5";
      document.getElementById("product_quantity_in_kg").style.textDecorationLine = underline;
    });

}

