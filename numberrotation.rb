# INPUT - integer

# iterate through each digit of the number (check if digit or '_') keeping track if i

# skip if ary[i] == '_'

# safe index[1] element into variable
# unshift array
# push index[1] to array

require 'pry'

def max_rotation(integer)
  stringify = integer.to_s.chars
  transformed_integer = []
  
  puts stringify
 0...stringify.size do 
  binding.pry
    transformed_integer = stringify
    transformed_integer.push(digit).shift
    p transformed_integer
    
  end
  # transformed_integer.join.to_i

end 


# max_rotation(735291) == 321579
# max_rotation(3) == 3
max_rotation(35) == 53
# max_rotation(105) == 15

