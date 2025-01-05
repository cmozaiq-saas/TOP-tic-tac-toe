## Board class
class Board
  def initialize
    @board = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
  end

  def display
    puts "#{@board[0][0]} |#{@board[0][1]} |#{@board[0][2]}"
    puts '--------------'
    puts "#{@board[1][0]} |#{@board[1][1]} |#{@board[1][2]}"
    puts '--------------'
    puts "#{@board[2][0]} |#{@board[2][1]} |#{@board[2][2]}"
  end

  def check_input_againts_cell(input)
    case input
    when 1
      @board[0][0] = input
    when 2
      @board[0][1] = input
    when 3
      @board[0][2] = input
    when 4
      @board[1][0] = input
    when 5
      @board[1][1] = input
    when 6
      @board[1][2] = input
    when 7
      @board[2][0] = input
    when 8
      @board[2][1] = input
    when 9
      @board[2][2] = input
    end
  end

  def full?
    @cell.all? { |row| row.all? { |cell| !cell.nil? } }
  end
end

# intialize a board
# a board must have 9 cells (3x3)
# a board must be 2D
# the cells must be numbered from 1 to 9
# each cells must have a state of either empty, X, or O
