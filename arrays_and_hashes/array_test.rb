require 'minitest/autorun'
require 'minitest/autorun'

class TestPerson < MiniTest::Unit::TestCase
    
  def test_array_is_created_empty
    a1 = Array.new
    assert_equal(0, a1.size)
    assert(a1.empty?)
  end

  def test_array_with_1_element
  	a1 = Array.new
  	a1 << "item"
  	assert_equal(1, a1.size)
  	refute(a1.empty?)
  	assert(a1[0].is_a?String)
  	assert_equal("item", a1[0])
  	assert_equal("item", a1.first)
  end
end
