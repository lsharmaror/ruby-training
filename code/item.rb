require_relative './tax_calculator'

class Item
  
  include TaxCalculator

  EXEMPT_LIST = {food: ['chocolate'],
                 medical: ['pills'],
                 books: ['book']
  }   
  attr_accessor :quantity, :name, :price


  # initialize a string with item details
  # item is an string ex: "1 book at 12.46"
  # extact qty, name and price from string and assign these 
  # values to the attributes of item

  def initialize(entry)
    item_detail = entry.split
    @price = item_detail.last.to_f
    @quantity = item_detail.first.to_i
    @name = item_detail[1...(item_detail.length - 2)].join " "
  end

  # return true if imported else return false 
  def import?
   name.downcase.include?("imported")
  end


  # return true if item is exempted from tax else return false
  def exempt?
   EXEMPT_LIST.values.flatten.any? { |exempt| name.include?(exempt) }
  end
    

  # remove extra values from the name and format it to display
  # in expected way as given in the problem
  def display_name
    display_name = name.gsub 'imported ', ''
    import? ? "Imported #{display_name}"  : display_name
  end
end

