line = gets.strip()

changed=0

#Loop through every character
for i in (0..line.length-1)
  if(i%3==1)#If it should be an O
    if(line[i]!="O")
      changed+=1
    end
  elsif(line[i]!="S")#If it should be an S
    changed+=1
  end
end

puts changed

