#  Calculates the sum of values in an hourglass in a 2D array (grid)
# where row, col denote the top left element of the hourglass
def hourglass_sum(grid, row, col)
  sum = 0
  # Sum top and bottom rows
  (0..2).each do |shift|
    sum += grid[row][col+shift]
    sum += grid[row+2][col+shift]
  end
  # Add the middle value and return
  sum += grid[row+1][col+1]
end

# Read in the grid.
grid = []
6.times { grid.push gets.split.map { |val| val.to_i } }

# Calculate the maximum hourglass sum
max_sum = -63  # Lowest possible sum
(0..3).each do |row|
  (0..3).each do |col|
    current_hourglass_sum = hourglass_sum grid, row, col
    max_sum = (current_hourglass_sum > max_sum) ? current_hourglass_sum : max_sum
  end
end

puts max_sum
