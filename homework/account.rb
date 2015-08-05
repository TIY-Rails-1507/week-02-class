class Account

attr_reader :balance

	def initialize(opening_balance)
		@balance = opening_balance
	end

	# def balance()
	# 	@balance # in ruby the last line is always returned
	# end

	def withdraw(amount)
		if amount > @balance
			raise RuntimeError, 'Negative balance error.'
		else @balance -= amount
		end
	end

	def deposit(amount)
		@balance = @balance + amount
	end

end