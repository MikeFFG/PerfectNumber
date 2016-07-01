# Calculates perfect numbers
class PerfectNumber
  def self.sum_of_factors(number)
    sum = 1
    (2..number / 2).to_a.each do |num|
      sum += num if number % num == 0
    end
    sum
  end

  def self.classify(number)
    raise RuntimeError if number <= 0

    factors = sum_of_factors(number)
    case
    when factors < number
      'deficient'
    when factors == number
      'perfect'
    when factors > number
      'abundant'
    end
  end
end
