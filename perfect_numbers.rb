# INPUT: integer

# DO

# 1. computer factors
# 2. sum factors
# 3. compare sum to number
# case statment

# OUTPUT: 'deficient', 'perfect', or 'abundant'


class PerfectNumber
  

  def self.classify(number)
    raise RuntimeError, 'invalid entry' if number < 1

    total = 0
    (1...number).each do |num|
      total += num if number % num == 0
    end

    case 
    when total == number
       "perfect"
    when total > number
       "abundant"
    else
       "deficient"
    end
  end
end