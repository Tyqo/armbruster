function Nav(app) {
	var self = this;
	self.app = app;

	// parameters
	this.init = function () {
		if ($('#js-nav-toggle').length) {
			this.setup();
		}
	};

	this.setup = function () {
		var toggle = $('#js-nav-toggle');
		var menu = $('.mobile-nav');

		toggle.on('click', function() {
			var status = toggle.attr('aria-expanded');

			if (status == "true") {
				toggle.attr('aria-expanded', 'false');
				menu.removeClass('mobile-nav--open');
			} else {
				toggle.attr('aria-expanded', 'true');
				menu.addClass('mobile-nav--open');
			}
		});
	};
}
