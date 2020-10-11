  function Slider(app) {
    var self = this;
    self.app = app;

    // parameters


    this.init = function () {
      if ($('#js-start-slider').length > 0) {
        this.setup();
      }
    };

    this.setup = function () {
      $('#js-start-slider').slick({
  			infinite: true,
        dots: true,
  			speed: 500,
  			fade: true,
  			cssEase: 'ease',
  			lazyLoad: 'ondemand',
  			accessibility: true,
  			arrows: false,
  			edgeFriction: 0.1,
  			swipeToSlide: true,
  			touchMove: true,
  			draggable: true,
        autoplay: true,
        autoplaySpeed: 3500,
        pauseOnFocus: false,
        pauseOnHover: false,
  	 });
  };
}
