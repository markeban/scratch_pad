window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = [
      { id: 1, title: "The absolute first note", content: "This is a note!" }
      { id: 2, title: "The absolute first note", content: "" }
      { id: 3, title: "The absolute first note", content: "This is a poor note." }
    ]
    new @Routers.ScratchPadRouter
    Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
