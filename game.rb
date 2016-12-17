class Game

  def initialize
    Life.rows = Board.rows = 20  # setting rows/cols of both Board
    Life.cols = Board.cols = 70  # and Life objects
    Board.border = '#'  # character for border surrounding board

    @lives = []
    35.times do
      life = Life.new   # lives is an array that holds 35 Life objects
      life.char = '+'   # character representing life set here
      @lives << life
    end
    @board = Board.new
  end

  def run            # the game loop that runs the game
    loop do
      @board.display(@lives)
      move_lives
      sleep 0.5
    end
  end

  private

  def move_lives  # move function defined in life.rb
    @lives.each { |life| life.move }
  end

end
