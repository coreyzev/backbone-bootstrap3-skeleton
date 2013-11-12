/*global define */
app = require('test/app/application');

'use strict';

var Controller = {
	setFilter: function (param) {
		app.vent.trigger('todoList:filter', param && param.trim() || '');
	}
};

module.exports = Controller;