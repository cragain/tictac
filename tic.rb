# 1. Make the board of two vertical and 2 horizontal lines
# 2. Setup player moves
# 3. Setup computer moves
# 4. Game continues until all spaces used or someone wins
# 5. Display message that someone won, lost, or tied
require 'pry'


def initialize_board
  b = {}
  (1..9).each{|position| b[position] =''}
  b
end

def draw_board(b)
  puts " #{b[1]} | #{b[2]} | #{b[3]} "
  puts "------------"
  puts " #{b[4]} | #{b[5]} | #{b[6]} "
  puts "------------"
  puts " #{b[7]} | #{b[8]} | #{b[9]} "

end

def empty_squares(b)
  b.select{|k, v| b[k]==''}.keys
end


def player_picks_square(b)
  puts "Pick a Square 1-9"
  position = gets.chomp.to_i
  b[position] = 'X'
end

def computer_picks_square(b)
  position = empty_squares(b).sample
  b[position] = 'O'

end


board = initialize_board


draw_board(board)
player_picks_square(board)
draw_board(board)
computer_picks_square(board)
draw_board(board)
player_picks_square(board)
draw_board(board)
computer_picks_square(board)

begin


end until winner || all_squares_taken?