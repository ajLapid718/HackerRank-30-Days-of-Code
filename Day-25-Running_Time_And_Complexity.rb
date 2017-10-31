=begin

Task
A prime is a natural number greater than 1 that has no positive divisors other than 1 and itself.
Given a number, n, determine and print whether it's Prime or Not.

Sample Input

3 (Amount of Test Cases)
12
5
7

Sample Output

Not prime
Prime
Prime

=end

# My solution

amount_of_test_cases = gets.to_i
arr = []

amount_of_test_cases.times do |placeholder|
  arr.push(gets.to_i)
end

def is_prime?(num)
  return false if num == 1
  (2..Math.sqrt(num)).each do |factor|
    return false if num % factor == 0
  end
  return true
end

arr.each do |num|
  if is_prime?(num)
    puts "Prime"
  else
    puts "Not prime"
  end
end
