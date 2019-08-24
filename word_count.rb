class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/[a-z0-9']+/)

    #(/\W+[']+["]/)

    
  end

  def word_count
    word_hash = Hash.new(0)
    @phrase.each do |word| 
      word = word[1..-2] if word.match?(/'.+'/)
      word_hash[word] += 1 if !word.empty?
    end

    word_hash
  end

end


# INPUT: STRING of 1 or more words - may or may not have non-letter characters

# DO: split the string.
#   clean up the string by extracting only letters (word characters)
  
#   iterate over array of cleaned up words
#   create a hash.  key: each word, value: number times that word appears

# OUTPUT: return the hash