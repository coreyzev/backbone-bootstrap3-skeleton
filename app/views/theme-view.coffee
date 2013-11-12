module.exports = class ThemeView extends Backbone.Marionette.ItemView
  id: 'theme-view'
  template: 'views/templates/theme'

  initialize: =>
    window.scrollTo 0, 0