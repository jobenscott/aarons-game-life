@board = [
["-","-","-"],
["-","-","-"],
["-","-","-"]
]

def nice_board()
	@board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end

@spaces = %w[1 2 3 4 5 6 7 8 9]

def get_spaces(spaces, choice)
	case spaces
	when 1
		@board[0][0] = choice 
		@spaces.delete("1")
	when 2
		@board[0][1] = choice
		@spaces.delete("2")
	when 3
		@board[0][2] = choice
		@spaces.delete("3")
	when 4
		@board[1][0] = choice
		@spaces.delete("4")
	when 5
		@board[1][1] = choice
		@spaces.delete("5")
	when 6
		@board[1][2] = choice
		@spaces.delete("6")
	when 7
		@board[2][0] = choice
		@spaces.delete("7")
	when 8
		@board[2][1] = choice
		@spaces.delete("8")
	when 9
		@board[2][2] = choice
		@spaces.delete("9")
	end
end

def choose_space()
	puts "Chose your spaces!(1-9)"
	my_choice = gets.chomp
	until @spaces.include? my_choice do my_choice = gets.chomp end
	get_spaces(my_choice.to_i, "X")
end

def computers_turn()
	d = rand(1..9)
	until @spaces.include?(d.to_s) do d = rand(1..9) end
	get_spaces(d, "O")
end

def print_board()
	p @board
end

def play_game()
	while @spaces.length > 0

	choose_space()

	computers_turn() if @spaces.length > 0
	nice_board()
	end

  row1 = [@board[0][0], @board[1][0], @board[2][0]]
   row2 = [@board[0][1], @board[1][1], @board[2][1]]
   row3 = [@board[0][2], @board[1][2], @board[2][2]]
   column_array = [row1, row2, row3] 

   @board.each do |row| if (row[0] != '-' && (row[0] == row[1] && row[0] == row[2])) then
  winner == true

  if (winner == true)
  	puts "You did it! Would you like to play again?"
  end


  back_slash = [@board[0][0], @board[1][1], @board[2][2]]
   forward_slash = [@board[2][0], @board[1][1], @board[0][2]]
   diagonal_array = [back_slash, forward_slash]

diagonal_array.each {|row| if (row[0] != '_' && (row[0] == row[1] && row[0] == row[2])) then
 winner = true 
else next end} 
	
	end


	if winner == true
  	puts "You did it! Would you like to play again?"
  	end

end


end
play_game()






