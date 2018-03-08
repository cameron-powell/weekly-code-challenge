# Read the input
input_string = gets.strip

# Iterate over every chunk of 3 characters
# counting incorrect characters
num_incorrect = 0
(0...input_string.length).step(3).each do |index|
  chunk = input_string[index..index+2]
  if(chunk[0] != 'S')
    num_incorrect += 1
  end
  if(chunk[1] != 'O')
    num_incorrect += 1
  end
  if(chunk[2] != 'S')
    num_incorrect += 1
  end
end

puts num_incorrect