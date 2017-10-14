# Task
# You are given two classes, Person and Student, where Person is the base class and Student is the derived class. Completed code for Person and a declaration for Student are provided for you in the editor.
# Observe that Student inherits all the properties of Person.
#
# Complete the Student class by writing the following:
#
# A Student class constructor, which has  parameters:
# A string, firstName.
# A string, lastName.
# An integer, id.
# An integer array (or vector) of test scores, scores.
# A char calculate() method that calculates a Student object's average and returns the grade character representative of their calculated average: https://s3.amazonaws.com/hr-challenge-images/17165/1458142706-3073bc9143-Grading.png

# Sample Input

# Heraldo Memelli 8135627
# 2
# 100 80

# Sample Output

# Name: Memelli, Heraldo
# ID: 8135627
# Grade: O

# Person class is provided by HackerRank
class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

# Part I of my solution
class Student < Person
  def initialize(firstName, lastName, id, scores)
    super(firstName, lastName, id)
    @scores = scores
  end

# Part II of my solution
  def calculate
    average = (@scores.reduce(:+)/@scores.length)
    return "O" if average.between?(90, 100)
    return "E" if average.between?(80, 89)
    return "A" if average.between?(70, 79)
    return "P" if average.between?(55, 69)
    return "D" if average.between?(40, 54)
    return "T" if average < 40
  end
end

# Below is provided by HackerRank
input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson
print("\nGrade: " + s.calculate)

# Link
https://www.hackerrank.com/challenges/30-inheritance/problem
