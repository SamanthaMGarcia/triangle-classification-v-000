class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if a > 0 == b > 0 && b > 0 == c > 0 && c > 0 == a > 0
      :equilateral
       elsif a > 0 == b > 0 || b > 0 == c > 0 || a > 0 == c > 0
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