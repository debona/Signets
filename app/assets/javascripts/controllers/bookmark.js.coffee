SignetsApp.BookmarkController = Ember.ObjectController.extend
	actions:
		edit: ()->
			@set('isEditing', true)
		save: ()->
			@get('model').save()
			@set('isEditing', false)
		destroy: ()->
			bookmark = @get('model')
			bookmark.deleteRecord()
			bookmark.save()

	isEditing: false
