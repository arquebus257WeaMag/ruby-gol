class Life
  # char is character that represents live
  # board coordinate set in loop that makes
  attr_accessor :char  # game objects in game.rb
  attr_reader :row, :col, :size set in game.rb

  def self.rows=(rows) # number of @@max_rows is set in game.rb
    @@max_rows = rows
  end
  def self.cols=(cols) # number of @@max_cols is set in game.rb
    @@max_cols = cols
  end

  def initialize
    @row = (1...@@max_rows - 2).to_a.sample # sets array of random number
    @col = (1...@@max_cols - 2).to_a.sample # that are the size of the board
    @size = 1   # in order to place life character randomly in board
    @moves = 0
    @char = '.'
  end

  def move
    if true_or_false  # 50/50 chance of moving object each frame
      @moves += 1  # why do we need to keep track of number of moves?
      if true_or_false  # 25/100 chance will move object
        if true_or_false  # now guaranteed to move object
          @row == @@max_rows - 2 ? @row -= 1 : @row +=1
        else
          @row == 1 ? @row += 1 : @row -=1
        end
      else
        if true_or_false
          @col == @@max_cols - 2 ? @col -= 1 : @col +=1
        else
          @col == 1 ? @col += 1 : @col -=1
        end
      end
    end
  end

  private

  def true_or_false
    [true, false].sample
  end

end
