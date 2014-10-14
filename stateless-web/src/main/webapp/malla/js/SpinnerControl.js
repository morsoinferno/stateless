var SpinnerControl = Class.create();
SpinnerControl.prototype = {
	initialize: function(inputElement, upElement, downElement, options) {
		this.inputElement = $(inputElement);
		this.upElement = $(upElement);
		this.downElement = $(downElement);
		this.options = Object.extend({
			interval: 1,
			round: 0,
			min: false,
			max: false,
			prefix: '',
			suffix: '',
			data: false,
			onIncrement: Prototype.emptyFunction,
			onDecrement: Prototype.emptyFunction,
			afterUpdate: Prototype.emptyFunction,
			onStop: Prototype.emptyFunction
		}, options);
		this.reset();
		this.buildUpdateFunction();
		if (Prototype.Browser.IE) {
			this.speedHash = {
				5: 300,
				10: 175,
				20: 90,
				30: 17
			};
		} else {
			this.speedHash = {
				5: 250,
				10: 85,
				20: 35,
				30: 10
			};
		}
		this.observe();
	},
	buildUpdateFunction: function() {
		if (this.options.data == false) {
			this.updateValue = function(multiplier) {
				var value = parseFloat(this.inputElement.value.replace(/^(.*?)([\-\d\.]+)(.*)$/, '$2'));
				if (isNaN(value)) value = this.options.min || 0;
				if (multiplier == 1) {
					value = (value + this.options.interval).toFixed(this.options.round);
				} else if (multiplier == -1) {
					value = (value - this.options.interval).toFixed(this.options.round);
				}
				if (this.options.min !== false)
					value = Math.max(this.options.min, value);
				if (this.options.max !== false)
					value = Math.min(this.options.max, value);
				this.setValue(value);
				this.options.afterUpdate(this);
			}.bind(this);
			if (this.inputElement.value === '') {
				this.inputElement.value = this.options.min || 0;
			}
		} else if (this.options.data.constructor == Array && this.options.data.length) {
			var current = this.options.data.indexOf(this.inputElement.value);
			this.pos = current == -1 ? 0 : current;
			this.updateValue = function(multiplier) {
				this.pos = this.pos + multiplier;
				this.pos = this.pos < 0 ? this.options.data.length - 1 : (this.pos > this.options.data.length - 1 ? 0 : this.pos);
				this.setValue(this.options.data[this.pos]);
				this.options.afterUpdate(this);
			}.bind(this);
			if (this.inputElement.value === '') {
				this.inputElement.value = this.options.data[0];
			}
		} else {
			throw new Error('SpinnerControl.initialize(): invlalid value for options.data');
		}
	},
	setValue: function(value) {
		this.inputElement.value = this.options.prefix + value + this.options.suffix;
	},
	observe: function() {
		var stop = this.stop.bind(this);
		this.inputElement.observe('keydown', this.keyStart.bindAsEventListener(this)).observe('keyup', stop).observe('blur', this.updateValue.bind(this, 0));
		this.upElement.observe('mousedown', this.clickStart.bind(this, 1)).observe('mouseup', stop).observe('mouseout', stop);
		this.downElement.observe('mousedown', this.clickStart.bind(this, -1)).observe('mouseup', stop).observe('mouseout', stop);
	},
	keyStart: function(evt) {
		if (this.running == false) {
			if (evt.keyCode == Event.KEY_UP) {
				this.running = 'key';
				this.increment();
			} else if (evt.keyCode == Event.KEY_DOWN) {
				this.running = 'key';
				this.decrement();
			}
		}
	},
	clickStart: function(multiplier) {
		this.running = 'mouse';
		if (multiplier == 1) {
			this.increment();
		} else {
			this.decrement();
		}
	},
	reset: function() {
		if (this.running == 'mouse') {
			this.upElement.blur();
			this.downElement.blur();
		}
		this.running = false;
		this.iterations = 0;
	},
	stop: function() {
		this.reset();
		window.clearTimeout(this.timeout);
		this.options.onStop(this);
	},
	increment: function() {
		this.updateValue(1);
		this.timeout = window.setTimeout(this.increment.bind(this), this.getSpeed());
		this.options.onIncrement(this);
	},
	decrement: function() {
		this.updateValue(-1);
		this.timeout = window.setTimeout(this.decrement.bind(this), this.getSpeed());
		this.options.onDecrement(this);
	},
	getSpeed: function() {
		this.iterations++;
		for (var iterations in this.speedHash) {
			if (this.iterations < iterations) {
				return this.speedHash[iterations];
			}
		}
		return this.speedHash[30];
	}
};