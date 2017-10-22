Task

Given an array, a, of size n distinct elements, sort the array in ascending order using the Bubble Sort algorithm.
Once sorted, print the following 3 lines:

"Array is sorted in numSwaps swaps." || where numSwaps is the number of swaps that took place.
"First Element: firstElement" || where firstElement is the first element in the sorted array.
"Last Element: lastElement" || where lastElement is the last element in the sorted array.

Sample Input

3
1 2 3

Sample Output 0

Array is sorted in 0 swaps.
First Element: 1
Last Element: 3

# Provided by HackerRank
n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

# My solution
counter = 0
loop do
  sorted = true

  a[0...-1].each_index do |i|
    if a[i] > a[i+1]
      sorted = false
      counter += 1
      a[i], a[i+1] = a[i+1], a[i]
    end
  end

  break if sorted == true
end

puts "Array is sorted in #{counter} swaps."
puts "First Element: #{a.first}"
puts "Last Element: #{a.last}"
