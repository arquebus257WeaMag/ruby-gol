class Life

  attr_accessor :char
  attr_reader :row, :col, :size

  def initialize
    @row = (0...25).to_a.sample
    @col = (0...40).to_a.sample
    @size = 1
    @char = 'x'
  end

  def move
    if true_or_false
      if true_or_false
        @row == 24 ? @row -= 1 : @row +=1
      else
        @row == 0 ? @row += 1 : @row -=1
      end
    else
      if true_or_false
        @col == 39 ? @col -= 1 : @col +=1
      else
        @col == 0 ? @col += 1 : @col -=1
      end
    end
  end

  private

  def true_or_false
    [true, false].sample
  end

end
