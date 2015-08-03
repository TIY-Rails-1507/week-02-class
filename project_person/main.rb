require_relative('person')

first_name1 = "Bob"
last_name1 = "Smith"

first_name2 = "Sue"
last_name2 = "West"

person1 = Person.new(first_name1, last_name1)
person2 = Person.new(first_name2, last_name2)

puts person1.full_name()

puts person2.full_name()

# Test Doubles, Mocks, Stubs