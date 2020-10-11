/**
 * src/js/main.js
 *
 * main javascript file
 */

function APP () {

	var self = this;
	self.debug = false;

  this.Slider = new Slider(self);
  this.Overlay = new Overlay(self);
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

    self.Slider.init();
    self.Overlay.init();
		this.main();
	};

	this.main = function() {
		scrollHandler();
		viewHeight();

		window.addEventListener("orientationchange", viewHeight());
		window.addEventListener('resize', viewHeight());
	};
};

function scrollHandler() {
	//////////////////////
	//  SCROLL HANDLER  //
	//////////////////////

	var headerHeight = $('.main-header').innerHeight();

	var ticking;
	var lastScrollPos = 0;
	var scrollDirection = 0;

	var observer = window;
	observer.onscroll = function() {

		scrollDirection = observer.scrollY < lastScrollPos;
		lastScrollPos = observer.scrollY;

		if (!ticking) {
			window.requestAnimationFrame(function() {
				onScroll(lastScrollPos, scrollDirection);
				ticking = false;
			});

			ticking = true;
		}
	};


	function onScroll(y, dir) {


		document.body.classList.toggle('page-has-scrolled', y > 0);
		document.body.classList.toggle('passed-header', y > headerHeight);

		if (dir) {
			document.body.classList.remove('scrolling-down');
			document.body.classList.add('scrolling-up');
		}
		else {
			document.body.classList.remove('scrolling-up');
			document.body.classList.add('scrolling-down');
		}
	}
}

function viewHeight() {
		$('body').css('--browser-height', window.innerHeight + 'px');
}

/**
* Link: https://stackoverflow.com/questions/21741841/detecting-ios-android-operating-system
*
* Determine the mobile operating system.
* This function returns one of 'iOS', 'Android', 'Windows Phone', or 'unknown'.
*
* @returns {String}
*/
function getMobileOperatingSystem() {
	var userAgent = navigator.userAgent || navigator.vendor || window.opera;

	// Windows Phone must come first because its UA also contains "Android"
	if (/windows phone/i.test(userAgent)) {
	  return "Windows Phone";
	}

	if (/android/i.test(userAgent)) {
	  return "Android";
	}

	// iOS detection from: http://stackoverflow.com/a/9039885/177710
  if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
    return "iOS";
  }

  return "unknown";
}

var app = new APP();
app.init();
