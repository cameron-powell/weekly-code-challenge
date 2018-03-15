s, t = gets.strip.split(" ").map(&:to_i)
a, b = gets.strip.split(" ").map(&:to_i); gets
puts(gets.strip.split(" ").map(&:to_i).select{|x| a+x>=s and a+x<=t}.length,gets.strip.split(" ").map(&:to_i).select{|x| b+x>=s and b+x<=t}.length)
