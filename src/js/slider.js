function Slider(app) {
	var self = this;
	self.app = app;

	// parameters


	this.init = function() {
		if (true) {
			this.setup();
		}
	};

	this.setup = function() {
		if (app.debug) {
			console.log("app started");
			$('.slider__wrapper').slick({
				dots: true,
				arrows: false,
				lazyLoad: 'ondemand',
				infinite: true,
				speed: 500,
				fade: true,
				cssEase: 'linear'
			});
		}

		// Start Functions

	};
}