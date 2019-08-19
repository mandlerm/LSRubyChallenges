class Sieve
    def initialize(limit)
        @limit = limit
    end

    def primes
        full_array = *(2..@limit)
        
        full_array.each do |num|
            count = 2
            while count * num <= @limit 
                if full_array.index(num*count)
                    idx = full_array.index(num*count) 
                    full_array.delete_at(idx)
                end
                count += 1
            end
        end
        full_array
    end
end





# create an array of numbers 2..limit
# start at 2
# add 2 to prime array
# start at 1, while num * 2 <= limit
    # remove each number from array
# iterate and repeat