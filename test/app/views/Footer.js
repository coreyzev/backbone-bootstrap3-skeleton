/*global define */

ActiveCount = require('test/app/views/ActiveCount');
CompletedCount = require('test/app/views/CompletedCount');
'use strict';


var Footer = Marionette.Layout.extend({
	template: require('test/app/templates/footer'),

	regions: {
		activeCount: '#todo-count',
		completedCount: '#clear-completed'
	},

	ui: {
		filters: '#filters a'
	},

	events: {
		'click #clear-completed' : 'onClearClick'
	},

	onRender: function () {
		this.activeCount.show(new ActiveCount({ collection: this.collection }));
		this.completedCount.show(new CompletedCount({ collection: this.collection }));
	},

	updateFilterSelection: function (filter) {
		this.ui.filters
			.removeClass('selected')
			.filter('[href="#/' + filter + '"]')
			.addClass('selected');
	},

	onClearClick: function () {
		window.app.vent.trigger('todoList:clear:completed');
	}
});

module.exports = Footer;