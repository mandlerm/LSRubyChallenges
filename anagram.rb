# INPUT: word, list of possible anagrams

# DO: select correct sublist that contaist anagram words

# OUTPUT: return selected list

class Anagram
  def initialize(word)
    @starting_word = word 
  end

  # def match(list_of_words)
  #     sorted_word = @starting_word.downcase.chars.sort

  #     matches = list_of_words.select do |word|
  #       next unless @starting_word.size == word.size && @starting_word.downcase != word.downcase

  #       word = word.downcase.chars.sort
        
  #       (0..word.length-1).all? { |counter| sorted_word [counter] == word[counter] }
  #     end
  #     matches
  # end


#without sort
  def match(list_of_words)
    word_hash = hashify(@starting_word)
    
    
    list_of_words.select do |word|
      hashed_word = hashify(word)

      if word_hash.keys.sort == hashed_word.keys.sort && word.downcase != @starting_word.downcase
         word_hash.keys.all? { |k| word_hash[k] == hashed_word[k]}
      else
        false
      end
    end
    # create a hash for the original word - key = letter, value = # occurences
    # for each work in list, create a hash
      # word.keys == list.keys? if yes
      # iterate through with select. all? keys = word[key] = list[key]
  end

  def hashify(word)
    hashed = Hash.new(0)
    word.downcase.chars.each do |char|
      hashed[char] += 1
    end
    hashed
  end
end       