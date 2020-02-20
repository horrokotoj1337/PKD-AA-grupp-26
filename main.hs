
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
   moves a piece from the Square corresponding to i to the square corresponding to o on the board.. -- Moves a chess piece from one square to another. 
   RETURNS: a board where the piece on 'i' has been moved to 'o'.
   EXAMPLES: move newBoard "b1" "c1" = [White Rook, White Knight, White Bishop, White Queen, White King, White Bishop, White Knight, White Rook, Empty, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Rook, Black Knight, Black Bishop, Black Queen, Black King, Black Bishop, Black Knight, Black Rook]
-}
move :: Board -> String -> String -> Board
move b i o = let
              removed
                = (take (position b i) b) ++ [Empty] ++ (drop ((position b i) + 1) b)
             in (take (position b o) removed) ++ ((convert b i) : (drop ((position b o) + 1) removed))


{- position b i
   converts an input i to the postition corresponding to i on the board b. -- Converts a String of a square from a chess board to an Int.
   PRE: 'b' or 'i' cannot be empty and 'i' needs to be on the form "a1" to "h8" which corresponds to positions on a chess board
   RETURNS: The postition of i in b -- The position of 'i' on a chessboard
   EXAMPLES: position newboard "a1" = 0
-}

position :: Board -> String -> Int -- Board is not used here, is it needed as an argument?
-- should maybe write: position b (x:y:[]), then we could do something with all other invalid inputs
position b (x:y:xs) | (toUpper x) == 'A' = ((digitToInt y) - 1)
                    | (toUpper x) == 'B' = (8 + (digitToInt y) - 1)
                    | (toUpper x) == 'C' = (16 + (digitToInt y) - 1)
                    | (toUpper x) == 'D' = (24 + (digitToInt y) - 1)
                    | (toUpper x) == 'E' = (32 + (digitToInt y) - 1)
                    | (toUpper x) == 'F' = (40 + (digitToInt y) - 1)
                    | (toUpper x) == 'G' = (48 + (digitToInt y) - 1)
                    | (toUpper x) == 'H' = (56 + (digitToInt y) - 1)

{- convert b i
   converts an input i to the Square that is on the position correspnding to i on the board b using the function position -- Finds which piece is on a square on a
                                                                                                                             chessboard
   PRE: 'b' or 'i' cannot be empty and 'i' needs to be on the form "a1" to "h8" which corresponds to positions on a chess board
   RETURNS: The Square of position i on b
   EXAMPLES: convert newBoard "a1" = White Rook
            convert newBoard "hej" = error
            example of when position is empty
-}

convert :: Board -> String -> Square
convert b i = b !! (position b i)


{- validMove b i o -- arguments might change
   Checks if a move is valid or not.
   PRE: 
   RETURNS: True if the chess piece on 'i' can move to 'o' on the board 'b' by the rules of chess, else False
   EXAMPLES: validMove newBoard e4 e5 == False
             validMove newBoard h2 h4 == True -- Pawn on h2 should be able to move 2 steps if it is on its original square. 
             validMove newBoard h2 h3 == True
-}

validMove = undefined

makeMove = undefined -- is this done by 'move'?

board = undefined


{- newBoard -- This is a function, should be treated as one.
   Creates a new chessboard
   Returns A list of Square where the first element in the list corresponds to A1 on a chess board, the 9th element corresponds to B1 on a chess board and thr 64th element corresponds to H8 on a chess board
-}
newBoard = [White Rook, White Knight, White Bishop, White Queen, White King, White Bishop, White Knight, White Rook, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, White Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Pawn, Black Rook, Black Knight, Black Bishop, Black Queen, Black King, Black Bishop, Black Knight, Black Rook]
