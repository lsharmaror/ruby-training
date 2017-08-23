class MyArray

 def initialize(arr)
  @my = arr
 end

 def frequency
  a = Hash.new(0)
  @my.map{ |i| a[i] += 1}
 end

 def twice
  for i in 0..@my.length
   if @my(i).is_a?(Numeric)
    @my(i).map{|a| 2 * a}
   end
  end
 end

 def join(a)
  @ar = a
  @my.push(a)
 end
end
