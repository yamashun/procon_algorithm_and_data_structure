input_line = gets.to_i

minv = gets.to_i
maxv = -20_000_000_000
(input_line - 1).times do
  input_i = gets.to_i
  maxv = [maxv, input_i - minv].max
  minv = [minv, input_i].min
end

puts maxv
