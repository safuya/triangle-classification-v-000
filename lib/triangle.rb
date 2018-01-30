require 'pry'

class Triangle
  attr_reader :kind

  def initialize(x, y, z)
    binding.pry
    if x <= 0 || y <= 0 || z <= 0
      raise Error
    elsif [x, y, z].uniq.length == 1
      @kind = :equilateral
    elsif [x, y, z].uniq.length == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "This is a triangle error."
  end
end

