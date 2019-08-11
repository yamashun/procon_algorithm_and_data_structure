@n = gets.to_i
S = gets.split(' ').map(&:to_i)
q = gets.to_i
T = gets.split(' ').map(&:to_i)

def binary_search(arr, key)
  left = 0
  right = @n
  while left < right
    mid = (left + right) / 2
    if arr[mid] == key
      return mid
    elsif key < arr[mid]
      right = mid
    else
      left = mid + 1
    end
  end
  nil
end

count = 0

T.each do |t|
  count += 1 if binary_search(S, t)
end

puts count
