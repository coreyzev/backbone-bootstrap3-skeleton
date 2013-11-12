/*global define */
Todo = require('test/app/models/Todo');


'use strict';

var isCompleted = function (todo) {
		return todo.get('completed');
	};

var TodoList = Backbone.Collection.extend({
	model: Todo,

	localStorage: new Backbone.LocalStorage('todos-backbone'),

	getCompleted: function () {
		return this.filter(isCompleted);
	},

	getActive: function () {
		return this.reject(isCompleted);
	},

	comparator: function (todo) {
		return todo.get('created');
	}
});	

module.exports = TodoList;