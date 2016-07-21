### Moving business logic out of view

If action method is not doing anything, we can remove it.

As long as there is a proper route defined and there is a properly named view file/template,
the action method does not have to be there and Rails will find the correct template
by convention.

App will work, but business logic does not belong in View.
The View should have as little Ruby code logic as possible.
	-> move logic to controller

	Instance variables from the controller are available inside the view

	You cannot "store" values in the controller's instance variables in between requests  '
		->ALT: Session/Database

<Summary>
Keep business logic out of view
Instance variables in controller are available to view
Instance variables do not stick around between requests.

	
### Helpers
If we want to format how time looks,
	-Put into view? -> NO, because we can't re-use   '
	-Controller? -> NO, because should be view format agnostic
	=>Helpers

"View helpers"

Everytime you generate a controller, you get a helper for it as well.
	Methods in helpers are available to any views - not only in the specified view(controller)

# built-in helper
link_to name, path
	:hyperlink generator that displays name and links to path

	path could either be a regular string or a route defined in the routes.rb
	file ending with _url(full path) or _path(relative path)

	instead of specifying path, you specify variable - automatically changes
	your page if the variable changes

	_url and _path are used interchangeably, but full path is required 
	in cases of redirection


<Summary>
Helpers are "macros"/"formatters" for view
When using link_to, there is no need to change things if a path changes