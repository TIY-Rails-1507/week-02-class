
# arr = [4,2,5,0,1]

# index = 0

# while(index < arr.size)
# 	puts arr[index]
# 	index += 1
# end	

# puts "odd numbers only"
# puts "new array, twice value of old"
# new_arr = arr.collect{|i| i * 2}
# puts new_arr

require_relative 'bank'
require_relative 'account'

bank = Bank.new
savings = Account.new("888-12", 100)
current = Account.new("888-13", 50)
credit = Account.new("888-14", 500)

bank.add_account(savings)
bank.add_account(current)
bank.add_account(credit)

bank.transfer("888-12", "888-13", 50)

puts savings.balance


