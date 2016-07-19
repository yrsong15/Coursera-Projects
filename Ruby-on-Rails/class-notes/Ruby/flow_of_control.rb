a = 5

if a == 3
	puts "a is 3"
elsif a == 5
	puts "a is 5"
else
	puts "a is neither 3 nor 5"
end #use to close flow control block


###

a = 5

unless a == 6
	puts "a is not 6"
end

###

a = 10

while a > 9
	puts  a
	a -= 1
end

##

a = 9

until a >=11
	puts a
	a += 1
end

##

#if modifier form
a = 5
b = 0

puts "one liner" if a ==5 and b == 0


#while modifier form
times_2 = 2
times_2 *= 2 while times_2 < 100
puts times_2


###
#triple equals ===

if /sera/ === "coursera"
	puts "Triple Equals"
end

if "coursera" === "coursera" # in this case, === delegates to ==
	puts "also works"
end

if Integer === 21
	puts "21 is an integer"
end

###
#case expressions

#case 1
age = 24
case 
	when age >= 21
		puts "you can drink"
	when 1 == 0
		puts "this makes no sense"
	else
		puts "default! "
	
end

#case 2
name = 'Fisher'
case name
	when /fish/i then puts "Something is fishy here"
	when 'Smith' then puts "your name is Smith"
end

###
for i in 0..2 #this is a range data type
	puts i
end


