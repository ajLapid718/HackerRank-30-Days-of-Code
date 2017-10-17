=begin

Task

Complete the insert function in your editor so that it creates a new Node (pass data as the Node constructor argument) and inserts it at the tail of the linked list referenced by the parameter.
Once the new node is added, return the reference to the head node.

Sample Input

The following input is handled for you by the locked code in the editor:
The first line contains T, the number of test cases.
The T subsequent lines of test cases each contain an integer to be inserted at the list's tail.

4
2
3
4
1

Sample Output

The locked code in your editor prints the ordered data values for each element in your list as a single line of space-separated integers:

2 3 4 1

=end

# Provided by HackerRank
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Solution
  # My solution using recursion
  def insert(head, value)
    if head.nil? # If the head argument passed to the insert function is nil, then the initial list is empty.
      head = Node.new(value) # As a result, we'll need to make the head of the LL a new node object.
    else
      head.next = insert(head.next, value) # Otherwise, add a new node object to the tail-end as prompted.
    end

    return head # Return the original head of the LL as prompted, to allow the display method to show each node.
  end

  # My solution using iteration
  def insert(head, value)
    if head.nil? # If the head is empty, we'll need to correct that.
      head = Node.new(value) # Instantiate a new node object to start off the Linked List.
    else
      current_node = head # In the event that the head has a value, let's declare the current_node with the value of head...the starting point.

      until current_node.next == nil # Go through the linked list. When we bump into a nil value, then we've reached the end of the linked list.
        current_node = current_node.next # Keep changing the current_node value to the node in front that is being pointed toward.
      end

      current_node.next = Node.new(value) # Insert or add a new node object to replace the nil value; this adds a new node at the end of the linked list.
      return head # Return the original head in order for the display method to properly show the contents of the linked list.
    end
  end

# Provided by HackerRank
  def display(head)
    current = head
    while current
      print current.data," "
      current = current.next
    end
  end
end

mylist= Solution.new
head=nil
T=gets.to_i
for i in 1..T
  data=gets.to_i
  head=mylist.insert(head,data)
end
mylist.display(head)
