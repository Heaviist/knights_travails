# frozen_string_literal: true

# Initialize a knight on the board. Has 8 possible moves from any position.
class Knight
  MOVES = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2]].freeze

  attr_accessor :position, :moves

  def initialize(starting_point = [0, 0], level = 0)
    @position = starting_point
    @level = level
    @moves = []
    build_tree(possible_moves(position))
  end

  private

  def possible_moves(position, valid_moves = [])
    MOVES.each do |move|
      column = position[0] + move[0]
      row = position[1] + move[1]
      valid_moves << [column, row] if column.between?(0, 7) && row.between?(0, 7)
    end
    valid_moves
  end

  def build_tree(possible_moves)
    return if @level == 6

    new_level = @level + 1
    possible_moves.each do |position|
      moves << Knight.new(position, new_level)
    end
  end
end
