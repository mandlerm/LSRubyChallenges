class SumOfMultiples

  def initialize(*args)
    @args = args.empty? ? [3,5] :  args
  end

  def to(limit)
    sum = 0
    (1..limit-1).each do |num|
      sum += num if @args.any? {|n| num % n == 0  }
    end
    sum
  end

  def self.to(limit)
    new.to(limit)
  end

end

