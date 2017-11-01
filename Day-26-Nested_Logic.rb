Task
Your local library needs your help! Given the expected and actual return dates for a library book, create a program that calculates the fine (if any). The fee structure is as follows:

If the book is returned on or before the expected return date, no fine will be charged (i.e.: fine = 0).
If the book is returned after the expected return day but still within the same calendar month and year as the expected return date, fine = 15 Hackos x (the number of days late).
If the book is returned after the expected return month but still within the same calendar year as the expected return date, the fine = 500 Hackos x (the number of months late).
If the book is returned after the calendar year in which it was expected, there is a fixed fine of 10000 Hackos.

Sample Input

9 6 2015
6 6 2015

Sample Output

45

# My Solution
actual_return_day, actual_return_month, actual_return_year = gets.strip.split.map(&:to_i)
expected_return_day, expected_return_month, expected_return_year = gets.strip.split.map(&:to_i)

if actual_return_year > expected_return_year
  print 10000
elsif actual_return_month > expected_return_month && actual_return_year == expected_return_year
  print 500 * (actual_return_month - expected_return_month)
elsif actual_return_day > expected_return_day && actual_return_month == expected_return_month && actual_return_year == expected_return_year
  print 15 * (actual_return_day - expected_return_day)
else
  print 0
end
