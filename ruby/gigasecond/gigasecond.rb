require 'pry'
class Gigasecond

  def self.from(time)
    gigasecond_time = Time.at(time.to_i + 1000000000)
    gigasecond_time.getgm
  end
end
