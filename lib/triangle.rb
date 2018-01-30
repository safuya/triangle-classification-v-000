require 'pry'

class Triangle
  attr_reader :kind

  def initialize(x, y, z)
    if x <= 0 || y <= 0 || z <= 0
      raise TriangleError
    elsif array_inequality_broken?([x, y, z])
      raise TriangleError
    elsif [x, y, z].uniq.length == 1
      @kind = :equilateral
    elsif [x, y, z].uniq.length == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def has_no_size?

  def inequality_broken?(array)
    array.max >= array.min + array.sort[-2]
  end

  class TriangleError < StandardError
  end

end
