class App.Views.EditNote extends Backbone.View
  template: JST['notes/edit']

  tagName: 'form'

  events:
    'submit': 'saveModel'

  render: ->
    @$el.html(@template(note: @model))
    @

  saveModel: (e) ->
    @model.save
      title: @$('.note-title').val()
      content: @$('.note-content').val()
    Backbone.history.navigate('/', trigger: true)
    false
