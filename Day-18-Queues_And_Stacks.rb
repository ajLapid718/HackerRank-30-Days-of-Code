Task
A palindrome is a word, phrase, number, or other sequence of characters which reads the same backwards and forwards.
Can you determine if a given string, s, is a palindrome?

To solve this challenge, we must first take each character in s, enqueue it in a queue, and also push that same character onto a stack.
Once that's done, we must dequeue the first character from the queue and pop the top character off the stack, then compare the two characters to see if they are the same; as long as the characters match, we continue dequeueing, popping, and comparing each character until our containers are empty (a non-match means s isn't a palindrome).

Sample Input:
racecar

Sample Output:
The word, racecar, is a palindrome.

# My solution
class Solution
  attr_reader :stack, :queue

  def initialize
      @stack = []
      @queue = []
  end

  def push_character(element)
    stack.push(element)
  end

  def enqueue_character(element)
    queue.unshift(element)
  end

  def pop_character
    stack.pop
  end

  def dequeue_character
    queue.pop
  end
end

# Provided by HackerRank

# create Solution class object
solution = Solution.new

# read the input
input = gets

input.split('').each do |c|
    # push the character to stack
  solution.push_character c

    # enqueue the character to queue
  solution.enqueue_character c
end

# check if input string is palindrome or not
is_palindrome = true

(input.length / 2).times do
    if solution.pop_character != solution.dequeue_character
      is_palindrome = false
    break
  end
end

# print if string is palindrome or not
if is_palindrome
  puts "The word, #{input}, is a palindrome."
else
  puts "The word, #{input}, is not a palindrome."
end
