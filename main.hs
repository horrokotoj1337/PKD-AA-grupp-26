
import Data.Char

type Board = [Square]

data Square = Empty | White Piece | Black Piece

   deriving (Show)

--data Colour = White | Black
  -- deriving (Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Show)

main = undefined

{- move b i o
   moves a piece from the Square corresponding to i to the square corresponding to o on the board..
   RETURNS: a board where the piece on i has been moved to o.
   EXAMPLE: move newBoard "b1" "c1" = [White Rook, White Knight, White Bishop, White Queen, White King, White Bishop, White Knight, White Rook, Empty, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Rook, Black Knight, Black Bishop, Black Queen, Black King, Black Bishop, Black Knight, Black Rook]

-}
move :: Board -> String -> String -> Board
move b i o = let
              removed
                = (take (position b i) b) ++ [Empty] ++ (drop ((position b i) + 1) b)
             in (take (position b o) removed) ++ ((convert b i) : (drop ((position b o) + 1) removed))

{- position b i
   converts an inpit i to the postition corresponding to i on the board b.
   PRE: b or i cannot be empty and i needs to be on the form "a1" to "h8" which corresponds to positions on a chess board
   RETURNS: The postition av i in b
   EXAMPLE: position newboard "a1" = 0
-}

position :: Board -> String -> Int
position b (x:y:xs) | (toUpper x) == 'A' = ((digitToInt y) - 1)
                    | (toUpper x) == 'B' = (8 + (digitToInt y) - 1)
                    | (toUpper x) == 'C' = (16 + (digitToInt y) - 1)
                    | (toUpper x) == 'D' = (24 + (digitToInt y) - 1)
                    | (toUpper x) == 'E' = (32 + (digitToInt y) - 1)
                    | (toUpper x) == 'F' = (40 + (digitToInt y) - 1)
                    | (toUpper x) == 'G' = (48 + (digitToInt y) - 1)
                    | (toUpper x) == 'H' = (56 + (digitToInt y) - 1)

{- convert b i
   converts an input i to the Square that is on the position correspnding to i on the board b using the function position
   PRE: b or i cannot be empty and i needs to be on the form "a1" to "h8" which corresponds to positions on a chess board
   RETURNS: The Square on position i on b
   EXAMPLE: convert newBoard "a1" = White Rook
            convert newBoard "hej" = error
-}

convert :: Board -> String -> Square
convert b i = b !! (position b i)

validMove = undefined

makeMove = undefined

board = undefined

testBoard :: Board -> Board
testBoard [] = [White Knight, Black Rook, Empty, Empty, White King]
testBoard _ = [Empty]

{- newBoard
   Creates a new chessboard
   Returns A list of Square where the first element in the list corresponds to A1 on a chess board, the 9th element corresponds to B1 on a chess board and thr 64th element corresponds to H8 on a chess board
-}
newBoard = [White Rook, White Knight, White Bishop, White Queen, White King, White Bishop, White Knight, White Rook, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Rook, Black Knight, Black Bishop, Black Queen, Black King, Black Bishop, Black Knight, Black Rook]


