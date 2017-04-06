class Squares
  attr_reader :number, :range

  def initialize(number)
    @number = number
    @range = (0..number)
  end

  def square_of_sum
    range.reduce(:+)**2
  end

  def sum_of_squares
    range.map { |number| number * number}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
