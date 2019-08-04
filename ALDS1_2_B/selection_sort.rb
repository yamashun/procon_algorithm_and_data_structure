n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)
exchange_times = 0
n.times do |i|
  minj = i
  for j in i..(n-1)
    if arr[j] < arr[minj]
      minj = j
    end
  end
  if arr[i] != arr[minj]
    org_arr_i = arr[i]
    arr[i] = arr[minj]
    arr[minj] = org_arr_i
    exchange_times += 1
  end
end

puts arr.join(' ')
puts exchange_times
