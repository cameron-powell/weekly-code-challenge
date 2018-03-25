gets; scores = gets.split.map(&:to_i)
max, min = [scores[0], 0], [scores[0], 0]

(1...scores.length).each do |index|
  max = (scores[index] > max[0]) ? [scores[index], max[1]+1] : max
  min = (scores[index] < min[0]) ? [scores[index], min[1]+1] : min
end

puts "#{max[1]} #{min[1]}"
