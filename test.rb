first_name, last_name = ["John", "Smith"]
empty_hash = Hash.new

#assert_equal Array, empty_array.class
#assert_equal nil, empty_array.size

#if :peanut == array[0,1]
  #print(true)


#else
  #print(false)

  
#end

=begin
arr = [2,4,2]

a = arr[0]
b = arr[1]
c = arr[2]

max = arr.sort.pop


if (a > 0 and b > 0 and c > 0) and arr.sort.pop < (arr.sort[0] + arr.sort[1])


  if a == b and b == c 
    result = :equilateral

  elsif (a == b and b != c) or (b == c and a != b) or (a == c and b != c)
    result =  :isosceles
      
  else
    result = :scalene
  end
    
else
    result =  "Sides lengths do not create triangle"
     
end
print(max)
print(arr[0] + arr[1])
print(result)
=end

dice = [1,1,3,1,5]

#countOne = dice.find_all {|item| item == 1}.size
#countTwo = dice.find_all {|item| item == 2}.size
#countThree = dice.find_all {|item| item == 3}.size
#countFour = dice.find_all {|item| item == 4}.size
#countFive = dice.find_all {|item| item == 5}.size
#countSix = dice.find_all {|item| item == 6}.size

points = 0
#if countOne >=3
  #points += 1000
#end

# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points

dice = [1,5,1,2,4]
points = 0
for a in 1..6 do
  count = dice.find_all {|item| item == a}.size
  if a == 1
    if count >=3
      points += (1000 + 100*(count-3))
    elsif count < 3 and count > 0 
      points += (100*count)
    end
  elsif a == 5
    if count >= 3
      points += (a*count)
    elsif count < 3 and count > 0 
      points += (50*count)
    end
  else
    if count >= 3
      points += (a*100)
    end
  end
end

class Dog
end
fido = Dog.new
print(fido.class)





    #assert_equal __, 1.is_a?(Object)
    #assert_equal __, 1.5.is_a?(Object)
    #assert_equal __, "string".is_a?(Object)
    #assert_equal __, nil.is_a?(Object)
    #assert_equal __, Object.is_a?(Object)
