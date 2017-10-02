# Task
# Complete the code in the editor below. The variables , , and  are already declared and initialized for you. You must:
#
# Declare  variables: one of type int, one of type double, and one of type String.
# Read  lines of input from stdin (according to the sequence given in the Input Format section below) and initialize your  variables.
# Use the  operator to perform the following operations: 
# Print the sum of  plus your int variable on a new line.
# Print the sum of  plus your double variable to a scale of one decimal place on a new line.
# Concatenate  with the string you read as input and print the result on a new line.

# Explanation
#
# When we sum the integers  and , we get the integer .
# When we sum the floating-point numbers  and , we get .
# When we concatenate HackerRank with is the best place to learn and practice coding!, we get HackerRank is the best place to learn and practice coding!.
#
# You will not pass this challenge if you attempt to assign the Sample Case values to your variables instead of following the instructions above and reading input from stdin.

i = 4
d = 4.0
s = 'HackerRank '

# Declare second integer, double, and String variables.
my_num = gets.to_i
my_float = gets.to_f
my_str = gets.chomp

# Read and save an integer, double, and String to your variables.

# Print the sum of both integer variables on a new line.
puts i + my_num

# Print the sum of the double variables on a new line.
puts d + my_float

# Concatenate and print the String variables on a new line
# The 's' variable above should be printed first.
puts s + my_str
