# Read in the grid.
grid = []
6.times do
  row = gets.split.map { |val| val.to_i }
  grid.push row
end

#  Calculates the sum of an hourglass in the grid
#  where the index of the top left element of the
#  hourglass is at [row][col]
def hourglass_sum(grid, row, col)
  sum = 0
  # Sum top and bottom rows
  (0..2).each do |shift|
    sum += grid[row][col+shift]
    sum += grid[row+2][col+shift]
  end
  # Add in middle
  sum += grid[row+1][col+1]
end

# Calculate the maximum hourglass sum
max_sum = -63  # Theoretically lowest possible sum
(0..3).each do |row|
  (0..3).each do |col|
    current_hourglass_sum = hourglass_sum grid, row, col
    max_sum = (current_hourglass_sum > max_sum) ? current_hourglass_sum : max_sum
  end
end

puts max_sum
