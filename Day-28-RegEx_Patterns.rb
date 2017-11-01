Task

Consider a database table, Emails, which has the attributes First Name and Email ID.
Given rows of data simulating the Emails table, print an alphabetically-ordered list of people whose email address ends in @gmail.com.

Input Format

The first line contains an integer, N, total number of rows in the table.
Each of the N subsequent lines contains 2 space-separated strings denoting the first name and their email ID, respectively.

Sample Input

6
riya riya@gmail.com
julia julia@julia.me
julia sjulia@gmail.com
julia julia@gmail.com
samantha samantha@gmail.com
tanya tanya@gmail.com

Sample Output

julia
julia
riya
samantha
tanya

# My Solution

N = gets.strip.to_i
first_names = []
for a0 in (0..N-1)
  firstName, emailID = gets.strip.split(' ')
  if emailID =~ /(@gmail)/
    first_names << firstName
  end
end

puts first_names.sort
