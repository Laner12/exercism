
class Hamming
  attr_accessor :lunch

  def initialize
    @lunch = {}
  end

  def compute_instance
    :InstanceBaby
  end

  def self.compute_class
    :AllClass
  end

  def self.bomb
    ["class methods are bomb"]
  end

  def self.puts
    "Ruby puts sux" # print this to the console with newline
    nil
  end
end
