1.times{puts "Hello World!"}

2.times do |index|
	if index > 0
		puts index
	end
end

#prints 1 because index iterates twice: 0 and 1

2.times{|index| puts index if index > 0}

#same as above

###Implicit

def two_times_implicit
	return "No Block" unless block_given?
	yield
	yield
end

puts two_times_implicit{print "Hello "}

puts two_times_implicit

###Explicit: this way is more direct 
def two_times_explicit(&im_a_block)
	return "No Block" if im_a_block.nil?   #should check if block is nil 
	im_a_block.call
	im_a_block.call
end

puts two_times_explicit

two_times_explicit{puts "Hello "}



