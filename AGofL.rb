# Aaron's game of life

# Tasks: 
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix(any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) rows x max(100) columns, based on user input
# 	With values only being ' ' and '0'
# 05. Test if cells are alive or not (' ' is dead and '0' is alive)
# 06. Apply rules of conways game of life - part 1
# 	count living cells surrounding each element in matrix
# 07. apply rules of conways game of life - part 2
# 	creat new matix with rules applied, display it and iterate it for 10 times
# 	Rules:
# 		Any live cell with fewer than two live neighbours dies, as if caused by under-population.
# 		Any live cell with two or three live neighbours  lives on to the next generation.
# 		Any live cell with more than three live neighbours dies, as if by overcrowding.
# 		Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

# 	Extra 01. Use n tierations
# 	Extra 02. Fix menus and presentation
# 	Extra 03. Let user decide what percentage of board to fill with '0' at the beginning
# 	Extra 04. Move classes to files of their own

@board1 = [
	[' ',' ','0',' ','0',' ','0',' ',' ',' '],
	['0',' ',' ','0','0','0','0',' ',' ','0'],
	[' ','0','0','0','0',' ',' ',' ','0',' '],
	[' ','0',' ','0',' ',' ','0',' ','0',' '],
	['0',' ',' ','0','0','0','0',' ',' ','0'],
	[' ','0','0','0','0',' ',' ',' ','0',' '],
	[' ','0','0','0','0',' ',' ',' ','0',' '],
	[' ','0',' ','0',' ',' ','0',' ','0',' '],
	[' ',' ','0',' ','0',' ','0',' ',' ',' '],
	['0',' ',' ','0','0','0','0',' ',' ','0']
]

@board2 = [
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
[' ',' ',' ',' ',' ',' ',' ',' ',' ',' ']
]

puts "Would you like to generate a new matrix?"

def nice_board

@board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end


cell = @board1.each_with_index do |row, row_index|
  row.each_with_index do |col, col_index|
  end
end

# condition ? true : false

def check_neighbours(x, y)
  neighbours = [
    @board1[x - 1 > 0 ? x - 1 : 9][y - 1 > 0 ? y - 1 : 9],
    @board1[x][y - 1 > 0 ? y - 1 : 0], 
    @board1[x + 1 < 10 ? x + 1 : 0][y - 1 > 0 ? y - 1 : 9], 
    @board1[x - 1 > 0 ? x - 1 : 9][y], 
    @board1[x + 1 < 10 ? x + 1 : 0][y], 
    @board1[x - 1 > 0 ? x - 1 : 9][y + 1 < 10 ? y + 1 : 0], 
    @board1[x][y + 1 < 10 ? y + 1 : 0], 
    @board1[x + 1 < 10 ? x + 1 : 0][y + 1 < 10 ? y + 1 : 0]
  ]

  if @board1[x, y] == '0'
    @neighbours.each do |cell|
      if cell == '0'
        count += 1
      end

    end
  end
  if @board1[x][y] == '0'
    && count < 2
    @board2[x][y] == ' '
  end
  if @board1[x][y] == '0'
    && count > 3
    @board2[x][y] == ' '
  end
  if @board1[x][y] == '0'
    && count == (2 || 3)
    @board2[x][y] == '0'
  end
  if @board1[x][y] == ' ' 
    && (count == 3)
    @board2[x][y] == '0'
  end
end

#   if ((@neighbour == '0') && @neighbour < 2)
#     cell == ' '
#   end
#   if (@neighbour == '0') && > 3)
#     cell == ' '
#   end
#   if (@neighbour == '0' (&& @neighbour = (2 || 3)))
#     cell == cell
#   end
#   if (@neighbour == ' ' (&& )
#     && @neighbours

# end

check_neighbours













