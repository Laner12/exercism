class Hamming
  def self.compute(strand1, strand2)
    if strand1.length == strand2.length
      compare(strand1, strand2)
    else
      raise ArgumentError
    end
  end

  def self.compare(strand1, strand2)
    strand1.chars.zip(strand2.chars).select do |n1, n2|
      n1 != n2
    end.count
  end
end
