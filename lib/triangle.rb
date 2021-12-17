class Triangle
  attr_accessor :a
  attr_accessor :b
  attr_accessor :c
  

  def initialize(a,b,c)
    if a <= 0 || b<=0 || c<= 0 || c>= a+b || b >= c+a || a >= b+c
      raise TriangleError
    else
      @a = a
      @b = b
      @c = c
    end
  end

  def kind
    if a==b && b==c
      return :equilateral
    elsif a==b || b==c || c==a
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end
