# Rspec Matchers
# 	Rspec "hangs" to and not_to mathods on all outcomes of expectations
# 	to() and not_to() methods take one parameter - matchers
# 	matcher examples:
# 		be_true / be_false
# 		eq 3
# 		raise_error(SomeError)


# 	Be_predicate : boolean
# 		if object on which the test is operating has a predicate(bool) method,
# 		you automatically get a be_predicate matcher 

# 		ex) be_nil is valid matcher since every Ruby method has :nil? method

	it "should sum two odd numbers and become even" do
		expect(@calculator.add(3,3)).to be_even
		expect(@calculator.add(3,3)).not_to be_odd
	end

# RSpec has a lot of build-in matchers readily available for simplifying tests