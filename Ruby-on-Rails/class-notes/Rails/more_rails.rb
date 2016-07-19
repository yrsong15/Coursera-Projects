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

	
