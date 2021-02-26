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

  def root (build tree)
   
  end
  
  def build_tree (arr)

    

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

end  

arr_example = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

tree_test = Tree.new
tree_test.sort(arr_example)

