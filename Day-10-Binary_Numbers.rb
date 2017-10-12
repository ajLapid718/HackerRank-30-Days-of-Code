# Task
# Given a base-10 integer, n, convert it to binary (base-2). Then find and print the base-10 integer denoting the maximum number of consecutive 1's in n's binary representation.

# Explanation

# Sample Case 1:
# The binary representation of 5 is 101, so the maximum number of consecutive 1's is 1.

# Sample Case 2:
# The binary representation of 13 is 1101, so the maximum number of consecutive 1's is 2.

# My solution
# I am pretty satisfied with incrementing a counter variable but I need to learn more about the nature of binary numbers so that I can solve the problem without calling #to_s(2)

n = gets.strip.to_i

most_so_far = 0
running_tally = 0

n.to_s(2).each_char do |char|
  if char == "1"
    running_tally += 1
    most_so_far = running_tally if running_tally > most_so_far
  else
    running_tally = 0
  end
end

print most_so_far

# A less Ruby-esque, more general way of solving the problem (particularly converting bases)

n = gets.strip.to_i

arr = []

until n == 0
  remainder = (n % 2)
  arr.unshift(remainder)
  n /= 2
end

running_tally = 0
most_so_far = 0

arr.join.chars.each do |char|
  if char == "1"
    running_tally += 1
    most_so_far = running_tally if running_tally > most_so_far
  else
    running_tally = 0
  end
end

print most_so_far
