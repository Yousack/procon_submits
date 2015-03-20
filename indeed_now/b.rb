n = gets.chomp.to_i

indeednow = Hash.new(0)
"indeednow".each_char do |c|
  indeednow[c] += 1
end

n.times do
  s = gets.chomp
  temp = Hash.new(0)
  s.each_char do |c|
    temp[c] += 1
  end

  puts indeednow == temp ? "YES" : "NO"
end
