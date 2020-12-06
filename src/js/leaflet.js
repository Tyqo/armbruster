/**
 * HALMA
 *
 *
 * @author Carsten Coull <c.coull@agentur-halma.de>
 * @package halma
 * @version 2019-08-30
 *
 */
function blazonMap(app) {
  var self = this;
  self.app = app;

  this.init = function() {
    if ($('#js-map').length != 0) {
      // this.setup = BlazonMapSetup();
      self.BlazonMapSetup();
    }
  };

  this.BlazonMapSetup = function() {
    self.startMap();
  };

  // this.startMap = function() {
  //   var latLong = [48.52828, 8.97275];
  //   var mapEl = document.getElementById('js-blazon-map');
	//
  //   var mymap = L.map('js-map').setView(latLong, 13);
  //   L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
  //     maxZoom: 18,
  //     tileSize: 120,
  //     zoomOffset: 0
  //   }).addTo(mymap);
  // };
}
