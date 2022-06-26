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

  private

  def start
    introduction
    @board.display_board
    @starting_point = starting_point
    @board.update_state(@starting_point)
    @board.display_board
    @knight = Knight.new(@starting_point)
    @ending_point = ending_point
    # check_path
  end

  # def check_path(knight = @knight)
  #   if knight.column == @ending_point[1] && knight.row == ending_point[0]
  #     return [knight.row, knight.column]
  #   else
  #   knight.generate
  #   level_order(knight)
  # end
end
