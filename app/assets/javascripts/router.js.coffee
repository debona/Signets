# For more information see: http://emberjs.com/guides/routing/

SignetsApp.Router.map ()->
	@route('about')
	@resource('bookmarks')
	@resource('bookmark', { path: 'bookmark/:bookmark_id' })
