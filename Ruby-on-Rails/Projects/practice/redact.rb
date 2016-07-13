puts "What is your original text?"
text = gets.chomp#.downcase!

words = text.split(" ")

puts "What word do you want to block?"
redact = gets.chomp#.downcase!
puts "Are there any other words you want blocked?"
redact2 = gets.chomp#.downcase!


ret = ""

words.each do |word|
    if word == redact || word == redact2
        print "REDACTED "
        ret += "REDACTED "
    else 
        print word + " "
        ret += word
        ret += " "
end
end
puts

puts "The answer is: #{ret}"