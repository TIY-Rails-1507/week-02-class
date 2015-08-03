class Bank

	def initialize
		@accounts = []
	end

	def transfer(from_account, to_account, amount)
		from_account = @accounts.find {|account| account.number == from_account }
		to_account = @accounts.find {|account| account.number == to_account }
		from_account.withdraw(amount)
    	to_account.deposit(amount)	
	end

	def add_account(account)
		@accounts << account
	end


end
