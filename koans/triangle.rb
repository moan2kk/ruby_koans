# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  def eql(x, y)
    return (x-y).abs<=1e-5
  end
  
  #sides of length zero or less are unphysical
  raise TriangleError, "at least one of the sides is less than or equal to zero" if a<=0 || b<=0 || c<=0
  #tests if provided lengths can form a closed triangle 
  raise TriangleError, "impossible to form triangle with input lengths" if a+b<=c || b+c<=a || a+c<=b 
  if eql(a, b) && eql(b, c)
    :equilateral
  elsif eql(a, b) || eql(b, c) || eql(a, c)
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end