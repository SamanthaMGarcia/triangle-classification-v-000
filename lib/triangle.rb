class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if a > 0 && b > 0 && c > 0
    elsif a == b && b == c && c == a
      :equilateral
       elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

    
  class TriangleError < StandardError
    def message 
      "Your triangle is invalid!"
    end
  end
end