# write code that creates a new account with an opening balance of 100
# keep asking the user if they want to exit or withdraw
# if they want to withdraw, ask how much
# try to withdraw however much they asked for
# if the account allows the user to withdraw, then show the new balance and ask if they want to exit or withdraw again (i.e go back to line 2)
# if they try to go over their balance, the account class will throw an exception
# rescue the exception and show an error message
# then ask if they want to exit or withdraw again (i.e go back to line 2)

require_relative 'account'
acc1 = Account.new(100)
msg1 = 'Would you like to withdraw funds or exit? '
msg2 = 'How much would you like to withdraw? '
err_msg = "You may not withdraw more than your balance."
# msg3 = "Your new balance is: #{acc1.balance}"
# doesn't work, since it only displays 100

loop do 
	print msg1
	ans = gets.strip.downcase
	if ans == "exit"
		break
	elsif ans == 'withdraw'
			begin
				print msg2
				amount = gets.strip.to_i
				acc1.withdraw(amount) 
			rescue 
				puts err_msg
			else
				puts "Your current balance is: #{acc1.balance}."
			end
	else puts "Invalid Answer"
	end
end



