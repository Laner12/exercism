class Hamming
  def self.compute(primary_dna, secondary_dna)
    if primary_dna.length == secondary_dna.length
      compare_strands(primary_dna, secondary_dna)
    else
      raise ArgumentError
    end
  end

  def self.compare_strands(primary_dna, secondary_dna)
    hamming_distance = 0
    primary_dna.chars.zip(secondary_dna.chars).each do |index|
      if index[0] != index[1]
        hamming_distance += 1
      end
    end
    hamming_distance
  end
end
