require_relative 'item'

class Order 
 attr_accessor :items

 def initialize(item_list)  
  @items = item_list.map { |item| Item.new(item) }
 end

 def bill 	 
  bill = @items.map do |item|
    "#{item.quantity} #{item.display_name}: #{item.total_price}"
  end
  bill + [total_tax, total]
 end

 def total_tax  
  "Sales Taxes : #{ @items.inject(0) { |sum, item| sum += item.tax } }" 
 end

 def total  
  total = @items.inject(0) { |sum, item| sum += item.total_price }
  "Total : #{total.round(2)}" 
 end
end
