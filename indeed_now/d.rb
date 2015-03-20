H, W = gets.split.map(&:to_i)

c = []
start = []
H.times do |i|
  c[i] = []
  gets.split.map(&:to_i).each_with_index do |e, j|
    c[i][j] = e
    start = [i, j] if e == 0
  end
end

p c
p start

correct = []
H.times do |i|
  correct[i] = []
  W.times do |j|
    correct[i][j] = i * H + j + 1
  end
end

correct[H - 1][W - 1] = 0

def bfs(queue, count, zeropos)
  f = queue[0]
  queue = queue[1..queue.length]

  queue <<
end

q = [c]
bfs(q, 0, start)
