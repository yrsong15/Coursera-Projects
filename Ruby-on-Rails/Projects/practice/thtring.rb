print "Input a string please!"
user_input = gets.chomp

if user_input.empty?
    print "Please enter something: "
    user_input = gets.chomp
end
user_input.downcase!

if user_input.include? "s"
    if !user_input.include? "h"
        user_input.gsub!(/s/, "th")
    else puts "But we can't have two h's!"
    end
else
    puts "no s has been found"
end

puts "So you meant #{user_input}, right?"