class Person
	attr_reader :age
	attr_accessor :name

	def initialize(name, age)
		@name = name
		self.age = age
	end
	def age= (new_age)
		@age ||=5 #default value; only sets to 5 for the first time
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("Ray", 130)
puts person1.age
person1.age = 10
puts person1.age
person1.age = 3410
puts person1.age


########Class Methods and Variables

##Three ways to define class methods

class MathFunctions
	def self.double(var)   ## 1. Using self
		times_called; var *2;
	end
	class << self  ##2. Using << self
		def times_called
			@@times_called ||= 0; @@times_called += 1 
								#This measures how many times time_called was called
		end
	end
end
def MathFunctions.triple(var)   ##3. Defined outside of class
	times_called; var * 3;
end

#no instances are created!
puts MathFunctions.double 5
puts MathFunctions.triple 3
puts MathFunctions.times_called


##### Class Inheritance

class Dog   ###Implicitly inherits from Object class
	def to_s
		"Dog"
	end
	def bark
		"Woooooooooof!"
	end
end
class SmallDog < Dog    # < denotes inheritance
	def bark   ###Override
		"woof..."
	end
end

dog = Dog.new
small_dog = SmallDog.new
puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"


