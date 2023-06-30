scores = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
scores2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

i = 0
while i < scores.length
  puts "How many pins did you knock down on first ball?:"
  roll = gets.chomp.to_i
  # if roll == 10
  scores[i] = scores[i] + roll
  puts "How many pins did you knock down on second ball?:"
  roll2 = gets.chomp.to_i
  # if roll + roll2 == 10
  scores2[i] = scores2[i] + roll2
  i += 1
end


total = scores.sum + scores2.sum

p total
