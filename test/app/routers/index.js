/*global define */

'use strict';

var Router = Marionette.AppRouter.extend({
	appRoutes: {
		'*filter': 'setFilter'
	}
});

module.exports = Router;