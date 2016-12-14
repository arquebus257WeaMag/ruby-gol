class Life

  attr_accessor :char
  attr_reader :row, :col, :size

  def self.rows=(rows)
    @@max_rows = rows
  end
  def self.cols=(cols)
    @@max_cols = cols
  end

  def initialize
    p @max_rows
    @row = (1...@@max_rows - 1).to_a.sample
    @col = (1...@@max_cols - 1).to_a.sample
    @size = 1
    @char = 'x'
  end

  def move
    if true_or_false
      if true_or_false
        if true_or_false
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
