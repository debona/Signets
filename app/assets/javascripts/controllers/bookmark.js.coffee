SignetsApp.BookmarkController = Ember.ObjectController.extend
	actions:
		edit: ()->
			@set('isEditing', true)
		cancel: ()->
			@set('isEditing', false)
			@get('model').rollback()
		save: ()->
			@set('isEditing', false)
			@get('model').save()
		destroy: ()->
			@get('model').destroyRecord()
		onKeyUp: ()->
			@send('cancel') if event.keyCode == 27 # escape

	isEditing: false
