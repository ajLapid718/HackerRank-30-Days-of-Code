=begin

Task

The height of a binary search tree is the number of edges between the tree's root and its furthest leaf.
You are given a pointer, root, pointing to the root of a binary search tree.
Complete the getHeight function provided in your editor so that it returns the height of the binary search tree.

Sample Input

7 # Total amount of nodes
3
5
2
1
4
6
7

Sample Output

3

There are 4 nodes in the path that are connected by 3 edges, meaning our BST's height = 3.
Thus, we print 3 as our answer.

=end

# Provided by HackerRank
class Node
  attr_accessor :left, :right, :data
  def initialize(data)
    @left = @right = nil
    @data = data
  end
end
# Provided by HackerRank
class Solution
  def insert (root, data)
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
  def getHeight(root)
    return -1 if root.nil?

    left_height = getHeight(root.left)
    right_height = getHeight(root.right)

    if left_height > right_height
      left_height + 1
    else
      right_height + 1
    end
  end
end

# Provided by HackerRank
myTree = Solution.new
root = nil
T = gets.to_i
for i in 1..T
  data = gets.to_i
  root = myTree.insert(root, data)
end
height = myTree.getHeight(root)
print height
