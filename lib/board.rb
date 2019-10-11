class Board

  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(user_input)
    @cells[user_input.to_i - 1]
  end

  def full?
    @cells.all? {|filled| filled == "X" || filled == "O"}
  end

  def turn_count
    @cells.count {|turn| turn == "X" || turn == "O"}
  end

  def taken?(position)
    @cells[position] == "X" || @cells[position] == "O"
  end
end
