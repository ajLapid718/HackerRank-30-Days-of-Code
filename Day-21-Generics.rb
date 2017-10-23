=begin

Task:

Write a single generic function named PrintArray.
This function must take an array of generic elements as a parameter (the exception to this is C++, which takes a vector).
The locked Solution class in your editor tests your function.

Sample Input
3
1
2
3
2
Hello
World

Sample Output
1
2
3
Hello
World

=end

# Provided by HackerRank
using System;

class Printer
{

# A solution written in C# (C-Sharp)
public static void PrintArray<T>(T[] arr) {
  for (var i = 0; i < arr.Length; i++) {
    Console.WriteLine(arr[i]);
  }
}

# Provided by HackerRank
  static void Main(string[] args)
  {
    int n = Convert.ToInt32(Console.ReadLine());
    int[] intArray = new int[n];
    for (int i = 0; i < n; i++)
  {
    intArray[i] = Convert.ToInt32(Console.ReadLine());
  }

  n = Convert.ToInt32(Console.ReadLine());
  string[] stringArray = new string[n];
  for (int i = 0; i < n; i++)
  {
    stringArray[i] = Console.ReadLine();
  }

  PrintArray<Int32>(intArray);
  PrintArray<String>(stringArray);
  }
}

=begin

Some programming languages support generics, and some do not.
The list of supported languages included: cs, cpp, java, and swift.
Sometimes Ruby is not supported even though it is a viable option, but I understand that in this case...similar to the interfaces lesson earlier in the week...that Ruby operates differently.
Learning about differences helps me solidify what makes Ruby, Ruby.

When situations like this arise, I'll still attempt to find some opportunities to learn despite the circumstances.
Instead of working primarily with Ruby, I get the chance to work in the low-level/more explicit programming languages.
While I do not believe I would achieve competence from one or two exercises alone, I still like to develop familiarity and exposure to any and all pertinent information from content to conventions.
Even if this does not help me from a writing perspective, this will help me out when reading especially since many tutorials and books default to Java or languages from the C family.

The same way I tried to understand what an interface was earlier in the week, is similar to the approach and angle I used here.
For an interface, I read up on the description, task, and some articles and tried to think of a reference point I was familiar with: that ended up being modules in Ruby.

By the same token, one of the first things that came to mind about generics was a TypeError and the splat operator.
That was the extent of any comparisons I could draw up.

Looking into things further, I found out a few things. Originally, I had some higher-level idea of what was going on, but StackOverflow clarified some things.
Ruby is a programming language with dynamic typing as opposed to a programming language with static typing.
Dynamic typed languages are those in which type checking is done at run-time whereas static typed languages are those in which type checking is done at compile-time.
In terms of debugging and a somewhat out-there analogy, dynamic typed languages have more of an affinity toward treatment whereas static typed languages have more of an affinity toward prevention.
Testing (example: RSpec) becomes even more crucial.

Ruby follows duck-typing. Everything is generic in a sense. Things in Ruby are more behavior-centric.
It is possible to pass parameters/arguments of any class to any method, which is the original reason why a programmer might need to implement generics.

"In Ruby, we rely less on the type (or class) of an object and more on its capabilities.
Hence, Duck Typing means an object type is defined by what it can do, not by what it is.
Duck Typing refers to the tendency of Ruby to be less concerned with the class of an object and more concerned with what methods can be called on it and what operations can be performed on it.
In Ruby, we would use respond_to? or might simply pass an object to a method and know that an exception will be raised if it is used inappropriately." - RubyLearning

=end

As far as I understand, generics would prevent this situation from properly working error-free, which is fully permitted in Ruby:

def display_first_element(array)
  array[0]
end

display_first_element([1,2,3]) => 1 # An array works as intended by design
display_first_element("Hello World") => "H" # A string works; not intentional
display_first_element({a: 1, b: 2}) => nil # A hash/dictionary works; not intentional

As far as I understand, one way (type restriction) to slightly resemble the functionality of generics in Ruby...in the spirit of proof of principle/proof of concept...might look like:

def print_only_strings(arr)
  i = 0
  while i < arr.length
    if arr[i].is_a?(String)
      puts arr[i]
    end
    i += 1
  end
end

Another way to slightly resemble the functionality of generics in Ruby might look like:

def accept_only_integers(arr)
  raise "This array should only contain elements that are integers" if arr.any? { |element| !element.is_a?(Integer) } # [1,2,3,"hey",5] raises a runtime error
  puts arr
end

Someone on StackOverflow suggested taking a look at the following code:

"You can pass a class to a method just like passing normal objects. For example..."

def create_object(klass, *args)
  klass.new(*args) # Add a puts keyword
end

create_object(String)  #=> ""
create_object(Hash)  #=> {}
create_object(Array, 3, :hello)  #=> [:hello, :hello, :hello]
