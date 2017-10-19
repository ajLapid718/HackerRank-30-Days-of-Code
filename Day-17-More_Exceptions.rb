# Task

# Write a Calculator class with a single method: int power(int,int).
# The power method takes two integers, n and p, as parameters and returns the integer result of n^p.
# If either n or p is negative, then the method must throw an exception with the message: n and p should be non-negative.

# Sample Input:
# 4
# 3 5
# 2 4
# -1 -2
# -1 3

# Sample Output:
# 243
# 16
# n and p should be non-negative
# n and p should be non-negative

# Provided by HackerRank
class RangeError < StandardError
end

# My solution
class Calculator
  def power(n,p)
    raise RangeError.new("n and p should be non-negative") if [n,p].any? { |num| num.negative? }
    n ** p
  end
end

# Provided by HackerRank
myCalculator = Calculator.new()

t = gets.to_i

for i in 1..t
  n, p = gets.split.map(&:to_i)
  begin
    ans = myCalculator.power(n, p)
    puts ans.to_i
  rescue RangeError => e
    puts e.message
  end
end
