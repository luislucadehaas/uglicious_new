import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      console.log(markers);
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
      map.fitBounds(bounds, { padding: 90, maxZoom: 15, duration: 0 });
    };

    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/luislucadehaas/cjyfj8kye18pq1clgci7k2e4i'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '32px';
      element.style.height = '51px';
      new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });
    const startpoint = map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true,
      },
      fitBoundsOptions: {
        maxZoom:10.8,
      },
        trackUserLocation: true
      }));


//     function getRoute(end) {
//   // make a directions request using cycling profile
//   // an arbitrary start will always be the same
//   // only the end or destination will change

//   var canvas = map.getCanvasContainer();
//   var start = [-122.662323, 45.523751];
//   var url = 'https://api.mapbox.com/directions/v5/mapbox/driving/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken;

//   // make an XHR request https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
//   var req = new XMLHttpRequest();
//   req.responseType = 'json';
//   req.open('GET', url, true);
//   req.onload = function() {
//     var data = req.response.routes[0];
//     var route = data.geometry.coordinates;
//     var geojson = {
//       type: 'Feature',
//       properties: {},
//       geometry: {
//         type: 'LineString',
//         coordinates: route
//       }
//     };
//     // if the route already exists on the map, reset it using setData
//     if (map.getSource('route')) {
//       map.getSource('route').setData(geojson);
//     } else { // otherwise, make a new request
//       map.addLayer({
//         id: 'route',
//         type: 'line',
//         source: {
//           type: 'geojson',
//           data: {
//             type: 'Feature',
//             properties: {},
//             geometry: {
//               type: 'LineString',
//               coordinates: geojson
//             }
//           }
//         },
//         layout: {
//           'line-join': 'round',
//           'line-cap': 'round'
//         },
//         paint: {
//           'line-color': '#3887be',
//           'line-width': 5,
//           'line-opacity': 0.75
//         }
//       });
//     }
//     // add turn instructions here at the end
//   };
//   req.send();
// }

// map.on('load', function() {
//   // make an initial directions request that
//   // starts and ends at the same location
//   getRoute(start);

//   // Add starting point to the map
//   map.addLayer({
//     id: 'point',
//     type: 'circle',
//     source: {
//       type: 'geojson',
//       data: {
//         type: 'FeatureCollection',
//         features: [{
//           type: 'Feature',
//           properties: {},
//           geometry: {
//             type: 'Point',
//             coordinates: start
//           }
//         }
//         ]
//       }
//     },
//     paint: {
//       'circle-radius': 10,
//       'circle-color': '#3887be'
//     }
//   });
//   map.on('click', function(e) {
//     var coordsObj = e.lngLat;
//     canvas.style.cursor = '';
//     var coords = Object.keys(coordsObj).map(function(key) {
//       return coordsObj[key];
//     });
//     var end = {
//       type: 'FeatureCollection',
//       features: [{
//         type: 'Feature',
//         properties: {},
//         geometry: {
//           type: 'Point',
//           coordinates: coords
//         }
//       }
//       ]
//     };
//     if (map.getLayer('end')) {
//       map.getSource('end').setData(end);
//     } else {
//       map.addLayer({
//         id: 'end',
//         type: 'circle',
//         source: {
//           type: 'geojson',
//           data: {
//             type: 'FeatureCollection',
//             features: [{
//               type: 'Feature',
//               properties: {},
//               geometry: {
//                 type: 'Point',
//                 coordinates: coords
//               }
//             }]
//           }
//         },
//         paint: {
//           'circle-radius': 10,
//           'circle-color': '#f30'
//         }
//       });
//     }
//     getRoute(coords);
//   });
// });


fitMapToMarkers(map, markers);
}
};

export { initMapbox };
