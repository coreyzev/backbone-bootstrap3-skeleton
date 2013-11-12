var app = require('test/app/application');
Router = require('test/app/routers/index');
Controller = require('test/app/controllers/index');

'use strict';

$(function() {
		app.start();
    new Router({ controller: Controller });
    Backbone.history.start()
});