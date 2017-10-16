Task
Complete the Difference class by writing the following:

A class constructor that takes an array of integers as a parameter and saves it to the elements instance variable.
A computeDifference method that finds the maximum absolute difference between any 2 numbers in N and stores it in the maximumDifference instance variable.

Sample Input
3
1 2 5

Sample Output
4

# My solution in Ruby; HackerRank does not support Ruby for this problem at the moment
class Difference
  attr_reader :maximumDifference

	def initialize(elements)
		@elements = elements
	end

	def computeDifference
		sorted_elements = @elements.sort
		@maximumDifference = sorted_elements[-1] - sorted_elements[0]
	end
end

amount_of_elements = gets
arr = gets.split(" ").map(&:to_i)

d = Difference.new(arr)
d.computeDifference

print d.maximumDifference

=begin

Below is my solution in Python 3, which is the only other programming language I could use for submission since it slightly resembles Ruby

=end

# Provided by HackerRank
class Difference:
  def __init__(self, a):
    self.__elements = a
  # My solution
  def computeDifference(self):
    self.maximumDifference = sorted(self.__elements)[-1] - sorted(self.__elements)[0]

# Provided by HackerRank
_ = input()
a = [int(e) for e in input().split(' ')]

d = Difference(a)
d.computeDifference()

print(d.maximumDifference)
