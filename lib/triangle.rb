class Triangle
  attr_accessor :kind
  def initialize(length1, length2, length3)
    @lengths = []
      @length1 = length1
      @length2 = length2
      @length3 = length3

      @lengths << length1
      @lengths << length2
      @lengths << length3
  end
  
  def kind
     if @length1 > 0 && @length2 > 0 && @length3 > 0 && @length1 + @length2 > @length3 && @length2 + @length3 > @length1 && @length1 + @length3 > @length2
      if @lengths.uniq.length == 1
        @kind = :equilateral
      elsif @lengths.uniq.length == 2
        @kind = :isosceles
      elsif @lengths.uniq.length == 3
        @kind = :scalene
      end
    else 
      raise TriangleError
    end
  end
    class TriangleError < StandardError
      def message
        "this is not a triangle!"
      end
  end
end
