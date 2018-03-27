# Read input
n, k = gets.split.map(&:to_i)
integers = gets.split.map(&:to_i)

# Count the number of times integers_i + integers_j is divisible by k when i < j
count = 0
(1...integers.length).each do |j|
  (0...j).each do |i|
    count += 1 unless (integers[i] + integers[j]) % k != 0
  end
end

puts count
