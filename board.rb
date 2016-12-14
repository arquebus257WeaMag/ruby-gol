class Board

  def self.rows=(rows)
    @@max_rows = rows
  end
  def self.cols=(cols)
    @@max_cols = cols
  end
  def self.border=(border)
    @@border = border
  end

  def initialize
    set_grid
  end

  def display(lives)
    system('clear')
    set_grid(lives)
    print_border
    print_grid
    print_border
  end

  private

  def init_grid
    @grid = []
    @@max_rows.times { @grid << (' ' * @@max_cols).split('') }
  end

  def set_grid(lives=[])
    init_grid
    lives.each do |life|
      @grid[life.row][life.col] = life.char
    end
  end

  def print_border
    puts @@border * (@@max_cols + 2)
  end

  def print_grid
    @grid.each do |row|
      print "#{@@border}"
      row.each do |col|
        print col
      end
      print "#{@@border}\n"
    end
  end

end
