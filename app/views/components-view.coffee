module.exports = class ComponentsView extends Backbone.Marionette.ItemView
  id: 'components-view'
  template: 'views/templates/components'

  initialize: ->
    window.scrollTo 0, 0
