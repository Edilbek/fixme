function initMap(){
  var map = new google.maps.Map(document.getElementById('map_canvas'), {
      zoom: 13,
      center: new google.maps.LatLng(42.8746, 74.5698),
      mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var myMarker = new google.maps.Marker({
      position: new google.maps.LatLng(42.874, 74.577),
      draggable: true
  });

  google.maps.event.addListener(myMarker, 'dragend', function (evt) {
      document.getElementById('current').innerHTML = '<p>Marker dropped: Current Lat: ' + evt.latLng.lat().toFixed(3) + ' Current Lng: ' + evt.latLng.lng().toFixed(3) + '</p>';
      var lat = myMarker.getPosition().lat();
      var lng = myMarker.getPosition().lng();
      $('#problem-lat').val(lat);
      $('#problem-lng').val(lng);
  });

  google.maps.event.addListener(myMarker, 'dragstart', function (evt) {
      document.getElementById('current').innerHTML = '<p>Currently dragging marker...</p>';
  });

  map.setCenter(myMarker.position);
  myMarker.setMap(map);
}

function showMap(){
  var map = new google.maps.Map(document.getElementById('map_canvas'), {
      zoom: 13,
      center: new google.maps.LatLng(42.8746, 74.5698),
      mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var section = $('#map_canvas').parent('section');
  var lat = section.data('lat');
  var lng = section.data('lng');

  var myMarker = new google.maps.Marker({
      position: new google.maps.LatLng(lat, lng)
  });

  map.setCenter(myMarker.position);
  myMarker.setMap(map);
}

function homeMap() {
  var map = new google.maps.Map(document.getElementById('index_map_canvas'), {
      zoom: 13,
      center: new google.maps.LatLng(42.8746, 74.5698),
      mapTypeId: google.maps.MapTypeId.ROADMAP
  });
}
