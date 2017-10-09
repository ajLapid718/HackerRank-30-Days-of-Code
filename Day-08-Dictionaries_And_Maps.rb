# Task
# Given n names and phone numbers, assemble a phone book that maps friends' names to their respective phone numbers.
# You will then be given an unknown number of names to query your phone book for.
# For each name queried, print the associated entry from your phone book on a new line in the form name=phoneNumber; if an entry for name is not found, print "Not found" instead.

# Note: Your phone book should be a Dictionary/Map/HashMap data structure.

# Sample Input:
# 3
# sam 99912222
# tom 11122222
# harry 12299933
# sam
# edward
# harry

# Sample Output:
# sam=99912222
# Not found
# harry=12299933

# Ruby

queries = gets.to_i
arr = []

queries.times do |x|
  arr << gets.strip.split(" ")
end
hash_table = arr.to_h

names_to_check = []
STDIN.readlines.each do |name|
  names_to_check << name.chomp
end

hash_table.each do |name, phone|
  if names_to_check.include?(name)
      puts "#{name}" + "=" + "#{phone}"
  else
      puts "Not found"
  end
end

# Python 3

queries = int(input().strip())
hash_table = {}

for i in range(queries):
    line = input()
    k, v = line.split()
    hash_table[k] = v

while True:
    try:
        name = input()
    except EOFError:
        break
    if name in hash_table:
        print("{}={}".format(name, hash_table[name]))
    else:
        print("Not found")
