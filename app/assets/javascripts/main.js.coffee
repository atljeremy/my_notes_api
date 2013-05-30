class MyNotes

  constructor: ->

  setMyNotesNative: (@myNotesNative) =>

  bindFormSubmitted: =>
    formBtn = $('#submitForm')
    formBtn.click (e) =>
      console.log "Submit button clicked!"
      mynotes.stopEvent(e)
      title = $('#title')
      details = $('#details')
      mynotes.myNotesNative.saveNote(title, details)
      false
    false

  stopEvent: (e) ->
    e.preventDefault()
    e.stopPropagation()

@mynotes = new MyNotes()