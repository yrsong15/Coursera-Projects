require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
	def setup
		@calc = Calculator.new('test')
	end

	def test_addition
		assert_equal 4, @calc.add(2,2)
	end

	def test_subtraction
		assert_equal 2, @calc.subtract(4,2)
	end

	def test_division
		assert_equal 2, @calc.divide(4,2)
	end

	def test_divide_by_zero
		assert_raise ZeroDivisionError do @calc.divide(1,0)
		end
	end
end


# When the test is run, a single dot indicates one successful test passed.
# the above test will produce four dots, one for each test.
