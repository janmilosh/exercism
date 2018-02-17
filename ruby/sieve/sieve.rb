class Sieve
  def initialize(limit)
    @primes = [*2..limit]
    @index = 0
  end

  def primes
    return @primes if @primes.empty? || next_prime.nil?
    remove_multiples_of(next_prime)
    increment_next_prime_index
    primes
  end

  def next_prime
    @primes[@index]
  end

  def increment_next_prime_index
    @index += 1
  end

  def remove_multiples_of(num)
    @primes.reject! { |n| n > num && (n % num).zero? }
  end
end

module BookKeeping
  VERSION = 1
end
