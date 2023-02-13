class Triangle
  # write code here#
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  # The #kind method should raise a custom error, TriangleError if the triangle is invalid.
  def kind
    if( @a <= 0 ||  @b <= 0 || @c <= 0) ||( @a + @b <= @c  || @a + @c <= @b ||  @b + @c <= @a)
      raise TriangleError   
    else 
        if @a == @b && @a==@c 
          :equilateral
        elsif @a==@b || @a==@c || @b==@c
          :isosceles
        elsif @a!=@b && @a!= @c && @b!= @c
          :scalene
        end
    end
  end
  

  class TriangleError < StandardError
    def message
      "The triangle is invalid"
    end
  end
end

triangle1 = Triangle.new(2,2,2)
triangle2 = Triangle.new(1, 1, 3)
