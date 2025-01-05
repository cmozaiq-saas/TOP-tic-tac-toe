## Player class
class Player
  attr_reader :name, :symbol

  X = 'X'
  O = 'O'

  def initialize(name, symbol)
    raise ArgumentError 'Enter a valid name, empty input are not accepeted' unless name.is_a?(String) && !name.empty?

    @name = name

    raise ArgumentError 'Enter a valid symbol' unless [X, O].include?(symbol)

    @symbol = symbol
  end

  def move_input
    puts 'Pick a number between 1 & 9'
    loop do
      puts 'Enter a valid number between 1 & 9'
      input = gets.chomp
      return input.to_i if valid_move?(input)

      puts 'Invalid input. Please enter a number between 1 and 9.'
    end
  end

  def valid_move?(input)
    input =~ /^[1-9]$/ # Check if input is a single digit between 1 and 9
  end
end
