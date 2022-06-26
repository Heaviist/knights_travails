# frozen_string_literal: true

require_relative './board'
require_relative './knight'
require_relative './interactions'

# Initialize a new game
class ChessGame
  include Texts

  def initialize
    @board = Board.new('test')
    start
  end

  def start
    introduction
    @board.display_board
    @starting_point = starting_point
    @board.update_state(@starting_point)
    @board.display_board
    @knight = Knight.new(@starting_point)
    # @ending_point = ending_point
    @knight.generate
    p @knight
  end
end
