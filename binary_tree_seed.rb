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

    if !node 
      return nil
    end

    if value < node.data
        node.left_child = delete(value, node.left_child) 
    elsif value > node.data
        node.right_child = delete(value, node.right_child)
    end

    if node.data === value
      if node.left_child === nil
        return node.right_child
      elsif node.right_child === nil
        return node.left_child
      end

      succ = successor(node.right_child)
      node.data = succ.data
      node.right_child = delete(succ.data, node.right_child)
    end  
    node    
  end  

  def successor (node)
    return node if node.left_child === nil
      successor(node.left_child)
  end  

  def find (value, node = root)
    if node === nil
      return
    end
    
    if value < node.data
      node.left_child = find(value, node.left_child)
    elsif value > node.data
      node.right_child = find(value, node.right_child)
    elsif value == node.data
      return node
    end

  end
  
  def level_order (node = root)
    if node == nil
      return
    end  
    result = []
    queue = []
    queue.push(node)
    while !queue.empty?
      current_node = queue[0]
      result.push(current_node.data)
    if current_node.left_child != nil
      queue.push current_node.left_child
    end
    if current_node.right_child != nil
      queue.push current_node.right_child
    end
    queue.shift
  end
    result.inspect
  end
  
  def inorder (node = root)

    if node == nil 
      return
    end  

    inorder(node.left_child)
    puts node.data
    inorder(node.right_child)

  end
  
  def preorder (node = root)

  if node == nil 
    return
  end  

    puts node.data
    preorder(node.left_child)
    preorder(node.right_child)

  end
  
  def postorder (node = root)

    if node == nil
      return
    end
  
    postorder(node.left_child)
    postorder(node.right_child)
    puts node.data

  end  

  def height (value)
    
    left_count = 0
    right_count = 0
    current_node = root

    while current_node.data != value do
      if value < current_node.data
        current_node = current_node.left_child
      elsif value > current_node.data 
        current_node = current_node.right_child
      end
    end        
  
    while current_node.right_child || current_node.left_child do
      current_node

  end
  
  def depth (value)

    if root.data === value
      return 0
    end
    
    count = 0
    current_node = root
    while current_node.data != value do
      if value < current_node.data
        current_node = current_node.left_child
        count += 1
      elsif value > current_node.data 
        current_node = current_node.right_child
        count += 1
      end
    end        
    return count

  end
  
  def balanced?
  end
  
  def rebalance
  end 
  
  def pretty_print(node = @root, prefix = '', is_left = true)
  pretty_print(node.right_child, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_child
  puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
  pretty_print(node.left_child, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_child
end

end  


#show_tree

arr_example = [1, 2, 3, 5, 6, 7, 8, 9, 10]
tree_test = Tree.new(arr_example)
tree_test.insert(11)
tree_test.delete(6)
tree_test.pretty_print
puts tree_test.height(9)


