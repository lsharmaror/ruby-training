# File: tc_class_Array.rb

require_relative "../code/myArray"
require "test/unit"

class TestArray < Test::Unit::TestCase
  def test_frequency
    expected = {1=>2, "3"=>1, 2=>1}
    assert_equal(expected, MyArray.new([1, "3", 1, 2]).frequency)
  end

  def test_twice
    expected = [2, "3", 2, 4]
    assert_equal(expected, MyArray.new([1, "3", 1, 2]).twice)
  end

  def test_join
    expected = [1, "3", 1, 2, 4, 5, 6]
    assert_equal(expected, MyArray.new([1, "3", 1, 2]).join([4, 5, 6]))
  end
end
