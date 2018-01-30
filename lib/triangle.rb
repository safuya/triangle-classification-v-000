require_relative 'pry'

class Triangle
  attr_reader :kind

  def initialize(x, y, z)
    @kind = type(x, y, z)
  end

  def type(x, y, z)
    if x <= 0 || y <= 0 || z <= 0
      begin
        raise TriangleError
      rescue TriangleError
        message "Invalid triangle"
        nil
      end
    elsif [x, y, z].uniq.length == 1
      @kind = :equilateral
    elsif [x, y, z].uniq.length == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
  end

end
