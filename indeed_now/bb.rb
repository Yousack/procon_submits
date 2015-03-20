s = gets.chomp
t = gets.chomp

solve = false
(0..s.length).each do |i|
  if s == t
    solve = true
    puts i
    break
  end
  s = s[s.length - 1] + s[0...s.length - 1]
end

unless solve
  puts -1
end
