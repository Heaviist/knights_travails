# frozen_string_literal: true

require_relative './board'
require_relative './knight'
require_relative './interactions'

# Initialize a new game
class ChessGame
  include Texts

  def initialize
    introduction
    @board = Board.new('test')
    @board.display_board
    p starting_point
    # @knight = Knight.new
  end
end
