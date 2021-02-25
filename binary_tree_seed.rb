class Node_Sprout
  attr_accessor :left_child, :right_child
  def initialize (data)
    @data = data
    @left_child = nil
    @right_child = nil
  end    
end  

class Binary_Tree 

  def sort (arr)

    if arr.length === 1
      return arr
    end  
   
    middle = (arr.length / 2) - 1
    left = arr[0..middle]
    right = arr[middle + 1..arr.length - 1]
    node = Node_Sprout.new(arr[middle])
    node.left__child = sort(left)
    node.right_child = sort(right) 

  end

end  

arr_example = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

tree_test = Binary_Tree.new
tree_test.sort(arr_example)

