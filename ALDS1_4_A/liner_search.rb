n = gets.to_i
S = gets.split(' ').map(&:to_i)
q = gets.to_i
T = gets.split(' ').map(&:to_i)

count = 0
T.each do |t|
  S.each do |s|
    if t == s
      count += 1
      break
    end
  end
end

puts count
