class PhoneNumber
  DEFAULT = '0000000000'

  def initialize(number_string)
    @phone_number_string = number_string
  end

  def number
    number = @phone_number_string.scan(/\d+/).join
    return DEFAULT if number.size < 10 ||
                      number.size > 11 ||
                      has_letters?

    if number.size == 11
      number = number[0] == '1' ? number[1..-1] : DEFAULT
    end

    number
  end

  def area_code
    number.slice(0..2)
  end

  def has_letters?
    @phone_number_string.scan(/[a-zA-Z]/).size > 0 ? true : false
  end

  def to_s
    unformatted_number = number
    "(#{area_code}) #{unformatted_number[3..5]}-#{unformatted_number[6..9]}"
  end
end
