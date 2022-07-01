require 'pry'

class Triangle
attr_accessor :len1, :len2, :len3

  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    if self.len1 == 0 || self.len2 == 0 || self.len3 == 0 || self.inequality? == true
      raise TriangleError
    elsif self.len1 == self.len2 && self.len2 == self.len3
      :equilateral
    elsif self.len1 == self.len2 || self.len1 == self.len3 || self.len2 == self.len3 
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end

  private 

  def inequality? 
    if self.len1 + self.len2 <= self.len3 || self.len2 + self.len3 <= self.len1 || self.len1 + self.len3 <= self.len2
      true
    else
      false
    end
  end

end
