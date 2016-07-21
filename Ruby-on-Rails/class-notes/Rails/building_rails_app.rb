Gems: 3rd party plugins/additions for Ruby

Restful web services:
	simple web services implemented using HTTP and principles of REST

	1. have a base URI
	2. Support a data exchange format like XML or JSON
	3. SUpport a set of HTTP operations (GET, POST)

HTTParty Gem
	Restful web services client
	Automatic parsing of JSON and XML into Ruby hashes/arrays
	Provides support for:
		basic http authentication
		default request query parameters

	include HTTParty module to use it
	can specify:
		base_uri for requests
		default_params (ex)API developer key)
		format to tell it which format the data is in


Coursera Restful API
	first parameter specified by ? , others specified by &
<Summary>
HTTParty makes it extremely easy to ingest Restful services, converting them to
Ruby hashes.
JSON and XML formats are supported


###Bundler
Bundler provides a consistent environment for Ruby projects by 
tracking and installing the exact gems and versions that are needed.

	Lets you specify gems(and associated gem dependencies) for this Rails app
	inside Gemfile(in the root of your Rails app)

	Preferred way to manage gem dependencies in Rails

	Run "bundle install" after specifying new gem in Gemfile
	run "bundle update" when modifying a version of gem

	Can also instruct Rails (through Gemfile)to only load certain gems

	~> : Pessimistic Version Constraint
		drops final digit, increments to get upper limit version number

Bundler: require
	gem 'sqlite3-ruby', require: 'sqlite3'

	App can use different version of Rails if you change version
	and run bundle updat 

	Bundler creates Gemfile.lock file, which contains the actual gem versions
	your app is using with their associated dependency

bundle exec 
	: runs command, providing it access to the gems in the bundle.
	While using bundle exec you can require and call the bundled gems
	as if they were installed into the systemwide Rubygems repo

<Summary>
Bundle manages gem dependencies
Loads gems on app startup

### Rails & HTTParty Integration

Need to restart server after running bundler for chagnes to take effect!!!

By convention, controllers are named plural and model is named singular
	HTTParty does not have to be required thanks to bundler


<Summary>
By convention, controllers are named plural and model is named singular
	Controller controls every instance, model is one instance
Files under app directory are automatically required


### CSS, Parameters, Root Path

Params helper
	use params "Hash" to retreive value (name of parameter becomes key in Hash)
	Returns nil if request behavior not passed in

	no changes to model or view, only to the controller

What if we wanted root path to go to index?
	Just modify routes.rb


<Summary>
Minor CSS changes can dramatically enhance app
params helper parses request parameters
easy to change root path by tweaking routes.rb