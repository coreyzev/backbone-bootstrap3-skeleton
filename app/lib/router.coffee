application = require 'application'
FooterView = require 'views/footer-view'
NavView = require 'views/nav-view'
HomeView = require 'views/home-view'
ThemeView = require 'views/theme-view'
CssView = require 'views/css-view'
ComponentsView = require 'views/components-view'
JavascriptView = require 'views/javascript-view'

module.exports = class Router extends Backbone.Router

	routes:
    '': 'home'
    'theme' : 'theme'
    'css': 'css'
    'components': 'components'
    'javascript': 'javascript'

  home: =>
    view = new HomeView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'home'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
      )
    application.layout.nav.show(
      new NavView
        model: new Backbone.Model
          name: 'home'
          homeActive: true
      )

  theme: =>
    view = new ThemeView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'theme'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
    )
    application.layout.nav.show(
      new NavView
        model: new Backbone.Model
          name: 'theme'
          themeActive: true
      )

  css: =>
    view = new CssView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'css'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
      )
    application.layout.nav.show(
      new NavView
        model: new Backbone.Model
          name: 'css'
          cssActive: true
      )

  components: =>
    view = new ComponentsView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'components'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
      )
    application.layout.nav.show(
      new NavView
        model: new Backbone.Model
          name: 'components'
          componentsActive: true
      )

  javascript: =>
    view = new JavascriptView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'javascript'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
      )
    application.layout.nav.show(
      new NavView
        model: new Backbone.Model
          name: 'javascript'
          javascriptActive: true
      )