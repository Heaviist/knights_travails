# frozen_string_literal: true

# Provides text blocks for the Knight's travails program
module Texts
  AVAILABLE_COLUMNS = [*'a'..'h'].freeze
  # AVAILABLE_ROWS = [*(1..8)].freeze

  def introduction
    print "Welcome to Knight's travails. A small program that can find the shortest path for a chess knight "
    print "from one square to an other.\nTry to figure out the shortest route yourself first, "
    print "then see what the program says.\n"
  end

  def starting_point
    column = chosen_column
    row = chosen_row
    [column, row]
  end

  def ending_point
    column = chosen_column('end')
    row = chosen_row('end')
    [column, row]
  end

  private

  def chosen_column(point = 'start')
    puts 'In what column do you want to place the Knight? (choose from a - h)' unless point == 'end'
    puts 'To what column do you want the Knight to move? (choose from a - h)' if point == 'end'
    column = gets.chomp.downcase
    if AVAILABLE_COLUMNS.include?(column)
      AVAILABLE_COLUMNS.find_index(column)
    else
      puts 'Choose a correct column!'
      chosen_column
    end
  end

  def chosen_row(point = 'start')
    puts 'In what row do you want to place the Knight? (choose from 1 - 8)' unless point == 'end'
    puts 'To what row do you want the Knight to move? (choose from 1 - 8)' if point == 'end'
    row = gets.chomp.to_i
    if row.between?(1, 8)
      row - 1
    else
      puts 'Choose a correct row!'
      chosen_row
    end
  end
end
