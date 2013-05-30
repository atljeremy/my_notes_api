class MyNotes

  constructor: ->

  bindFormSubmitted: =>
    formBtn = $('#submitForm')
    formBtn.click (e) =>
      mynotes.stopEvent(e)
      title = $('#formTitle')
      details = $('#formDetails')
      MyNotesNative.saveNote(title.val(), details.val())
      false
    false

  bindEmailFormSubmitted: =>
    formBtn = $('#emailForm')
    savedSpan = $('#savedSpan')
    savedSpan.css("display", "none")
    formBtn.click (e) =>
      mynotes.stopEvent(e)
      title = $('#formTitle')
      details = $('#formDetails')
      MyNotesNative.saveAndShareNote(title.val(), details.val())

      newNoteForm = $('#newNoteForm')
      newNoteForm.fadeOut()

      savedSpan.text("Note Saved!")
      savedSpan.fadeIn()
      false
    false

  stopEvent: (e) ->
    e.preventDefault()
    e.stopPropagation()

@mynotes = new MyNotes()
@mynotes.bindFormSubmitted()
@mynotes.bindEmailFormSubmitted()