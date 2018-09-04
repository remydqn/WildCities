mapboxgl.accessToken = 'pk.eyJ1IjoibWVnYW53aWxkIiwiYSI6ImNqbG1iMW1hOTEycGMza3IwamF6ZXZ3aGkifQ.Ysf7DhhxllCBE3WygpnzKw';


const mapElement = document.getElementById('map');


if (mapElement) {
  const markers = JSON.parse(mapElement.dataset.markers);

  var map = new mapboxgl.Map({
    container: 'map',
    center: [4.83488, 45.746106],
    style: 'mapbox://styles/mapbox/light-v9',
    zoom: 11.15
  });
  map.on('load', function () {
    map.addLayer({
        "id": "places",
        "type": "symbol",
        "source": {
            "type": "geojson",
            "data": {
                "type": "FeatureCollection",
                "features": [
                  {
                    "type": "Feature",
                    "properties": {
                        "description": markers[0].normal_description,
                        "icon": "bar"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [markers[0].longitude, markers[0].latitude]
                    }
                  },
                  {
                    "type": "Feature",
                    "properties": {
                        "description": markers[1].normal_description,
                        "icon": "bar"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates":[markers[1].longitude, markers[1].latitude]
                    }
                  },
                  {
                    "type": "Feature",
                    "properties": {
                        "description": markers[2].normal_description,
                        "icon": "music"

                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [markers[2].longitude, markers[2].latitude]
                    }
                  },
                  {
                    "type": "Feature",
                    "properties": {
                        "description": "Geoloc",
                        "icon": "marker"

                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [4.83488, 45.746106]
                    }
                  },

                ]
            }
        },
        "layout": {
            "icon-image": "{icon}-15",
            "icon-allow-overlap": true
        }
    });


    map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
            enableHighAccuracy: true
        },
        trackUserLocation: true
    }));

    // When a click event occurs on a feature in the places layer, open a popup at the
    // location of the feature, with description HTML from its properties.
    map.on('click', 'places', function (e) {
        var coordinates = e.features[0].geometry.coordinates.slice();
        var description = e.features[0].properties.description;

        // Ensure that if the map is zoomed out such that multiple
        // copies of the feature are visible, the popup appears
        // over the copy being pointed to.
        while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
            coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
        }

        new mapboxgl.Popup()
            .setLngLat(coordinates)
            .setHTML(description)
            .addTo(map);
    });

    // Change the cursor to a pointer when the mouse is over the places layer.
    map.on('mouseenter', 'places', function () {
        map.getCanvas().style.cursor = 'pointer';
    });

    // Change it back to a pointer when it leaves.
    map.on('mouseleave', 'places', function () {
        map.getCanvas().style.cursor = '';
    });


  });
}

