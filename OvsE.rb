# confirm player wants to play
puts "Would you like to play 'Odd or Even'?"

# give player option to say yes or no
start_game = gets.chomp.capitalize

# quit game if player declines
if start_game == "N" || start_game == "No" || start_game == "Nah" || start_game == "Nah bruh" || start_game == "Maybe later"
	Process.exit
end

# ask Odd or Even
puts "Odd or Even?"
# give player option to choose
user_OE = gets.chomp.capitalize

# 
# if user_OE == "Odd" || "Fairly odd parents"
puts "Pick either 0, 1, 2, 3, 4 or 5"
# Give player option to pick
user_answer = gets.chomp.to_i
# end


# play this round Odd
	# if user_answer_odd == 1 || user_answer_odd == 3 || user_answer_odd == 5

# now computers turn

computer_answer = [0 ,1, 2, 3, 4, 5].sample

# print computers answer
print computer_answer

puts ''

total = user_answer + computer_answer

# print total
print total

puts ''

if user_OE == "Odd"  && (total % 2 == 1)
	puts "You win!"
else
	puts "You lose!"
end	
puts ''





	


