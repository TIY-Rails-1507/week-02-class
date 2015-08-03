require 'minitest/autorun'

require_relative('person')

class TestPerson < MiniTest::Unit::TestCase
    
  def test_full_name
    first_name = 'John'
    last_name = 'Snow'
    person = Person.new(first_name, last_name)

    full_name = person.full_name()
    assert_equal('John Snow', full_name)
  end

  def test_setting_first_name
    first_name = 'John'
    last_name = 'Snow'
    person = Person.new(first_name, last_name)
    person.first_name = "Sue"
    assert_equal('Sue', person.first_name)
  end
  
end
