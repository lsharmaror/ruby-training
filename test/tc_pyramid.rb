# File : tc_pyramid.rb
require_relative '../code/pyramid'
require 'test/unit'

class TestPyramid < Test::Unit::TestCase
  def test_left
    expected = "*\n**\n***\n****\n*****"
    assert_equal(expected, Pyramid.new(5).left_align)
  end

  def test_right
    expected = "    *\n   **\n  ***\n ****\n*****"
    assert_equal(expected, Pyramid.new(5).right_align)
  end


  def test_center
    expected = "    *\n   * *\n  * * *\n * * * *\n* * * * *"
    assert_equal(expected, Pyramid.new(5).center_align)
  end
end