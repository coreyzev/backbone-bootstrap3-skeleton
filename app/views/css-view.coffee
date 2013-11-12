module.exports = class CssView extends Backbone.Marionette.ItemView
  id: 'css-view'
  template: 'views/templates/css'

  initialize: ->
    window.scrollTo 0, 0
