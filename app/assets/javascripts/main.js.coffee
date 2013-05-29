class MyNotes

  constructor: ->
    #do nothing just yet

  bindFormSubmitted: =>
    formBtn = $('#submitForm')
    formBtn.click (e) =>
      console.log "Submit button clicked!"
      mynotes.stopEvent(e)
      title = $('#title')
      details = $('#details')
      @MyNotesNative.saveNote(title, details)
      false
    false

  stopEvent: (e) ->
    e.preventDefault()
    e.stopPropagation()

@mynotes = new MyNotes()

@mynotes.bindFormSubmitted()