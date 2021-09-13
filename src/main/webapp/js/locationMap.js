// Initialize and add the map
function initMap() {
    // The location of jakarta
    var jakarta = {lat: -6.192417, lng: 106.823164};
    // The map, centered at Uluru
    var map = new google.maps.Map(
        document.getElementById('map'), {zoom: 10, center: jakarta});
    // The marker, positioned at Uluru
    var marker = new google.maps.Marker({position: jakarta, map: map});
  }