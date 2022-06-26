# frozen_string_literal: true

# Create, control and print the chess board
class Board
  # White symbols
  SQUARE_WHITE = "\u25A1"
  KING_WHITE = "\u265A"
  QUEEN_WHITE = "\u265B"
  ROOK_WHITE = "\u265C"
  BISHOP_WHITE = "\u265D"
  KNIGHT_WHITE = "\u265E"
  PAWN_WHITE = "\u265F"

  # Black symbols
  SQUARE_BLACK = "\u25A0"
  KING_BLACK = "\u2654"
  QUEEN_BLACK = "\u2655"
  ROOK_BLACK = "\u2656"
  BISHOP_BLACK = "\u2657"
  KNIGHT_BLACK = "\u2658"
  PAWN_BLACK = "\u2659"

  attr_accessor :board

  # Use "test" as parameter for Knight's Travails initial state
  def initialize(type = 'game')
    @board = setup_board(type)
  end

  def display_board
    (0..7).each do |i|
      print "#{8 - i} "
      @board[i].each do |j|
        print "#{j} "
      end
      puts "\n"
    end
    puts '  a b c d e f g h'
  end

  private

  def setup_board(type)
    if type == 'test'
      knight_test_board
    else
      normal_game_board
    end
  end

  def normal_game_board
    [row8, row7, even, odd, even, odd, row2, row1]
  end

  def knight_test_board
    [even, odd, even, odd, even, odd, even, odd]
  end

  def row8
    [ROOK_BLACK, KNIGHT_BLACK, BISHOP_BLACK, QUEEN_BLACK, KING_BLACK, BISHOP_BLACK, KNIGHT_BLACK, ROOK_BLACK]
  end

  def row7
    Array.new(8, PAWN_BLACK)
  end

  def row2
    Array.new(8, PAWN_WHITE)
  end

  def row1
    [ROOK_WHITE, KNIGHT_WHITE, BISHOP_WHITE, QUEEN_WHITE, KING_WHITE, BISHOP_WHITE, KNIGHT_WHITE, ROOK_WHITE]
  end

  def odd
    row = Array.new(8)
    row.each_index do |i|
      row[i] = if i.even?
                 SQUARE_WHITE
               else
                 SQUARE_BLACK
               end
    end
    row
  end

  def even
    row = Array.new(8)
    row.each_index do |i|
      row[i] = if i.even?
                 SQUARE_BLACK
               else
                 SQUARE_WHITE
               end
    end
    row
  end
end
