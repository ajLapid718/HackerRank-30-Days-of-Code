Task

The AdvancedArithmetic interface and the method declaration for the abstract int divisorSum(int n) method are provided for you in the editor below.
Write the Calculator class, which implements the AdvancedArithmetic interface.
The implementation for the divisorSum method must be public and take an integer parameter, n, and return the sum of all its divisors.

Sample Input
6

Sample Output
I implemented: AdvancedArithmetic
12

Explanation

The integer 6 is evenly divisible by 1, 2, 3, and 6.
Our divisorSum method should return the sum of these numbers, which is 1+2+3+6=12.
The Solution class then prints I implemented: AdvancedArithmetic on the first line, followed by the sum returned by divisorSum (which is 12) on the second line.

# My solution in Ruby; the closest thing to an interface for Ruby would involve implementing modules
module AdvancedArithmetic
  def divisorSum(n)
    raise 'Not Implemented'
  end
end

class Calculator
  include AdvancedArithmetic # We use include instead of extend in this case because we want our instance of the Calculator class to call the divisorSum method...there is no need for the Calculator class to call the instance method as a class method here

  def divisorSum(n) # (1..n/2).select { |divisor| n % divisor == 0 }.reduce(:+) + n
    sum = 0
    potential_divisor = 1

    until potential_divisor > n/2
      sum += potential_divisor if (n % potential_divisor == 0)
      potential_divisor += 1
    end

    return (sum + n)
  end
end

myCalculator = Calculator.new
print "I implemented: AdvancedArithmetic\n" + "#{myCalculator.divisorSum(6)}"
print "I implemented: AdvancedArithmetic\n" + "#{myCalculator.divisorSum(1)}"
print "I implemented: AdvancedArithmetic\n" + "#{myCalculator.divisorSum(20)}"

# Provided by HackerRank
using System;
public interface AdvancedArithmetic{
    int divisorSum(int n);
}
# A solution in C#; Ruby is not supported for this problem at the moment
public class Calculator : AdvancedArithmetic {
  public int divisorSum(int n) {
    int sum = 0;
    for (int i = 1; i <= n/2; i++) {
      if (n % i == 0) sum += i;
      }
    return sum + n;
  }
}
# Provided by HackerRank
class Solution{
  static void Main(string[] args){
    int n = Int32.Parse(Console.ReadLine());
  	AdvancedArithmetic myCalculator = new Calculator();
    int sum = myCalculator.divisorSum(n);
    Console.WriteLine("I implemented: AdvancedArithmetic\n" + sum);
  }
}
