module.exports = class JavascriptView extends Backbone.Marionette.ItemView
  id: 'javascript-view'
  template: 'views/templates/javascript'

  initialize: ->
    window.scrollTo 0, 0