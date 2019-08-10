n, q = gets.chomp.split(" ").map(&:to_i)

queue = n.times.map do
  arr = gets.split(" ")
  arr[1] = arr[1].to_i
  arr
end

time = 0
result = []
while queue.size > 0 do
  process = queue.shift
  if process[1] > q
    process[1] = process[1] - q
    time += q
    queue.push(process)
  else process[1] <= q
    time += process[1]
    result << [process[0],time]
  end
end

result.each do |rs|
  puts rs.join(' ')
end
