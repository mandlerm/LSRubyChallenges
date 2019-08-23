class Trinary
  def initialize(number)
    @number = number.to_i
  end

  def to_decimal
    sum = 0
    raise ArgumentError, "Invalid Entry" if @number =~/[3-9]/
    return @number if @number.to_s.length == 1
    
    @number.digits.map.with_index do |n, index|
      n * (3 ** index)
    end.sum 
  end

end

# reverse the number using .digits
#sum = 0
# sum += .each_with_index |n| n * 3** index