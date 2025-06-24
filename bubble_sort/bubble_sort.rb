def bubble_sort(arr)
  i = 0
  while i < arr.length 
    j = i + 1
    while j < arr.length
      if arr[i] > arr[j]
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      end
      j += 1
    end
    i += 1
  end
  arr
end



