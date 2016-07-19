# describe()
# 	: set of related tests (aka example group)
# 	takes either a string or class as argument
# 	all specs must be inside a describe block
# 	no class to subclass
# 		unlike Test::Unit which always subclasses TestCase class
# 		everything happens inside describe() method


# before() and after() methods
# 	similar to setup() and teardown()

# 	can pass in either :each or :all(rarely used) to specify whether the block will run
# 	before/after each teest or once before/after all tests

# 	before :all could be useful, if for example you only want to connect to DB once


# it()
# 	:used to define actual RSpec specifications
# 	main action takes place here
# 	takes optional string to describe behavior being tested

#RSpec makes testing more intuitive
