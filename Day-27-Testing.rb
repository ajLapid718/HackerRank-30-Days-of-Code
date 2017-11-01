Task

# Link: https://www.hackerrank.com/challenges/30-testing/problem

Create and print a test case for the problem above that meet the following criteria:
- A minimum of five test cases
- A number n between 3 and 200, which represents the amount of students in the class
- A number k between 1 and n, which represents the cutoff point/threshold attendance of cancelling class
- The value of n must be distinct across all the test cases
- Array A must have at least 1 zero, 1 positive integer, and 1 negative integer

Output Format

Print 11 lines of output that can be read by the Professor challenge as valid input. Your test case must result in the following output when fed as input to the Professor solution found in the challenge:

YES
NO
YES
NO
YES

# My solution
puts '5' # Amount of Test Cases

puts '3 3' # YES
puts '-1 0 1'

puts '3 2' # NO
puts '-1 0 1'

puts '8 6' # YES
puts [*-1..3].join(' ')

puts '20 5' # NO
puts [*-1..6].join(' ')

puts '4 4' # YES
puts '-100 0 0 77'
