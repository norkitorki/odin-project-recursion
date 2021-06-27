def merge_sort(arr)
  return arr if arr.length == 1

  left_set  = merge_sort(arr[...arr.length / 2])
  right_set = merge_sort(arr[arr.length / 2..])

  merge_array(left_set, right_set)
end

def merge_array(set1, set2)
  if set1.first > set2.first
    [set2.first] + (set2[1..].empty? ? set1 : merge_array(set1, set2[1..]))
  else
    [set1.first] + (set1[1..].empty? ? set2 : merge_array(set1[1..], set2))
  end
end
