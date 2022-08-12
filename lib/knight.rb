# frozen_string_literal: true

# Initialize a knight on the board. Has 8 possible moves from any position.
class Knight
  MOVES = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2]].freeze

  attr_accessor :position, :moves

  def initialize(position = [0, 0])
    @position = position
    @moves = create_moves(position)
  end

  private

  def create_moves(position, possible_moves = [])
    MOVES.each do |move|
      column = position[0] + move[0]
      row = position[1] + move[1]
      possible_moves << [column, row] if column.between?(0, 7) && row.between?(0, 7)
    end
    possible_moves
  end
end
