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
    # introduction
    # @board.display_board
    @starting_point = starting_point
    # @board.update_state(@starting_point)
    # @board.display_board
    @knight = Knight.new(@starting_point)
    # @ending_point = ending_point
    build_tree(@knight)
  end

  # def check_path(knight = @knight)
  #   if knight.column == @ending_point[1] && knight.row == ending_point[0]
  #     return [knight.row, knight.column]
  #   else
  #   knight.generate
  #   level_order(knight)
  # end

  def build_tree(node, level = 0)
    level += 1
    return if level > 6

    generate_p1(node, level)
  end

  def generate_p1(node, level)
    column = node.column - 1
    row = node.row - 2
    node.p1 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p1, level) unless node.p1.nil?
    generate_p2(node, level)
  end

  def generate_p2(node, level)
    column = node.column - 2
    row = node.row - 1
    node.p2 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p2, level) unless node.p2.nil?
    generate_p3(node, level)
  end

  def generate_p3(node, level)
    column = node.column - 2
    row = node.row + 1
    node.p3 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p3, level) unless node.p3.nil?
    generate_p4(node, level)
  end

  def generate_p4(node, level)
    column = node.column - 1
    row = node.row + 2
    node.p4 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p4, level) unless node.p4.nil?
    generate_p5(node, level)
  end

  def generate_p5(node, level)
    column = node.column + 1
    row = node.row + 2
    node.p5 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p5, level) unless node.p5.nil?
    generate_p6(node, level)
  end

  def generate_p6(node, level)
    column = node.column + 2
    row = node.row + 1
    node.p6 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p6, level) unless node.p6.nil?
    generate_p7(node, level)
  end

  def generate_p7(node, level)
    column = node.column + 2
    row = node.row - 1
    node.p7 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.p7, level) unless node.p7.nil?
    generate_p8(node, level)
  end

  def generate_p8(node, level)
    column = node.column + 1
    row = node.row - 2
    node.p8 = Knight.new([row, column]) if column.between?(0, 7) && row.between?(0, 7)
    build_tree(node.generate_p8, level) unless node.p8.nil?
  end
end
