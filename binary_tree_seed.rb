def binary_tree_seed (arr)
  if arr.length === 1
    arr
  end 
  
  sort(arr)
  
end  

def sort (arr)
  if arr.length === 1
    return arr
  end  

  middle = (arr.length / 2) - 1
  left = sort(arr[0..middle])
  puts left
  right = sort(arr[middle + 1..arr.length - 1])
  puts right
  
end  

arr_example = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

binary_tree_seed (arr_example)
