###Module as Namespace : class names don't collide

module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 = Sports::Match.new
match1.score = 45
puts match1.score

match2 = Patterns::Match.new
match2.complete = true
puts match2.complete

###Module as Mixin
module SayMyName
	attr_accessor :name
	def print_name
		puts "Name: #{name}"
	end
end

class Person
	include SayMyName
end
class Company
	include SayMyName
end

person = Person.new
person.name = "Joe"
person.print_name
company = Company.new
company.name = "Aqueti"
company.print_name


###Enumerable
require_relative 'player'
require_relative 'team'

player1 = Player.new("Bob", 13, 5)
player2 = Player.new("Jim", 15, 4.5)
player3 = Player.new("Sam", 22, 99)
player4 = Player.new("Emily", 6, 3)
player5 = Player.new("Hololo", 8, 23)

red_team = Team.new("red")
red_team.add_players(player1, player2, player3, player4, player5)

elig_players = red_team.select{|player| (14..20) === player.age}
				# .reject{|player| player.skill_level < 4.5}

puts elig_players
