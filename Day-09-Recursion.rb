# Task
# Write a factorial function that takes a positive integer, N, as a parameter and prints the result of N! (N factorial).

# Input Format
# A single integer, N (the argument to pass to factorial)

# Output Format
# Print a single integer denoting N!

# Sample Input
# 3
# Sample Output
# 6

def factorial(n)
  return 1 if n <= 0
  n * factorial(n-1)
end

n = gets.strip.to_i
result = factorial(n)
puts result
