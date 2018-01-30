require 'pry'

class Triangle
  extend TriangleError
  attr_reader :kind

  def initialize(x, y, z)
    if x <= 0 || y <= 0 || z <= 0
      raise TriangleError
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
