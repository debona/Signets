SignetsApp.BookmarksController = Ember.ArrayController.extend
	actions:
		createBookmark: ()->
			# Get the bookmark title set by the "New Todo" text field
			title = @get('newTitle')
			url   = @get('newUrl')
			return unless title.trim() and url.trim()
			# Create the new Todo model
			bookmark = @store.createRecord('bookmark',
				title: title,
				url:   url
			)
			# Save the new model
			bookmark.save()
			# Clear the "New Todo" text field
			@set('newTitle', '')
			@set('newUrl', '')
