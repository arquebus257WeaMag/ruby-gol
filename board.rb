class Board

  def self.rows=(rows)
    @@max_rows = rows
  end
  def self.cols=(cols)
    @@max_cols = cols
  end
  def self.border=(border)  # border character set in game.rb
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
    @grid = []   # makes 2-dim array of max_rows/max_cols with spaces
    @@max_rows.times { @grid << (' ' * @@max_cols).split('') }
  end

  def set_grid(lives=[])  # lives 2-dim array is passed in display method
    init_grid             # display method is exported, lives
    lives.each do |life|  # is an external variable from life.rb
      @grid[life.row][life.col] = life.char  # lives is 2-dim array
    end   # of numbers which are coordinates for placing life character
  end

  def print_border  # prints top and bottom row of border characters
    puts @@border * (@@max_cols + 2)  # in display method
  end

  def print_grid
    @grid.each do |row|
      print "#{@@border}"  # @@border is 1 character put on
      row.each do |col|    # each end of row, its set in game.rb
        print col   #
      end
      print "#{@@border}\n"
    end
  end

end
