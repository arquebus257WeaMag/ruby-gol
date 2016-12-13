class Life

  attr_accessor :char
  attr_reader :row, :col, :size

  def initialize
    @row = (0...40).to_a.sample
    @col = (0...40).to_a.sample
    @size = 1
    @char = '.'
  end

end
