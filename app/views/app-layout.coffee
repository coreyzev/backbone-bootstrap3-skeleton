application = require 'application'

module.exports = class AppLayout extends Backbone.Marionette.Layout
  template: 'views/templates/app-layout'
  el: "body"

  regions:
    nav: "#nav"
    content: "#content"
    footer: "#footer .container"

