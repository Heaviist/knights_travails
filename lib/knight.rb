# frozen_string_literal: true

# Initialize a knight on the board. Has 8 possible moves from any position.
class Knight
  attr_accessor :column, :row, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8

  def initialize(position = [0, 0])
    @column = position[1]
    @row = position[0]
    @p1 = nil
    @p2 = nil
    @p3 = nil
    @p4 = nil
    @p5 = nil
    @p6 = nil
    @p7 = nil
    @p8 = nil
  end
end
