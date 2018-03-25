gets; scores = gets.split.map(&:to_i)
max = min = "#{scores[0]} #{0}"

(1...scores.length).each do |index|
  max = (scores[index] > max.split.map(&:to_i)[0]) ? "#{scores[index]} #{max.split.map(&:to_i)[1]+1}" : max
  min = (scores[index] < min.split.map(&:to_i)[0]) ? "#{scores[index]} #{min.split.map(&:to_i)[1]+1}" : min
end

puts "#{max.split[1]} #{min.split[1]}"
