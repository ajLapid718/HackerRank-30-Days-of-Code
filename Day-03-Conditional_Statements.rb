#!/bin/ruby

N = gets.strip.to_i

# If N is odd, print Weird
# If N is even and in the inclusive range of 2..5, print Not Weird
# If N is even and in the inclusive range of 6..20, print Weird
# If N is even and greater than 20, print Not Weird

# def weird_or_not(N)
    if N.even? && N > 20
        print "Not Weird"
    elsif N.even? && N.between?(6,20)
        print "Weird"
    elsif N.even? && N.between?(2,5)
        print "Not Weird"
    elsif N.odd?
        print "Weird"
    else
        "This condition should not be met."
    end
# end
