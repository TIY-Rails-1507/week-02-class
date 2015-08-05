# don't forget to use require_relative 'account'

# write code th creates a new account with an opening balance of 100
# write code that will withdraw 80 and then display the balance
# then make the program withdraw 50, this should cause the account class to raise an exception
# rescue the exception so that the application terminates gracefully

require_relative 'account'

acc1 = Account.new(100)
acc1.withdraw(80)
puts acc1.balance
acc1.withdraw(50) rescue puts "You may not withdraw more than your current balance."
