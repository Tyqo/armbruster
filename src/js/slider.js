  function Slider(app) {
  	var self = this;
  	self.app = app;

  	// parameters
  	

  	this.init = function () {
  		if (true) {
  			this.setup();
  		}
  	};

  	this.setup = function () {
  		if (app.debug) {
  			console.log("app started");
				$('.slider__wrapper').slick();
		}

		// Start Functions
		
	};
}