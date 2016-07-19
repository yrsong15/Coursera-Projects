###Return
def add(one, two)
	one + two
end

def divide(one, two)
	return "I don't think so!" if two == 0
	one/two
end

##Expressive Method Names
def can_divide_by?(number)
	return false if number.zero
	true
end


###Default Arguments

def factorial(n)
	n == 0 ? 1 : n*factorial(n-1)
end

def factorial_with_default(n=5)
	n == 0 ? 1 : n*factorial_with_default(n-1)
end	

puts factorial(5)
puts factorial_with_default
puts factorial_with_default(3)

####Splat

def max(one_param, *numbers, another)
	#Variable length parameters passed in become an array
	numbers.max
end

puts max("something", 7, 33, -1, "more")
