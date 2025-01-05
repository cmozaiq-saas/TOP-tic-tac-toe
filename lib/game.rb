## Game class for handling the game logic
class Game
  def initialize(board, player1, player2)
    @new = board
    @player1 = player1
    @player2 = player2
  end
end

# user pick a symbol
# user with X set the first cell
# user with O set the second cell
# and so
# we need to take the user input for where he can set the cell
