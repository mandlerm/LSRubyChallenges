class Octal
    def initialize(input)
        @input = input
    end

    def to_decimal
        total = 0
        if (@input.chars.all? {|c| c == c.to_i.to_s})
            length = @input.split(//).size
            count = 0
            while count < length
                if @input[(count*- 1) - 1].to_i >= 8
                    return 0
                else
                total += @input[(count*- 1) - 1].to_i * (8**count)
                count += 1
                end
            end
        end
        total
    end

end