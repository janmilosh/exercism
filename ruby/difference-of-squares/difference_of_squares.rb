class Squares
  def initialize(num)
    @first_n_natural_numbers = (1..num)
  end

  def square_of_sum
    @first_n_natural_numbers.reduce { |sum, num| sum + num }**2
  end

  def sum_of_squares
    @first_n_natural_numbers.reduce { |sum, num| sum + num**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
