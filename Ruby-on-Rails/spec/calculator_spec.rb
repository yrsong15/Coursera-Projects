require 'rspec'
require_relative '../class-notes/calculator'

describe Calculator do
	before{@calculator = Calculator.new('RSpec calculator')}

	it "should add two numbers correctly" do
		expect(@calculator.add(2,2)).to eq 4
	end

	it "should subtract 2 numbers correctly" do
		expect(@calculator.subtract(4,2)).to eq 2
	end

	it "should sum two odd numbers and become even" do
		expect(@calculator.add(3,3)).to be_even
		expect(@calculator.add(3,3)).not_to be_odd
	end
end



##Run using "rspec" command in the Ruby-on-Rails directory!

# Use "rspec --format documentation" command to see which tests are passing
# "rspec -f d" does the same
