n = gets.to_i
arr = n.times.map{ gets.to_i }
@cnt = 0


def insert_sort(arr, n, g)
  return if g > n-1
  for i in g..(n-1) do
    v = arr[i]
    j = i - g
    while j >= 0 && arr[j] > v do
      arr[j+g] = arr[j]
      j = j - g
      @cnt += 1
    end
    arr[j+g] = v
  end
end

def build_g_arr(n)
  h = 1
  arr = []
  while h <= n do
    arr.push(h)
    h = h*3 + 1
  end
  arr.reverse
end


g_arr = build_g_arr(n)
m = g_arr.size
m.times do |i|
  insert_sort(arr, n, g_arr[i])
end

puts g_arr.size
puts g_arr.join(' ')
puts @cnt
puts arr
