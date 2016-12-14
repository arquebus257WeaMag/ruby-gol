class Game

  def initialize
    Board.rows = 20
    Board.cols = 70
    Board.border = '#'
    Life.rows = 20
    Life.cols = 70

    @lives = []
    25.times { @lives << Life.new }
    @board = Board.new
  end

  def run
    loop do
      @board.display(@lives)
      lives_touch
      move_lives
      sleep 0.1
    end
  end

  private

  def move_lives
    @lives.each { |life| life.move }
  end

  def lives_touch
    @lives = @lives.reject do |life|
      touching = (@lives - [life]).select do |other|
        other.col == life.col &&
        other.row == life.row
      end
      !touching.empty?
    end
    p @lives.size
  end

end
