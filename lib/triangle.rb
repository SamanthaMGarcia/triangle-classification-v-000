class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    # valid_triangle
    if a == b && b == c && c == a
      :equilateral
       elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
      
  class TriangleError < StandardError
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
