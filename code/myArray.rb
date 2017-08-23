class MyArray
  def initialize(arr)
    @my = arr
  end

  def frequency
    a = Hash.new(0)
    @my.map { |i| a[i] += 1 }
    a
  end

  def twice
    @my.map { |a| a.is_a?(Numeric) ? a * 2 : a }
  end

  def join(a)
    @ar = a
    @my.concat(a)
  end
end
