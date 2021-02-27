module Sort 

  def bubble_sort (arr)
    for i in 0..arr.length - 1  
      for i in 0..arr.length - 1 
        unless arr.find_index(arr[i]) === arr.length - 1 
          if arr[i] > arr[i + 1]
            temp = arr[i]
            arr[i] = arr[i + 1]
            arr[i + 1] = temp
          end  
        end
      end
    end
    arr.uniq
  end
  
  end