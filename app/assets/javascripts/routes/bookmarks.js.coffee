SignetsApp.BookmarksRoute = Ember.Route.extend
	model: ()->
		@store.find('bookmark')
