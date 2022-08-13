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
    display_path(find_knight(@ending_point))
  end

  def find_knight(ending_point, queue = [@knight])
    current_node = queue.shift

    if current_node.position == ending_point
      solution_path(current_node)
    else
      current_node.moves.each { |knight| queue << knight }
      find_knight(ending_point, queue)
    end
  end

  def solution_path(node, path = [])
    return path.reverse.unshift(@starting_point) if node.parent.nil?

    path << node.position
    solution_path(node.parent, path)
  end

  def display_path(path)
    p "The knight can get there in #{path.size - 1} moves. Here's the most efficient path:"
    path.each { |position| p position }
  end
end
