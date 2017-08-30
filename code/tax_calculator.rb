module TaxCalculator
	
    # calculate sales tax to the nearest 0.05
	def tax
   tax = 0
   if exempt? && !import?
    tax = 0
   elsif !exempt? && import?
    tax = 0.15
   elsif exempt? && import?
    tax = 0.05
   else
    tax = 0.1
   end
   sales_tax = price * tax
   x = ( sales_tax * 20).round / 2.0
   sales_tax = ((( sales_tax * 10 ).to_i) == x ? ( sales_tax * 10 ).to_i / 10.00 : x / 10.00 )
  end

  # calculate total price of item after applying tax
  def total_price
     total_price = ( (price + tax) * quantity ).round(2)
	end
end