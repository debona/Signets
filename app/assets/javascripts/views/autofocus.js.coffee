SignetsApp.AutofocusField = Ember.TextField.extend
	didInsertElement: ()->
		@$().focus();

Ember.Handlebars.helper('autofocus-field', SignetsApp.AutofocusField);
