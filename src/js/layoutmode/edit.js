function LayoutHelper(app) {
	var self = this;
	self.app = app;
	
	// parameters

	this.init = function () {
		self.setup(document);
		setTimeout(function () {
			var observer = new MutationObserver(listenForNewElement);
			var targetNode = document.querySelector('main');
			var canObserve = true;
			var observerOptions = {
				attributes: false, 
				childList: true, 
				characterData: false, 
				subtree:true
			};

			observer.observe(targetNode, observerOptions);
			function listenForNewElement(mutations) {
				mutations.forEach((mutation) => {
					if (mutation.target.classList.contains('cmt-element') && canObserve) {
						canObserve = false;
						setTimeout(function () {
							var newElement = mutation.target.closest('.cmt-object-content-wrapper');
							
							if (newElement.querySelector('.cmt-option--toggle').getAttribute('data-isset') != "true") {
								self.setup(newElement);
							} else {
								console.log(newElement.classList + ', already set!');
							}
							canObserve = true;
						}, 500);
					}
				});
			}
		}, 500);
	};

	self.setup = function (setupTarget) {
		var toggleOptions = setupTarget.querySelectorAll('.cmt-option--toggle');
		
		
		toggleOptions.forEach((toggleOption) => {

			toggleOption.setAttribute('data-isset', "true");
			
			toggleOption.addEventListener('click', function(event) {
				var wrapper = event.target.nextElementSibling;
				var expanded = wrapper.getAttribute('aria-expanded');
				if (expanded == "false") {
					wrapper.setAttribute('aria-expanded', "true");
				} else {
					wrapper.setAttribute('aria-expanded', "false");
				}
			});
		});
		

		var options = setupTarget.querySelectorAll('.cmt-custom__option');
		console.log(options.length);

		options.forEach((option) => {
			var multipleSelects = option.querySelectorAll('select[multiple]');
			handleMultiSelect(multipleSelects);

			var selects = option.querySelectorAll('select:not([multiple])');
			handleSelect(selects);
		});
	};
		
	function handleSelect(selects) {
		selects.forEach((select) => {
			if (select.length != 0) {
				var cmtInput = select.nextElementSibling;
				
				// Set Filed
				if (cmtInput.innerHTML) {
					select.value = cmtInput.innerHTML;
				} else {
					console.log('set default:', select.value);
					cmtInput.innerHTML = select.value;
				}

				// Update Filed
				select.addEventListener('change', function(event) {
					cmtInput.innerHTML = event.target.value;
				});
			}
		});
	}

	function handleMultiSelect(multiSelects) {
		multiSelects.forEach((select) => {
			if (select.length != 0) {
				var cmtInput = select.nextElementSibling;
				
				// Set Filed
				if (cmtInput.innerHTML) {
					var cmtValues = cmtInput.innerHTML.split(',');
					select.querySelectorAll('option').forEach((option) => {
						option.selected = cmtValues.includes(option.value);
					});
				}
				
				// Update Filed
				select.addEventListener('change', function(event) {
					cmtInput.innerHTML = Array.prototype.map.call(event.target.selectedOptions, function(x){ return x.value; }).join();
				});
			}
		});
	}
}


document.onreadystatechange = function () {
	if (document.readyState === "complete") {
		var layouthelper = new LayoutHelper(this);
		layouthelper.init();
	}
};
