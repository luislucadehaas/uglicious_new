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
