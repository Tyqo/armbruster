function Overlay(app) {
  var self = this;
  self.app = app;
  // parameters


  this.init = function () {
    if ($('.overlay-message').length > 0) {
      this.setup();
    }
  };

  this.setup = function () {
    $('.overlay-message').on('click', '.overlay__close', function(event) {
    	$('.overlay-message').css('display', 'none');
    });	
  };
}
