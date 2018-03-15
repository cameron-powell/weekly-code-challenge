house_left, house_right = gets.split.map &:to_i
apple_tree, orange_tree = gets.split.map &:to_i; gets
puts gets.split.map { |apple| (apple_tree + apple.to_i >= house_left && apple_tree + apple.to_i <= house_right) ? 1 : 0 }.reduce(:+)
puts gets.split.map { |orange| (orange_tree + orange.to_i >= house_left && orange_tree + orange.to_i <= house_right) ? 1 : 0 }.reduce(:+)
