/**
 * src/js/main.js
 *
 * main javascript file
 */

function APP () {

	var self = this;
	self.debug = true;
	
	self.Slider = new Slider(self);

	this.init = function() {
		document.addEventListener('DOMContentLoaded', this.setup);
	};

	this.setup = function() {
		if (this.debug) {
			console.log('APP::init');
		}
		
		self.pageInit();
	};

	this.pageInit = function() {
		if (this.debug) {
			console.log('APP::pageInit');
		}

		document.body.classList.add('page-has-loaded');

		this.main();
		self.Slider.init();
	};

	this.main = function() {
		
	};
};

var app = new APP();
app.init();


