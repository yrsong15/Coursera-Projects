class Person
	def initialize(name, age)  # CONSTRUCTOR
		@name = name
		@age = age
	end
	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age: #{@age}"
	end
	def access_data
		"Additional Info: #{@additional_info}"
	end
end

person1 = Person.new("Joe", 14)
p person1.instance_variables

puts person1.get_info
p person1.instance_variables
puts person1.access_data


##Accessing Data

class Person
	def initialize (name, age)
		@name = name
		@age = age
	end
	def name   ##Name-getter
		@name
	end
	def name= (new_name)  ##Name-setter
		@name = new_name
	end
end

person1 = Person.new("Ray", 23)
puts person1.name
person1.name = "Mike"  #It's OK for there to be a space betewen name and =
puts person1.name


class Persona
	attr_accessor :name, :age  #Getter and Setter for name and age
end

person1 = Persona.new
p person1.name
person1.name = "Nicole"
person1.age = 15
puts person1.name
puts person1.age
person1.age = "fifteen"
puts person1.age



###Issue with above example:
	#1. Person is in an uninitialized state upon creation(without name nor age)
	#2. We want to control max age

	# --> Solution: use a constructor and a more intelligent age setter

class Person
	attr_reader :age
	attr_accessor :name

	def initialize(name, ageVar)
		@name = name
		self.age = ageVar  #this calls the age= method; age is NOT an instance variable
		puts age     #this calls the reader method (attr_reader)
	end
	def age= (new_age)
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("Kim", 13)
puts "I am #{person1.age} years old!"
person1.age = 130
puts person1.age

