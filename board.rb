class Board

  MAX_COLS = 40
  MAX_ROWS = 20
  BORDER = '#'

  def initialize()
    init_board
    @lives = []
  end

  def add_lives(lives)
    if lives.is_a?(Array)
      lives.each { |life| add_life(life) }
    else
      num.times { add_life(Life.new) }
    end
    self
  end

  def print_board
    update_board
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

  def update_board
    init_board
    @lives.each do |life|
      @board_map[life.row][life.col] = life.char
    end
  end

  def print_top
    puts BORDER * (MAX_COLS + 1)
  end

  def add_life(life)
    @lives << life
    update_board
  end

end
