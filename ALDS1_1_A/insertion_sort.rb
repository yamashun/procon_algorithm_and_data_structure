input_line = gets.to_i

arr = gets.chomp.split(" ").map(&:to_i)
puts arr.join(' ')

(input_line - 1).times do |i|
  v = arr[i + 1]
  j = i
  while j >= 0 && arr[j] > v do
    arr[j+1] = arr[j]
    j -= 1
  end
  arr[j+1] = v
  puts arr.join(' ')
end
