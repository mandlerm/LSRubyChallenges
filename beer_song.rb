class BeerSong
  def initialize()

  end

  def verse(verse_number)
    response = "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\nTake one down and pass it around, #{next_num(verse_number)}"

    response
  end

  def next_num(verse_number)
    case (verse_number - 1)
    when (2..99)
      "#{verse_number - 1} bottles of beer on the wall.\n"
    when 1
      "#{1} bottle of beer on the wall.\n"
    else
      "no more bottles of beer on the wall.\n"
    end
  end
end
