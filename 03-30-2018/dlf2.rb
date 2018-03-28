n,k = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

puts x.each.with_index.map{ |a_i,i| x[i+1..-1].map{ |a_j| a_j+a_i } }.flatten.map{ |val| val%k == 0 ? 1 : 0 }.reduce(:+)
