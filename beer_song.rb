class BeerSong
  # rubocop:disable Metrics/LineLength

  def verse(verse_number)
    case verse_number
    when (3..99)
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\nTake one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(starting_verse, ending_verse)
    (starting_verse..ending_verse).map { |number| verse(number) }.join
    # full_verse = []

    # while starting_verse >= ending_verse
    #   full_verse << "#{verse(starting_verse)}\n"

    #   starting_verse -= 1
    # end

    # # puts full_verse.join("")
    # full_verse.join
    # # (starting_verse..ending_verse).to_a.map { |v| return_current_verse(v)}
  end

  def lyrics
    verses(99, 0)
  end
end
