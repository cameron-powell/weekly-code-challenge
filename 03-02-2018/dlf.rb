# Reading the input
input = []
6.times do
  line = gets.strip
  line_arr = line.split(' ').map(&:to_i)
  input.push(line_arr)
end

# Initializing the maximum sum to be the sum of the first hourglass
max_sum  = input[0][0]+input[0][1]+input[0][2]
max_sum += input[1][1]
max_sum += input[2][0]+input[2][1]+input[2][2]

# Looping through all the starting points for hourglasses
for i in (0..input.length-1-2)
  for j in (0..input[0].length-1-2)
    # Calculate the hourglass sum
    curr_sum  = input[i][j]+input[i][j+1]+input[i][j+2]
    curr_sum += input[i+1][j+1]
    curr_sum += input[i+2][j]+input[i+2][j+1]+input[i+2][j+2]
    # If the current sum is larger than the maximum, set the maximum equal to the current sum
    if curr_sum > max_sum
      max_sum = curr_sum
    end
  end
end

# Pring the result
puts max_sum
