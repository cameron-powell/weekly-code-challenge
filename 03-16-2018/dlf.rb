s, t = gets.split.map(&:to_i)
a, b = gets.split.map(&:to_i); gets
puts(gets.split.map(&:to_i).select{|x| a+x>=s and a+x<=t}.length , gets.split.map(&:to_i).select{|x| b+x>=s and b+x<=t}.length)
