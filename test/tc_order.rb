require_relative "../code/order"
require "test/unit"

class TestOrder < Test::Unit::TestCase

 def test_bill
   expected = ["1 book: 12.49", "1 Imported box of chocolates: 10.5", "1 music CD: 16.49", "Sales Taxes : 2.0", "Total : 39.48"]
   assert_equal(expected, Order.new(["1 book at 12.49", "1 imported box of chocolates at 10.00", "1 music CD at 14.99"]).bill)
 end

end
