# Task
# Given a Book class and a Solution class, write a MyBook class that does the following:

# Inherits from Book

# Has a parameterized constructor taking these 3 parameters:
# 1. string title
# 2. string author
# 3. int price

# Implements the Book class' abstract display() method so it prints these 3 lines:
# Title:, a space, and then the current instance's title.
# Author:, a space, and then the current instance's author.
# Price, a space, and then the current instance's price.

# Sample Input
The Alchemist
Paulo Coelho
248

# Sample Output
Title: The Alchemist
Author: Paulo Coelho
Price: 248

# Provided by HackerRank
class Book
  attr_accessor :title
	attr_accessor :author

	def initialize(title, author)
		raise 'You cannot instantiate an abstract class.'
	end

	def display
		raise 'You must override this method in your implementing class.'
	end
end

# My solution
class MyBook < Book
  attr_accessor :price
  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  def display
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Price: #{@price}"
  end
end

# Provided by HackerRank
title = gets
author = gets
price = gets

new_novel = MyBook.new(title, author, price)
new_novel.display
