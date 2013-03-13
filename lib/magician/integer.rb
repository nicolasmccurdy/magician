# Magician's extensions to the Integer class.
class Integer

  # Gets all of the factors of the current integer. If the current integer is
  # negative, it will be treated as if it were positive (so the results will
  # never contain negative integers). Returns nil if the integer is 0.
  #
  # @return [Array] an array of all of the factors of the current integer (in
  # order, including 1 and the integer itself)
  def factors
    return nil if self == 0
    return [1] if abs == 1
    factors = [1]
    2.upto((abs/2).to_i) do |i|
      if abs%i == 0
        factors << i
      end
    end
    factors << abs
  end

  # Gets the factorial of the integer, which is equivalent to the product of all
  # integers from 1 to the integer (inclusive). When the integer is 0, it is
  # equivalent to 1.
  #
  # @return [Integer] factorial of the integer
  def factorial
    return 1 if zero?
    1.upto(self).reduce :*
  end

  # Returns true if the integer is prime (that is, if it is not divisible by any
  # integer between 1 and the integer itself, exclusive). 0 and 1 are not prime
  # numbers, though 2 is prime. Negative numbers are never considered prime in
  # this implementation.
  #
  # @return [Boolean] true if the integer is prime
  def prime?
    return false if self <= 1
    (2..Math.sqrt(self)).each do |i|
      return false if self % i == 0
    end
    true
  end

  # Returns true if the integer is pandigital. That is, the integer contains
  # each of the digits from 1 to 9 exactly once.
  #
  # @return [Boolean] true if the integer is pandigital
  def pandigital?
    to_s.split(//).sort.join == '123456789'
  end

end
