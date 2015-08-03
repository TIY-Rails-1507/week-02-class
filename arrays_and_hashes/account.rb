class Account

	attr_reader :number

	def initialize(account_number, opening_balance)
		@balance = opening_balance
		@number = account_number
	end

	def balance()
		@balance # in ruby the last line is always returned
	end

	def withdraw(amount)
		# @balance = @balance - amount
		@balance -= amount
	end

	def deposit(amount)
		@balance += amount
	end

end