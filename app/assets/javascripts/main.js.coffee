class MyNotes

  constructor: ->

  bindFormSubmitted: =>
    formBtn = $('#submitForm')
    formBtn.click (e) =>
      mynotes.stopEvent(e)
      title = $('#formTitle')
      details = $('#formDetails')
      console.log title.val()
      console.log details.val()
      MyNotesNative.saveNote(title.val(), details.val())
      false
    false

  stopEvent: (e) ->
    e.preventDefault()
    e.stopPropagation()

@mynotes = new MyNotes()
@mynotes.bindFormSubmitted()