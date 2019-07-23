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
  timer: 2000,
});

