# frozen_string_literal: true

# Black symbols
square_black = "\u25A0"
king_black = "\u265A"
queen_black = "\u265B"
rook_black = "\u265C"
bishop_black = "\u265D"
knight_black = "\u265E"
pawn_black = "\u265F"

# White symbols
square_white = "\u25A1"
king_white = "\u2654"
queen_white = "\u2655"
rook_white = "\u2656"
bishop_white = "\u2657"
knight_white = "\u2658"
pawn_white = "\u2659"

puts square_white, king_white, queen_white, rook_white, bishop_white, knight_white, pawn_white
puts square_black, king_black, queen_black, rook_black, bishop_black, knight_black, pawn_black

row1 = [rook_white, knight_white, bishop_white, queen_white, king_white, bishop_white, knight_white, rook_white]
row2 = Array.new(8, pawn_white)
row3 = Array.new(8)
row3.each_index do |i|
  row3[i] = if i.even?
              square_black
            else
              square_white
            end
end
row4 = Array.new(8)
row4.each_index do |i|
  row4[i] = if i.even?
              square_white
            else
              square_black
            end
end
row5 = row3
row6 = row4
row7 = Array.new(8, pawn_black)
row8 = [rook_black, knight_black, bishop_black, queen_black, king_black, bishop_black, knight_black, rook_black]

p row1
p row2
p row3
p row4
p row5
p row6
p row7
p row8
