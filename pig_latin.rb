class PigLatin
  VOWELS = %w(a e i o u yt xr)
  BLENDS = %w(qu sc th ch qu sq)
  TRIBLENDS = %w(sch thr squ)

  def self.translate(word)

    word.split.map do |word|
      if (self.is_vowel?(word))
        word + "ay"
      else
        if self.has_tri_blend?(word)
           word[3..-1] + word[0..2] + "ay"  
       elsif self.has_blends?(word)
         word[2..-1] + word[0..1] + "ay" 
        else
         word[1..-1] + word[0] + "ay"
       end
      end
    end.join(" ")
  end

  def self.is_vowel?(word)
    VOWELS.include?(word[0]) || VOWELS.include?(word[0..1])
  end

  def self.has_blends?(word)
    BLENDS.include?(word[0..1])
  end

  def self.has_tri_blend?(word)
    TRIBLENDS.include?(word[0..2])
  end
end