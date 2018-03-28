n,k = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
count = 0
(0..n-1).each { |i| (i+1..n-1).each { |j| count+=1 if (numbers[i]+numbers[j]) % k == 0 } }
puts count
