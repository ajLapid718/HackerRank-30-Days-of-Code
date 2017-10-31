=begin

Task

A level-order traversal, also known as a breadth-first search, visits each level of a tree's nodes from left to right, top to bottom. You are given a pointer, root, pointing to the root of a binary search tree.
Complete the levelOrder function provided in your editor so that it prints the level-order traversal of the binary search tree.

Hint: You'll find a queue helpful in completing this challenge.

Output Format

Print the data value of each node in the tree's level-order traversal as a single line of N space-separated integers.

Sample Input

6 (N)
3
5
4
7
2
1

Sample Output

3 2 5 1 4 7

=end

# Provided by HackerRank
class Node
  attr_accessor :left, :right, :data
  def initialize(data)
    @left = nil
    @right = nil
    @data = data
  end
end
# Provided by HackerRank
class Solution
  def insert(root, data)
    if root == nil
      return Node.new(data)
    else
      if data <= root.data
        cur = self.insert(root.left, data)
        root.left = cur
      else
        cur = self.insert(root.right, data)
        root.right = cur
      end
    end

    return root
  end
# My solution
  def levelOrder(root)
    queue = [root]
    until queue.empty?
      node = queue.shift
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?
      print "#{node.data} "
    end
  end
end

# Provided by HackerRank
myTree = Solution.new
root = nil
T = gets.to_i
for i in 1..T
  data=gets.to_i
  root=myTree.insert(root,data)
end
myTree.levelOrder(root)
