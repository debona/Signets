SignetsApp.BookmarkController = Ember.ObjectController.extend
	actions:
		edit: ()->
			@set('isEditing', true)
		save: ()->
			@get('model').save()
			@set('isEditing', false)

	isEditing: false
