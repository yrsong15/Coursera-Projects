# Access Control
# When designing class, importatnt to think about how much of it you wnat to exposr

class Car
	def initialize(speed, comfort)
		@rating = speed * comfort
	end

	def rating
		@rating
	end
end

puts Car.new(4,5).rating

# Specifying Access Control
# 1. Specify public, protected, or private
# 	Everything until next access control keyword will be that access
# 	Default: public
# 2. Define methods regularly, specify public/private/protected access levels
# 	list comma-separated methods under those levels using method symbols

class MyAlgorithm
	private
		def test1
			"Private"
		end
	protected
		def test2
			"protected"
		end
	public
		def public_again
			"Public"
		end
end

class Another
	def test1
		"Private, as declared later"
	end
	private :test1
end

# public method: no access control is enforced
# 	Anybody can call these methods

# protected: can be inbvoked by objects of defiing class or subclasses

# private: cannot be invoked with an explicit receiver
# 	exception: setting attribute can be invoked with explicit receiver

class Person
	def initialize(age)
		self.age = age    #This is legal - an exception
		puts my_age
		# puts self.my_age this is illegal!!! CANNOT use self or any other receiver

	end
	private
		def my_age 
			@age
		end
		def age=(age)
			@age = age
		end
end

Person.new(25)

