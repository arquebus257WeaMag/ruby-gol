require_relative 'life'
require_relative 'board'

lives = []
25.times { lives << Life.new }

Board.new.add_lives(50).print_board
