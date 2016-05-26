---
---
RaudraApp = {}

RaudraApp.Utils =
  affixNavBar: ->
    $('#home-page header').affix
      offset:
        top: 300
  affixSideBar: ->
    $('#program #sidebar nav').affix
      offset:
        top: 10
        bottom: $('footer').height() + 50
  scrollSpySideBar: ->
    $('body').scrollspy
      target: '#sidebar > nav'
      # This should be 25 more than `$navbar-height` defined in _common.scss.
      # This is becuase the `margin-top` and `height` of `.anchorable::before`
      # are set to `25` more than `$navbar-height`
      offset: 117
  initWowJs: ->
    new WOW().init()
  init: ->
    RaudraApp.Utils.affixNavBar()
    RaudraApp.Utils.affixSideBar()
    RaudraApp.Utils.scrollSpySideBar()
    RaudraApp.Utils.initWowJs()

RaudraApp.Apply =
  showApplicationWizard: ->
    $('#application-wizard').show()
  hideApplicationWizard: ->
    $('#application-wizard').hide()
  startApplication: ->
    $('#application-trigger').hide()
    @showApplicationWizard()
  bindStartTrigger: ->
    $('#apply-start').click (ev) =>
      ev.preventDefault()
      @startApplication()
  init: ->
    @hideApplicationWizard()
    @bindStartTrigger()

$ ->
  RaudraApp.Utils.init()
  RaudraApp.Apply.init()
