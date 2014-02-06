SignetsApp.BookmarksRoute = Ember.Route.extend({
	model: function() { return this.store.find('bookmark'); }
});
