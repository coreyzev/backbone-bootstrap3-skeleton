
ItemView = require('test/app/views/TodoItemView');
'use strict';

var TodoListCompositeView = Marionette.CompositeView.extend({
	template: require('test/app/templates/todoListCompositeView'),

	itemView: ItemView,

	itemViewContainer: '#todo-list',

	ui: {
		toggle: '#toggle-all'
	},

	events: {
		'click #toggle-all': 'onToggleAllClick'
	},

	initialize: function () {
		this.listenTo(this.collection, 'all', this.updateToggleCheckbox, this);
	},

	onRender: function () {
		this.updateToggleCheckbox();
	},

	updateToggleCheckbox: function () {
		var allCompleted = this.collection.reduce(function (lastModel, thisModel) {
			return lastModel && thisModel.get('completed');
		}, true);

		this.ui.toggle.prop('checked', allCompleted);
	},

	onToggleAllClick: function (event) {
		var isChecked = event.currentTarget.checked;

		this.collection.each(function (todo) {
			todo.save({ completed: isChecked });
		});
	}
});

module.exports = TodoListCompositeView;