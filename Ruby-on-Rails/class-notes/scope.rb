###Scope: variable (lowercase)

v1 = "outside"

class MyClass
	def my_method
		#p v1 --> this gives an exception because no such var exists
		v1 = "inside"
		p v1
		p local_variables
	end
end

p v1
obj = MyClass.new
obj.my_method
p local_variables
p self


###Scope: constant (uppercase)

module Test
	PI = 3.14
	class Test2
		def what_is_pi
			puts PI
		end
	end
end

Test::Test2.new.what_is_pi

module MyModule
	MyConstant = 'Outer Constant'
	class MyClass
		puts MyConstant
		MyConstant = 'Inner Constant'
		puts MyConstant
	end
	puts MyConstant
end


###Scope: Block
class BankAccount
	attr_accessor :id, :amount
	def initialize(id, amount)
		@id = id
		@amount = amount
	end
end

acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(444, 100)
acct3 = BankAccount.new(312, -100)
accts = [acct1, acct2, acct3]

total_sum = 0
accts.each do |eachAcct|
	total_sum += eachAcct.amount
end

puts total_sum


###Block: local scope
arr = [5,4,1]
curr_number = 10
some_var = 222
arr.each do |curr_number|
	some_var = 10
	print curr_number.to_s + " "
end
puts
puts "Some_Var is: #{some_var}"
puts curr_number

adjustment = 5
arr.each do |curr_number; adjustment|
	adjustment = 10
	print "#{curr_number + adjustment} "
end
puts 
puts adjustment


