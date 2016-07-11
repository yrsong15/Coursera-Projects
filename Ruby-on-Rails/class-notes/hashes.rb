editor_props = {"font" => "Arial", "size" => 12, "color" => "red"}

puts editor_props.length
puts editor_props["font"]

editor_props["background"] = "Blue"
editor_props.each_pair do |key,value|
	puts "Key: #{key}, Value: #{value}"
end

######

test_hash = Hash.new(11)
puts test_hash[0]

######


word_frequency = Hash.new(0)
sentence = "Chicka chika boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1   #incrementing is possible b/c default value is 0.
										 #this means that we don't have to check 
										 #whether an index exists or not
end

p word_frequency

########

family_tree_19 = {oldest: "Jim", older: "Joe", younger: "Jack"}
family_tree_19[:youngest] = "Jeremy"
p family_tree_19


#Named parameter "like" behavior
def adjust_colors (props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
end

adjust_colors

adjust_colors({:foreground => "green"})
adjust_colors background: "yellow"
adjust_colors :background => "magenta"


###Block and Hash confusion
puts ({:one => "one"})
#puts {:one => one}    ---->  This will give a syntax error because Ruby thinks it's putting a block
puts one: "one"

