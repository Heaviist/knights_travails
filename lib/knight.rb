# frozen_string_literal: true

# Initialize a knight on the board. Has 8 possible moves from any position.
class Knight
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

  def generate
    p1
    p2
    p3
    p4
    p5
    p6
    p7
    p8
  end

  def p1
    column = @column - 1
    row = @row - 2
    @p1 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p2
    column = @column - 2
    row = @row - 1
    @p2 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p3
    column = @column - 2
    row = @row + 1
    @p3 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p4
    column = @column - 1
    row = @row + 2
    @p4 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p5
    column = @column + 1
    row = @row + 2
    @p5 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p6
    column = @column + 2
    row = @row + 1
    @p6 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p7
    column = @column + 2
    row = @row - 1
    @p7 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end

  def p8
    column = @column + 1
    row = @row - 2
    @p8 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
  end
end
