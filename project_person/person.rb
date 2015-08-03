class Person

	# attr_reader :first_name
	# attr_writer :first_name

	attr_accessor :first_name

	# def first_name()
	# 	@first_name
	# end

	# def first_name=(name)
	# 	@first_name = name
	# end

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name()
		"#{@first_name} #{@last_name}"
	end

end