require 'minitest/autorun'

class TestArrays < MiniTest::Unit::TestCase
    
  def test_an_array_is_created_empty
  	array = Array.new()
    assert_equal(0, array.size)
    assert(array.empty?)
  end

  def test_an_array_with_1_element
  	array = Array.new()
  	array << "item"

    assert_equal(1, array.size)
    refute(array.empty?)
    assert_equal("item", array[0])
    
  end
  
end
