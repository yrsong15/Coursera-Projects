###Q1

arr = (1..10000).to_a.sample(23)
p arr

p arr.select{|element| element % 3 ==0 and element < 5000}.sort!.reverse!

