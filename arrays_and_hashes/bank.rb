class Bank

	def initialize
		@accounts = {}
	end

	def transfer(from_account_number, to_account_number, amount)
		# from_account = @accounts.find {|account| account.number == from_account }
		# to_account = @accounts.find {|account| account.number == to_account }
		from_account = @accounts[from_account_number]
		to_account = @accounts[to_account_number]
		from_account.withdraw(amount)
    	to_account.deposit(amount)	
	end

	def add_account(account)
		@accounts[account.number] = account
	end


end
