Task

Given set S = {1,2,3...,N}.
Find two integers, A and B (where A < B), from set S such that the value of A&B is the maximum possible and also less than a given integer, K.
In this case, & represents the bitwise AND operator.

Sample Input

3
5 2
8 5
2 2

Sample Output

1
4
0

# The Brute Force Way That Passes the Test Cases But Times Out
puts [*1..n].combination(2).to_a.map { |arr| arr.reduce(:&) }.select { |num| num < k }.max

# An Acceptable Solution (Need to Review This)
gets.to_i.times do
  n, k = gets.strip.split(' ').map(&:to_i)
  puts (k-1|k) <= n ? k-1 : k-2
end

=begin

Let's walk through a scenario where the set is {1,2,3,4} and k is set to a value of 3
That means we'll need to set k - 1 to a value of 2.
That means that (2|2) will return a value of 2.
2 is less than or equal to our n of 4.
Therefore, our output is k-1 aka 2.
That's as far as stepping through the function goes when we have an odd-valued variable k.

Let's walk through a scenario where the set is {1,2,3,4} and k is set to a value of 4.
That means we'll need to set k-1 to a value of 3.
That means that (3|4) will return a value of 7.
7 is greater than our n of 4.
Therefore, our output is k-2 aka 2.
That's as far as stepping through the function goes when we have an even-valued variable k.

Let's walk through a scenario where the set is {1,2} and k is set to a value of 2.
That means we'll need to set k-1 to a value of 1.
That means that (1|2) will return a value of 3.
3 is greater than our n of 2.
Therefore, our output is k-2 aka 0.
That's as far as stepping through the function goes when we have an even-valued variable k.

As far as the logical breakdown, there's more to the reason behind the code's success.
Our target is going to be the closest number that is less than k, so that would be k-1 (assuming k is odd).
If k is even, our target is going to be k-2.

It is important to remember that if k is odd, then k-1 is even.
It is important to remember that if k is even, then k-1 is odd.

An axiom to keep in mind: (k-1 | k) is always k when k is odd # Example: (2|3 => 3)

Why? Some users explain:

In binary form:
    k   = 10110
    k-1 = 10101
    pos = 10111
    k-1 == (k-1) & pos

You can get k-1 if pos <= n is TRUE. And you can get pos by ((k-1) | (k-1+1)) , that is , ((k-1) | k). Otherwise , you just need to follow the process above when k is ODD (because k-1 is ODD) , then you get the answer k-2.

Why K-2? Well if K-1 is odd, than K-2 is even. Because K-2 is even, the last bit of K-2 is zero.
Turning the least-significant zero turned into a one, is the same as adding one, and K-2+1 = K-1.
So K-2 & K-1 = K-2 in cases where K-1 is odd K-1 is <= N by definition so you have an answer.

Note, that in the case where K-1 is even K-1 OR K = K
Because K <= N the condition (K-1 OR K <= N) is always true in cases where K-1 is even.
In cases where K-1 is odd, the condition (K-1 OR K <= N) sometimes evaluates to false (the lowest higher number is bigger than N), in which case the answer is K-2. 
When it evaluates to true, the answer is K-1.

=end
