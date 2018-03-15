s, t, a, b = (gets + " " + gets).split.map(&:to_i); gets
puts gets.split.map {|ap| (a+ap.to_i >= s && a+ap.to_i <= t) ? 1 : 0 }.reduce(:+), gets.split.map {|oe| (b+oe.to_i >= s && b+oe.to_i <= t) ? 1 : 0 }.reduce(:+)
