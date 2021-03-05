class Node
  include Comparable
  attr_accessor :data, :left_child, :right_child

  #def <=>(other_data) 
   #     data <=> other_data 
  #end

  def initialize (data)
    @data = data
    @left_child = nil
    @right_child = nil
  end    
end  

class Tree 
  attr_accessor :root
  def initialize (arr)
    @arr = arr 
    @root = build_tree(arr)
  end  

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

  def add_node
  end  

  def insert (value, node = root)

    if node.data == value 
      puts "this is a duplicate value"
      return nil
    end  

    if value < node.data 
      if node.left_child == nil
      node.left_child = Node.new(value)
      else insert(value, node.left_child)
      end  
    end
    if value > node.data
      if node.right_child == nil
      node.right_child = Node.new(value)
      else insert(value, node.right_child)
      end  
    end  

  end  

  def delete (value, node = root)

    #find match
    if node === nil
      return
    end

    if value < node.data
      node.left_child = delete(value, node.left_child)
    elsif value > node.data
      node.right_child = delete(value, node.right_child)
    end  

    if node === value
      if !node.left_child
        node = node.right_child
      elsif !node.right_child
        node = node.left_child
      else 
        succ = successor(node.right_child)
        node.data = temp.data
        node.right_child = delete(succ.data, node.right_child)
      end
    end  

    node    

  end  

  def successor (node)
    current_node = node
    leftmost_leaf = successor(node.left_child)
    return leftmost_leaf
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


def show_tree
  arr_example = [1, 2, 3, 5, 6, 7, 8, 9, 10]
  tree_test = Tree.new(arr_example)
  tree_test.insert(11)
  tree_test.delete(6)
  
  puts tree_test.root.data
  print tree_test.root.left_child.data
  puts tree_test.root.right_child.data
  print tree_test.root.left_child.left_child.data 
  print tree_test.root.left_child.right_child.data
  print tree_test.root.right_child.left_child.data
  puts tree_test.root.right_child.right_child.data
  print tree_test.root.left_child.right_child.right_child.data
  print tree_test.root.right_child.right_child.right_child.right_child.data

end

show_tree


