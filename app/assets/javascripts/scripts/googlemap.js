var map;
var geocoder;
function InitializeMap() {
    var latlng = new google.maps.LatLng(0, 0);
    var myOptions =
    {
        zoom: 15,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        disableDefaultUI: false
    };
    map = new google.maps.Map(document.getElementById("googleMap"), myOptions);
}