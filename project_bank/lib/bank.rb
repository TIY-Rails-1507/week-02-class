class Bank

	def transfer(from_account, to_account, amount)
		from_account.withdraw(amount)
    	to_account.deposit(amount)	
	end

end
