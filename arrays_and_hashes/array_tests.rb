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

  def test_an_alternate_way_of_adding_an_element
    array = Array.new()
    array.push("item")

    assert_equal(1, array.size)
    refute(array.empty?)
    assert_equal("item", array[0])    
  end

  def test_create_a_new_array_with_odd_numbers_the_long_way
    array = [1,6,3,9,1,1,2,3]
    new_array = []

    index = 0
    while(index < array.size)
      if (array[index].odd?)
        new_array << array[index]
      end
      index += 1 # index = index + 1
    end

    assert_equal([1,3,9,1,1,3], new_array)    
  end

  # Complete this test using the 'for item in array' loop as shown here: http://learnrubythehardway.org/book/ex32.html
  # E.g.
  # the_count = [1, 2, 3, 4, 5]
  # this first kind of for-loop goes through a list
  # in a more traditional style found in other languages

  # for number in the_count
  #   puts "This is count #{number}"
  # end
  def test_create_a_new_array_with_odd_numbers_using_for_item_in_array
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = []

    for number in array 
      # build up the new_array here
    end    
    assert_equal([1,3,9,1,1,3], new_array)    
  end  

  # Complete this test using the array.each loop as shown here: http://learnrubythehardway.org/book/ex32.html
  # E.g.
  # change = [1, 'pennies', 2, 'dimes', 3, 'quarters']
  # this and the next one are the preferred 
  # way Ruby for-loops are written

  # fruits.each do |fruit|
  #   puts "A fruit of type: #{fruit}"
  # end

  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-each

  def test_create_a_new_array_with_odd_numbers_using_each
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = []

    array.each do | number |
      # build up the new_array here
    end    
    assert_equal([1,3,9,1,1,3], new_array)   

    # Note: if the block is one line then it is convention to use { } instead of using 'do end'
    # E.g.  array.each { | number |  # build up the new_array here }
  end  

  # Use the the array.select method to complete this test
  # This returns a new array containing all elements of where the the given block returns a true value.
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-select
  def test_create_a_new_array_with_odd_numbers_using_select
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = []

    
    new_array = array.select do | number |
        # make this block return true for odd numbers and false for even numbers
      end    
    assert_equal([1,3,9,1,1,3], new_array)    
  end  

  # Use the the array.reject method to complete this test
  # This is basically the oposite of select
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-reject
  def test_create_a_new_array_with_odd_numbers_using_reject
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = []
    # this is using the { } notation, instead of do end
    # E.g.  array.reject { | number |  # logic goes here }
    # use which ever you prefer
    # make this block return false for odd numbers and true for even numbers
    # this will reject the even numbers
    new_array = array.reject { | number |   }
    assert_equal([1,3,9,1,1,3], new_array)    
  end 

  # Use the the array.sort method to complete this test
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-sort
  def test_create_a_new_array_which_is_the_old_array_sorted_ascending
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = array # make the new array equal to array, but sorted
    assert_equal([1, 1, 1, 2, 3, 3, 6, 9], array.sort)    
  end 

  # Use the the array.sort method to complete this test
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-reverse
  def test_create_a_new_array_which_is_the_old_array_reversed
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = array # make the new array equal to array, but reversed
    assert_equal([3, 2, 1, 1, 9, 3, 6, 1], new_array)    
  end 

  # Use the the array.sort & array.reverse methods to complete this test
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-sort
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-reverse
  def test_create_a_new_array_which_is_the_old_array_sorted_descending
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = array # make the new array equal to array, but in descending order
    assert_equal([9, 6, 3, 3, 2, 1, 1, 1], new_array)    
  end 

  # Count the number of even numbers in the list
  def test_count_number_of_even_numbers
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    count_of_even_numbers = 0 # replace 0 with the logic to count the number of even numbers    
    assert_equal(2, count_of_even_numbers)    
  end 

  # Verify that the list contains a number
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F
  def test_that_the_list_contains_a_number
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    number = 9
    included = false # replace false with the logic to check if 'number' is in the 'array'  
    assert(included)    
  end 

  # Use the the array.map method to complete this test
  # Map creates a new array containing the values returned by the block
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-map
  def test_create_a_new_array_which_contains_each_original_value_doubled
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3]
    new_array = array.map { | number| number * 3 } # Fix this so that numbers are doubled not trippled
    assert_equal([2, 12, 6, 18, 2, 2, 4, 6], new_array)    
  end 

  # Use the the array.map method to complete this test
  # Map creates a new array containing the values returned by the block
  # If the original array contained "bob" the new array should contain "Bob"
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-map
  # Docs: http://ruby-doc.org/core-2.1.0/String.html#method-i-capitalize
  def test_create_a_new_array_which_contains_each_original_string_capatalized
    skip "Waiting to be implemented"
    array = ["mark", "sue", "bob"]
    # write the rest of this test before implementing the logic
  end 

  # Use the the array.count method to complete this test
  # Docs: http://ruby-doc.org/core-2.2.0/Array.html#method-i-count
  def test_count_the_number_of_1s_in_the_list
    skip "Waiting to be implemented"
    # write a test that uses the array.count method
    # to check that there are 3 '1s' in the list
    array = [1,6,3,9,1,1,2,3] 

  end 

  # Find the maximum number in the list  
  def test_find_the_largest_number_in_a_list
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3] 
    max = 0 # replace 0 with the logic to find the largest number
    assert_equal(9, max) 
  end 

  # Find the smallest number in the list  
  def test_find_the_smallest_number_in_a_list
    skip "Waiting to be implemented"
    # write this test and implement the logic
  end 

  # Count the number of vowels in the 'input' string
  def test_count_the_number_of_vowels_in_a_string
    skip "Waiting to be implemented"
    input = "Hello world"
    # write the rest of this test before implementing the logic
  end 

  # Test setting and getting values from a hash
  def test_setting_and_getting_values_from_a_hash
    hash = {} # or hash = Hash.new
    hash["abc"] = 1
    hash["xyz"] = 2
        
    assert_equal(1, hash["abc"]) 
    assert_equal(2, hash["xyz"]) 
  end 

  # Test get total number of evens and odds and store them in a hash
  def test_total_even_and_odd_stored_in_a_hash
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3] 
    hash = {}

    # perform logic to fill up the hash here

    # The hash has even or odd as the key and amount as the value
    # E.g. even - 2, odd - 6     
    assert_equal(2, hash["even"]) 
    assert_equal(6, hash["odd"]) 
  end 

  # Count the number of times each number appears in the list
  # The result should be stored in a hash
  # The hash has the number as the key and quantity as the value
  def test_count_the_number_of_time_each_number_appears_in_the_list
    skip "Waiting to be implemented"
    array = [1,6,3,9,1,1,2,3] 
    hash = {}

    # perform logic to fill up the hash here

    # The hash has the number as the key and quantity as the value
    # E.g. 1 appears 3 times, 6 appears once ... 
    expected_hash = { 1 => 3, 6 => 1, 3 => 2, 9 => 1, 2 => 1, 3 => 2 }
    assert_equal(expected_hash, hash) 
  end 

end
