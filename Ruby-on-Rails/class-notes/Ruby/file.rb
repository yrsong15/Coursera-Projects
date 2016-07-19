File.foreach('test.txt') do |line|
	puts line
	p line
	p line.chomp #chops off newline character
	p line.array #array of words in line
end

##Reading from nonexistent file
File.foreach('donotexist.txt') do |line|
	puts line.chomp   # ---> This will cause an error!!
end


###Exception Handling
begin
	File.foreach('donotexist.txt') do |line|
	puts line.chomp   # ---> This will cause an error!!
end

rescue Exception => e ##Exception is mapped to the e variable
	puts e.message
	puts "Let's pretend nothing happened!"
end


###Another Exception Handling: check if file exists; 
                           ##Best for simple cases of not being able to find a file
if File.exist? 'test.txt'
	File.foreach('test.txt') do |line|
	puts line.chomp
	end

end


###Writing to a file

File.open("test1.txt", "w") do |file|  ##File is automatically executed after block executes
	file.puts "One Line"
	file.puts "Another"
end


###Environment Variable
puts ENV["EDITOR"]   ###Will output "subl" because I am running this on sublime text
