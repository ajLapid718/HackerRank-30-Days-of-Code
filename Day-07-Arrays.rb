# Task
# Given an array, A, of N integers, print A's elements in reverse order as a single line of space-separated numbers.

# Sample Input
# 4
# 1 4 3 2

# Sample Output
# 2 3 4 1

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

# One approach:
i = -1
my_arr = []

while (i) >= (n*-1)
    my_arr.push(arr[i])
    i += -1
end

print my_arr.join(" ")

# Another approach invoking Ruby's built-in #each_index method:
my_arr = []

arr.each_index do |idx|
  my_arr << arr[(idx+1) * (-1)]
end

print my_arr.join(" ")

# Another approach using an until loop as well as unshift:
my_arr = []
i = 0

until my_arr.length == n
    my_arr.unshift(arr[i])
    i += 1
end

print my_arr.join(" ")
