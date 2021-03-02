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

=begin  
  def root
   build_tree
  end
=end

  def build_tree (arr)

    arr = arr.sort.uniq

    if arr.length === 0
     return nil
    end  

    middle = (arr.length - 1) / 2
    left = arr[0...middle]
    right = arr[(middle + 1)..-1]

    root = Node.new(arr[middle])
    root.left_child = build_tree(left)
    root.right_child = build_tree(right) 
    
    root

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
tree_test.build_tree(arr_example)

