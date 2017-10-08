# Task
# Given a string, S, of length N that is indexed from 0 to N-1, print its even-indexed and odd-indexed characters as 2 space-separated strings on a single line (see the Sample below for more detail).

# Sample Input:
# 2
# Hacker
# Rank

# Sample Output:
# Hce akr
# Rn ak

amount_of_test_cases = gets.to_i
STRINGS = []
OUTPUT = []

amount_of_test_cases.times do |idx|
    STRINGS << gets.chomp
end

STRINGS.each do |word|
    odd_characters = ""
    even_characters = ""

    word.length.times do |str_idx|
        if str_idx.even?
            even_characters << word[str_idx]
        else
            odd_characters << word[str_idx]
        end
    end

    OUTPUT.push(even_characters + " " + odd_characters)
end

puts OUTPUT
