class Squares
  attr_reader :number_input, :range

  def initialize(number_input = 0)
    @number_input = number_input
    @range = (1..100)
  end

  def square_of_sum
    sum = sum_of_input.reduce(:+)
    sum * sum unless sum.nil?
  end

  def sum_of_input
    range.take(number_input)
  end

  def sum_of_squares
    sum_of_input.map { |number| number * number}.reduce(:+)
  end

  def difference
    if square_of_sum.nil? || sum_of_squares.nil?
      0
    else
      square_of_sum - sum_of_squares
    end
  end
end
