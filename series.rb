class Series
    def initialize(num)
        @numString = num
    end

    def slices(size_of_groups)
        newArray = []

        raise ArgumentError if size_of_groups > @numString.size
        splitArray = @numString.split(//).map(&:to_i)
        splitArray.each_with_index do |_, idx|
            break if idx + size_of_groups > @numString.size
            newArray << splitArray.slice(idx, size_of_groups)
        end
        newArray
    end
end