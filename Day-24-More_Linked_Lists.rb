Task
A Node class is provided for you in the editor. A Node object has an integer data field, data, and a Node instance pointer, next, pointing to another node (i.e.: the next node in a list).
A removeDuplicates function is declared in your editor, which takes a pointer to the head node of a linked list as a parameter.
Complete removeDuplicates so that it deletes any duplicate nodes from the list and returns the head of the updated list.
Note: The head pointer may be null, indicating that the list is empty. Be sure to reset your next pointer when performing deletions to avoid breaking the list.

Constraints

The data elements of the linked list argument will always be in non-decreasing order.

Sample Input

6
1
2
2
3
3
4

Sample Output

1 2 3 4

# Provided by HackerRank
class Node
  attr_accessor :data,:next
  def initialize data
    @data = data
    @next = nil
  end
end

# My solution
class Solution
  def removeDuplicates(head)
    if head.nil?
      head = Node.new(data)
    else
      current_node = head
      until current_node.next == nil
        if current_node.data == current_node.next.data
          current_node.next = current_node.next.next
        else
          current_node = current_node.next
        end
      end
      return head
    end
  end
  # Provided by HackerRank
  def insert(head, value)
    p = Node.new(value)
    if head == nil
      head = p
    elsif head.next == nil
      head.next = p
    else
      current = head
    while current.next != nil
      current = current.next
   end
   current.next = p
  end
  return head
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

# Provided by HackerRank
mylist = Solution.new
head = nil
T = gets.to_i
for i in 1..T
  data = gets.to_i
  head = mylist.insert(head, data)
end
head = mylist.removeDuplicates(head)
mylist.display(head)
