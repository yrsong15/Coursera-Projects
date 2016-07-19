singlequote = 'ice cream \n followed by it\'s a party!'
doublequote = "ice cream \n followed by it\'s a party!"

puts singlequote
puts doublequote

def multiply(one, two)
	"#{one} multiplied by #{two} equals #{one*two}"
end

puts multiply(5,3)


####

name = " ray"

puts name.lstrip.capitalize
p name

name.lstrip!  #(destructuve) removes leading space

p name

name[0] = 'S'  #replace first character

p name

weather = %Q{It's a hot day outside
				Grab your umbrella!}

weather.lines do |line|
	line.sub! 'hot', 'rainy' #substitute hot with rainy
	puts "#{line.strip}"
end