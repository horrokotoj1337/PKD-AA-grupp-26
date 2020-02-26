module Moves
  where

import Data.Char


type Board = [Square]

data Square = Empty | White Piece | Black Piece

   deriving (Eq, Show)

--data Colour = White | Black
  -- deriving (Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)

--main = undefined


{- move b int1 int2
   moves a piece from the Square corresponding to int1 to the square corresponding to int2 on the board.
   PRE: move need to be valid
   RETURNS: a board where the piece on 'int1' has been moved to 'int2'.
   EXAMPLES: move newBoard 1 2 = [White Rook,Empty,White Pawn,Empty,Empty,Empty,Black Pawn,Black Rook,White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,White Queen,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Queen,White King,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black King,White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,White Rook,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Rook]
-}
move :: Board -> Int -> Int -> Board
move b int1 int2 = let
              removed
                = (take int1 b) ++ [Empty] ++ (drop (int1 + 1) b)
             in (take int2 removed) ++ ((onSquare b int1) : (drop (int2 + 1) b))

{- convert i
   converts an input String into a pair of Int
   Returns: (9, 9) if i = "Rockard" or (x, y) where x is an Int from 1 to 8 intead of a Char from 'a' to 'h' and y = digitToInt y if x, y are positioner on a chess board. Otherwise (10, 10)
   Examples: convert "a1" = (1, 1)
-}
                                                                 
convert :: String -> (Int, Int)
convert (x:y:[]) | ((digitToInt y) <= 8) && ((digitToInt y) >= 1) = ((convertAux x), (digitToInt y))
                 | otherwise = (10, 10)
convert (x:y:ys) | (map toUpper (x:y:ys)) == "ROCKADE" = (9, 9)
                 | otherwise = (10, 10)

{- convertAux x
   Converts a Char between 'a' and 'h' to an Int between 1 and 8
   Returns: An Int between 1 and 8 if the Char is between 'a' and 'h' otherwise 10
   Example: convertAux 'a' = 1
            convertAux 'A' = 1
            convertAux 'h' = 8
            convertAux 'hk' = 10
-}
convertAux :: Char -> Int
convertAux x | (toUpper x) == 'A' = 1
             | (toUpper x) == 'B' = 2
             | (toUpper x) == 'C' = 3
             | (toUpper x) == 'D' = 4
             | (toUpper x) == 'E' = 5
             | (toUpper x) == 'F' = 6
             | (toUpper x) == 'G' = 7
             | (toUpper x) == 'H' = 8
             | otherwise = 10
                 
                 

{- position b i
   converts an input i to the postition corresponding to i on the board b. -- Converts a String of a square from a chess board to an Int.
   PRE: 'b' or 'i' cannot be empty and 'i' needs to be on the form "a1" to "h8" which corresponds to positions on a chess board
   RETURNS: The postition of i in b -- The position of 'i' on a chessboard
   EXAMPLES: position newboard "a1" = 0
-}

position :: (Int, Int) -> Int
position (x, y) = 8 * (x - 1) + y - 1

{- onSquare b i
   converts an input i to the Square that is on the position correspnding to i on the board b using the function position -- Finds which piece is on a square on a
                                                                                                                             chessboard
   PRE: 'b' or 'i' cannot be empty and 'i' needs to be on the form "a1" to "h8" which corresponds to positions on a chess board
   RETURNS: The Square of position i on b
   EXAMPLES: convert newBoard "a1" = White Rook
            convert newBoard "hej" = error
            example of when position is empty
-}

onSquare :: Board -> Int -> Square
onSquare b n = b !! n


{- isSameColour sq1 sq2
   Checks if two Squares are of the same colour
   RETURNS: True if sq1 and sq2 are the same colour. Otherwise False
   EXAMPLES: isSameColour (Empty) (Empty) == False
             isSameColour (White Knight) (White King) == True
             isSameColour (Black Queen) (Black Rook) == True
             isSameColour (Empty) (Empty) == False
-}
isSameColour :: Square -> Square -> Bool  
isSameColour (White _) (White _) = True
isSameColour (Black _) (Black _) = True
isSameColour sq1 sq2             = False

{- validMovePawn board (a, b) (c, d)
   Checks whether it is valid to move a Pawn from (a, b) to (c, d)
   Pre: (a, b) must be a Pawn. (a, b) and (c, d) must be Squares on the board
   Returns: True if the move is valid, otherwise False
   Example: validMovePawn newBoard (1, 2) (1, 3) = True
            validMovePawn newBoard (1, 2) (1, 5) = False
            validMovePawn newBoard (1, 7) (1, 6) = True
-}

validMovePawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMovePawn board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                  | a == c && ((onSquare board (position (c, d))) /= Empty) = False
                                  | (isSameColour (onSquare board (position (a, b))) (White Pawn)) = validMoveWhitePawn board (a, b) (c, d)
                                  | (isSameColour (onSquare board (position (a, b))) (Black Pawn)) = validMoveBlackPawn board (a, b) (c, d)
                                  | otherwise = False


{- validMoveWhitePawn board (a, b) (c, d)
   Checks whether it is a valid to move a White Pawn from (a, b) to (c, d)
   Pre: (a, b) must be a White Pawn
   Returns True if the move is valid, otherwise False
   Example: validMovePawn newBoard (1, 2) (1, 3) = True
            validMovePawn newBoard (1, 2) (1, 5) = False
-}
validMoveWhitePawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveWhitePawn board (a, b) (c, d) | a == c && ((d - b == 1) || ((d - b == 2) && b == 2)) = True
                                       | (abs (a - c)) == 1 && b < d && (onSquare board (position (c, d))) /= Empty = True
                                       | otherwise = False
                                       
                                       

{- validMoveBlackPawn board (a, b) (c, d)
   Checks whether it is a valid to move a White Pawn from (a, b) to (c, d)
   Pre: (a, b) must be a White Pawn
   Returns True if the move is valid, otherwise False
   Example: validMovePawn newBoard (1, 7) (1, 6) = True
            validMovePawn newBoard (1, 7) (1, 4) = False
-}
validMoveBlackPawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveBlackPawn board (a, b) (c, d) | a == c && ((b - d == 1) || ((b - d == 2) && b == 7)) = True
                                       | (abs (a - c)) == 1 && b > d && (onSquare board (position (c, d))) /= Empty = True
                                       | otherwise = False



{- newBoard -- This is a function, should be treated as one.
   Creates a new chessboard
   Returns A list of Square where the first element in the list corresponds to A1 on a chess board, the 9th element corresponds to B1 on a chess board and thr 64th element corresponds to H8 on a chess board
-}
newBoard = [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]


whiterook = '♖'
