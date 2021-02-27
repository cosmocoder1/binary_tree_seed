require './sort'

class Node
  include Comparable
  attr_accessor :data, :left_child, :right_child
  def <=>(other_data) 
        data <=> other_data 
  end

  def initialize (data)
    @data = data
    @left_child = nil
    @right_child = nil
  end    
end  

class Tree 
  
  def initialize (arr)
    @arr = arr 
  end  

  def root (build_tree)
   
  end
  
  def build_tree (arr)
  include sort
    middle = (arr.length / 2) - 1
    arr.sort[middle]
  end  

  def insert
  end  

  def delete
  end  

  def find
  end
  
  def level_order
  end
  
  def inorder
  end
  
  def preorder
  end
  
  def postorder
  end  

  def height 
  end
  
  def depth
  end
  
  def balanced?
  end
  
  def rebalance
  end  

end  

arr_example = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

tree_test = Tree.new(arr_example)
tree_test.build_tree


=begin    
    if arr.length === 1
      return arr
    end  

    middle = (arr.length / 2) - 1
    left = arr[0..middle]
    right = arr[middle + 1..arr.length - 1]

    node = Node.new(arr[middle])
    puts node.data
    if left.length > 1
      node.left__child = root(left)
    elsif right.length > 1
      node.right_child = root(right) 
    else
      return
    end  
  end
=end  
