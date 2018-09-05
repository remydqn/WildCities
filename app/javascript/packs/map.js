mapboxgl.accessToken = 'pk.eyJ1IjoibWVnYW53aWxkIiwiYSI6ImNqbG5raHB4YTBsamozbHMzNDBxeWJ3YXMifQ.WVAvyhtKa3gWkQPo5gH31w';

const mapElement = document.getElementById('map');

if (mapElement) {
  const markers = JSON.parse(mapElement.dataset.markers);
  var map = new mapboxgl.Map({
    container: 'map',
    center: [4.83488, 45.746106],
    style: 'mapbox://styles/mapbox/light-v9',
    zoom: 9
  });

  map.on('load', function () {
    const features = markers.map((marker) => {
      return {
        "type": "Feature",
        "properties": {
          "icon": marker.icon
        },
        "geometry": {
          "type": "Point",
          "coordinates": [marker.longitude, marker.latitude]
        }
      }
    });

    map.addLayer({
      "id": "places",
      "type": "symbol",
      "source": {
        "type": "geojson",
        "data": {
          "type": "FeatureCollection",
          "features": features
        }
      },
      "layout": {
        "icon-image": "{icon}-15",
        "icon-allow-overlap": true
      }
    });


    const bounds = new mapboxgl.LngLatBounds();

    markers.forEach(function(marker) {
      bounds.extend([marker.longitude, marker.latitude]);
    });

    map.fitBounds(bounds, {
      padding: { top: 30, bottom: 30, left: 30, right: 30 }
    });

    map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      trackUserLocation: true
    }));

    navigator.geolocation.getCurrentPosition((position) => {
      map.addLayer({
        "id": "currentPosition",
        "type": "symbol",
        "source": {
          "type": "geojson",
          "data": {
            "type": "FeatureCollection",
            "features": [{
              "type": "Feature",
              "properties": {
                "icon": "marker"
              },
              "geometry": {
                "type": "Point",
                "coordinates": [position.coords.longitude, position.coords.latitude]
              }
            }]
          }
        },
        "layout": {
          "icon-image": "{icon}-15",
          "icon-allow-overlap": true
        }
      });
    }, (error) => {

    }, { timeout: 5000 });
  });
};


function getRoute() {
  const markers = JSON.parse(mapElement.dataset.markers);
  var start = [4.83488, 45.746106];
  var end = [markers[0].longitude, markers[0].latitude];
  var directionsRequest = 'https://api.mapbox.com/directions/v5/mapbox/cycling/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?geometries=geojson&access_token=' + mapboxgl.accessToken;
  $.ajax({
    url: directionsRequest,
  }).done(function(data) {
    var route = data.routes[0].geometry;
    map.addLayer({
      id: 'route',
      type: 'line',
      source: {
        type: 'geojson',
        data: {
          type: 'Feature',
          geometry: route
        }
      },
      paint: {
        'line-width': 3
      }
    });
  });
}
