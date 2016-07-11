het_array = [1, "two, :three"] #heterogenous types
puts het_array[1]

arr_words = %w{ what a great day today! }
puts arr_words[-2]   #second to last word 

puts "#{arr_words.first} - #{arr_words.last}"
p arr_words[-3, 2]  #2 words from -3

#range types
p arr_words[2..4]

#Make a String out of array elements separated by ','
puts arr_words.join(',')


####### Stacks and Queues

#LIFO
stack = [];
stack << "one"
stack. push("two")
puts stack.pop

#FIFO
queue=[]; queue.push("one"); queue.push("two")
puts queue.shift

a = [5,3,4,2].sort!.reverse!  #initially sorted into 2,3,4,5 -> reversed into 5,4,3,2
p a
b = a.reverse!
p b

p a.sample(2)  # 2 random elements

a[6] = 33   # arrays are auto-expandable
p a 


### Array Processing

a = [1,3,4,7,8, 10]
a.each{ |num| print num}
puts 

new_arr = a.select{|num| num>4}
p new_arr
new_arr = a.select{|num| num<10}.reject{|num| num.even?}
p new_arr


new_arr = a.map{|x| x*3}
p new_arr
