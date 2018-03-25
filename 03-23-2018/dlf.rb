gets; scores = gets.split.map(&:to_i)
min = max = scores[0]
min_count = max_count = 0
scores.each do |score|
  if score < min
    min = score
    min_count+=1
  end
  if score > max
    max = score
    max_count+=1
  end
end
print(max_count," ",min_count)
