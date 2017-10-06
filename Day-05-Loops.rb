# Task
# Given an integer, n, print its first 10 multiples. Each multiple n x i (where 1 <= i <= 10) should be printed on a new line in the form: n x i = result.

# Sample Input
# 2

# Sample Output
# 2 x 1 = 2
# 2 x 2 = 4
# 2 x 3 = 6
# 2 x 4 = 8
# 2 x 5 = 10
# 2 x 6 = 12
# 2 x 7 = 14
# 2 x 8 = 16
# 2 x 9 = 18
# 2 x 10 = 20

#!/bin/ruby
# n = gets.strip.to_i

counter = 1

while counter <= 10
    puts "#{n}" + " x " + "#{counter}" + " = " + "#{n*counter}"
    counter += 1
end
