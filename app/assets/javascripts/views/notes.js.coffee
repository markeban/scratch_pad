class App.Views.Notes extends Backbone.View
  template: JST['notes/index']

  events:
    'click a': 'showNote'

  render: ->
    @$el.html(@template(notes: @collection))
    @

  showNote: (e) ->
    $this = $(e.currentTarget)
    Backbone.history.navigate($this.attr('href'), trigger: true)
    false