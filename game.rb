require_relative 'life'
require_relative 'board'

lives = []
25.times { lives << Life.new }

board = Board.new.add_lives(lives)

loop do
  lives.each { |life| life.move }
  board.print_board
  sleep 1
end
