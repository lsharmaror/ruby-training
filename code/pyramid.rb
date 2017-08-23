class Pyramid
  def initialize(n)
    # initialize number of rows
    @rows = n
  end

  # return left pyramid with n rows
  def left_align
    pattern = ''
    (1..@rows).each do |row|
      pattern += (('*' * row) + "\n")
    end
    pattern.rstrip
  end

  # return right pyramid with n rows
  def right_align
    pattern = ''
    (1..@rows).each do |row|
      pattern += (('*' * row).rjust(@rows) + "\n")
    end
    pattern.rstrip
  end
  
  # return center pyramid with n rows
  def center_align
    pattern = ''
    (1..@rows).each do |row|
      pattern += (('* ' * row).center(@rows * 2).rstrip + "\n")
    end
    pattern.rstrip
  end
end
