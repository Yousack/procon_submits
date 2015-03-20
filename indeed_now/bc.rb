require 'pp'

N = gets.to_i

neighbor = Array.new(N + 1) { Array.new(N + 1) { 0 } }

(N - 1).times do
  a, b = gets.split.map(&:to_i)
  neighbor[a][b] = 1
  neighbor[b][a] = 1
end

visit = Array.new(N + 1) { false }
answer = []
queue = [1]

until queue.empty?
  elem = queue.shift
  visit[elem] = true
  answer << elem
  next_elem = []
  elem_row = neighbor[elem]
  elem_row.each_with_index do |e, i|
    next_elem << i if e == 1 && !visit[i]
  end
  next_elem.each do |e|
    queue << e
  end

  queue.sort!
end

puts answer.join(' ')
