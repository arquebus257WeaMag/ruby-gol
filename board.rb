class Board

  MAX_COLS = 40
  MAX_ROWS = 20
  BORDER = '#'

  def initialize(lives=[])
    init_board
    lives.each do |life|
      @board_map[life.row][life.col] = life.char
    end
  end

  def print_board
    system('clear')
    print_top
    @board_map.each do |row|
      row.each do |col|
        print col
      end
      print "#{BORDER}\n"
    end
  end

  private

  def init_board
    @board_map = []
    MAX_ROWS.times { @board_map << (' ' * MAX_COLS).split('') }
  end

  def print_top
    puts BORDER * (MAX_COLS + 1)
  end

end
