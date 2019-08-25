# hash of amino_acid --> codon

class Translation

  AMINOS = {
    :Methionine => ['AUG'],
    :Phenylalanine => ['UUU', 'UUC'],
    :Leucine =>['UUA', 'UUG'],
    :Serine =>['UCU', 'UCC', 'UCA', 'UCG'],
    :Tyrosine =>['UAU', 'UAC' ],
    :Cysteine =>['UGU', 'UGC'],
    :Tryptophan =>['UGG'],
    :STOP =>['UAA', 'UAG', 'UGA']
  }

  def self.of_codon(strand)
    return "STOP" if AMINOS[:STOP].include?(strand)
    list = AMINOS.keys.select do |key|
      AMINOS[key].find do |val|
        val == strand
      end

    end
    list.join(' ')
  end

  def self.of_rna(strand)
    rna = []
    strand.scan(/.../).each do |each_element|

      raise InvalidCodonError, "invalid entry" if !AMINOS.keys.any? {|key| AMINOS[key].include?(each_element)}
      break if self.of_codon(each_element) == "STOP"
      rna << self.of_codon(each_element)
    end
    rna
  end
end


class InvalidCodonError < StandardError
end

# the KEY of the VALUE of each codon

