require "pry"
class Raindrops

  def self.convert(number)
    collection = []
    collection << "Pling" if number % 3 == 0
    collection << "Plang" if number % 5 == 0
    collection << "Plong" if number % 7 == 0
    collection.empty? ? number.to_s : collection.join
  end
end
