require "pry"
class Complement

  def self.collection
     { "C" => "G",
       "G" => "C",
       "T" => "A",
       "A" => "U"}
  end

  def self.of_dna(letter)
    letters = letter.split("")
    l = letters.map do |letter|
      final_letter = letter.upcase
      thing = collection[final_letter]
    end
    if l.include?(nil)
      l = [nil]
    else
      l
    end.join
  end

end
