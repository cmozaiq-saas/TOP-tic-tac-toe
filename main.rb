# Tic tac toe game
# the game to be played we need:
# - a board (3x3)
# - a player (X or O)
# - a game state (won, lost, ongoing)
# - a function to check if a player has won
# - a function to check if the game is a draw
# - a function to switch the player
# - a function to play the game
# some classes we need:
# - Board and a child class Cell
# - Player
# - Game
# player need to pick either X or O and have a name
# the game will start with player 1 and player 2
# the game will end when either player wins or the game is a draw
# the game will switch player after each move
# the game will track the game state and display the board after each move

require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/board'

def intialize_player()
ahmed = Player.new('Ahmed', 'X')
salah = Player.new('Salah', 'O')
puts ahmed.inspect
puts ahmed.symbol

new_board = Board.new
new_board.display

new_game = Game.new(new_board, ahmed, salah)
puts new_game.inspect

position = ahmed.move_input
new_board.check_input_againts_cell(position)
puts new_board.display

# if input is 1 assign it to [0, 0]
# if input is 2 assign it to [0, 1]
# if input is 3 assign it to [0, 2]
# if input is 4 assign it to [1, 0]
# if input is 5 assign it to [1, 1]
# and so on
