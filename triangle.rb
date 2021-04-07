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

  arr = [a,b,c]
  
  
  if (a > 0 and b > 0 and c > 0) and arr.sort.pop < (arr.sort[0] + arr.sort[1])


    if a == b and b == c 
      return :equilateral

    elsif (a == b and b != c) or (b == c and a != b) or (a == c and b != c)
      return :isosceles
      
    else
      return :scalene
    end
    
  else
      raise TriangleError, "Sides lengths do not create triangle"
     
  end
  
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
