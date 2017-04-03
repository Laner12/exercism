class Hamming
  def self.compute(primary_dna, secondary_dna)
    if primary_dna.length == secondary_dna.length
      compare_strands(primary_dna, secondary_dna)
    else
      raise ArgumentError
    end
  end

  def self.compare_strands(primary_dna, secondary_dna)
    primary_dna.chars.zip(secondary_dna.chars).select do |index|
      index[0] != index[1]
    end.count
  end
end
