class Person
	attr_accessor :first_name, :last_name

	@@people = Array.new

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
		@@people << self
	end

	def to_s
		"#{first_name} #{last_name}"
	end

	def self.search(last_name)
		# res = Array.new
		# @@people.each do |person|
		# 	if person.last_name == last_name
		# 		res << person
		# 	end
		# end
		@@people.select{|person| person.last_name == last_name}
	end
end

p1 = Person.new("John","Smith")
p2 = Person.new("John","Doe")
p3 = Person.new("Jane","Smith")
p4 = Person.new("XXX","ZZZ")

puts Person.search("Smith")