class Game

  def initialize
    Life.rows = Board.rows = 20
    Life.cols = Board.cols = 70
    Board.border = '#'

    @lives = []
    35.times do
      life = Life.new
      life.char = '+'
      @lives << life
    end
    @board = Board.new
  end

  def run
    loop do
      @board.display(@lives)
      move_lives
      sleep 0.5
    end
  end

  private

  def move_lives
    @lives.each { |life| life.move }
  end

end
