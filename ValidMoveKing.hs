module ValidMoveKing
  where

import Moves

{- validMoveKing board (a, b) (c, d)
   Checks whether it is valid to move a King from (a, b) to (c, d)
   Pre: (a, b) must be a King. (a, b) and (c, d) must be Squares on the board
   Returns: True if the move is valid, otherwise False
   Example: validMoveKing Moves.newBoard (3, 2) (3, 3) = True
            validMoveKing Moves.newBoard (1, 2) (1, 5) = False
            validMoveKing [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, Black King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook] (5, 1) (6, 1) = True
-}

validMoveKing :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveKing board (a, b) (c, d) | (Moves.isSameColour (Moves.onSquare board (Moves.position (a, b))) (Moves.onSquare board (Moves.position (c, d)))) = False
                                  | ((abs (a-c)) <= 1 || (abs (a-c)) >= 0) && ((abs(b-d)) <= 1 || (abs (b-d) <= 0)) = True
                                  | otherwise = False
