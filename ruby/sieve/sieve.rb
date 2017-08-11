require 'prime'
class Sieve

  def initialize(input)
    @input = input
  end

  def primes
    range = (1..@input).to_a
    if range
      range.select do |num|
        Prime.prime?(num)
      end
    else
      []
    end
  end
end
