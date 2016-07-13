print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state are you from? Please write in 2-letter initials"
state = gets.chomp
state.upcase!

print "Hi, #{first_name} #{last_name} from #{city}, #{state}!"
