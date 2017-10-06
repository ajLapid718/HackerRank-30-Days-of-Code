# Task
# Write a Person class with an instance variable, age, and a constructor that takes an integer, initialAge, as a parameter.
# The constructor must assign initialAge to age after confirming the argument passed as initialAge is not negative; if a negative argument is passed as initialAge, the constructor should set age to 0 and print "Age is not valid, setting age to 0."
# In addition, you must write the following instance methods:

# yearPasses() should increase the age instance variable by 1.
# amIOld() should perform the following conditional actions:

# If age < 13, print "You are young."
# If age >= 13 and age < 18, print "You are a teenager."
# Otherwise, print "You are old."

class Person
    attr_accessor :age

    def initialize(initialAge)
        # Add some more code to run some checks on initialAge
        if initialAge < 0
            puts "Age is not valid, setting age to 0."
            @age = 0
        else
            @age = initialAge
        end
    end

    def amIOld()
      # Do some computations in here and print out the correct statement to the console
        if @age < 13
            puts "You are young."
        elsif @age >= 13 && @age < 18
            puts "You are a teenager."
        else
            puts "You are old."
        end
    end

    def yearPasses()
      # Increment the age of the person in here
        @age += 1
    end
end
