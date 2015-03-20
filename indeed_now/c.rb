n = gets.to_i

s = Hash.new(0)
n.times do
  s[gets.to_i] += 1
end

p s

num_ary = []
max_point = s.max[0]
num_ary[max_point + 1] = 0
max_point.downto(0) do |i|
  num_ary[i] = num_ary[i + 1] + s[i]
end

p num_ary

q = gets.to_i

k = []
q.times do
  k << gets.to_i
end
