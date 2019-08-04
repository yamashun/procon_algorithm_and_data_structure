n = gets.to_i
arr = gets.chomp.split(" ")

def bubble_sort(n, arr)
  flag = true
  i = 0
  sort_num = 0
  while flag do
    flag = false
    ((i+1)..(n-1)).reverse_each do |j|
      if arr[j][1] < arr[j-1][1]
        org_arr_j = arr[j]
        arr[j] = arr[j-1]
        arr[j-1] = org_arr_j
        sort_num += 1
        flag = true
      end
    end
    i += 1
  end
  arr
end

def selection_sort(n, arr)
  n.times do |i|
    minj = i
    for j in i..(n-1)
      if arr[j][1] < arr[minj][1]
        minj = j
      end
    end
    if arr[i] != arr[minj]
      org_arr_i = arr[i]
      arr[i] = arr[minj]
      arr[minj] = org_arr_i
    end
  end
  arr
end

bubble_sort_result = bubble_sort(n, arr.dup)
puts bubble_sort_result.join(' ')
puts "Stable"

selection_sort_result = selection_sort(n ,arr.dup)
puts selection_sort_result.join(' ')
if selection_sort_result == bubble_sort_result
  puts "Stable"
else
  puts "Not stable"
end





