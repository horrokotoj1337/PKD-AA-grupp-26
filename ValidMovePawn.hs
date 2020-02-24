module ValidMovePawn
  where

import Moves

{- validMovePawn board (a, b) (c, d)
   Checks whether it is valid to move a Pawn from (a, b) to (c, d)
   Pre: (a, b) must be a Pawn. (a, b) and (c, d) must be Squares on the board
   Returns: True if the move is valid, otherwise False
   Example: validMovePawn Moves.newBoard (1, 2) (1, 3) = True
            validMovePawn Moves.newBoard (1, 2) (1, 5) = False
            validMovePawn Moves.newBoard (1, 7) (1, 6) = True
-}

validMovePawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMovePawn board (a, b) (c, d) | (Moves.isSameColour (Moves.onSquare board (Moves.position (a, b))) (Moves.onSquare board (Moves.position (c, d)))) = False
                                  | a == c && ((Moves.onSquare board (Moves.position (c, d))) /= Empty) = False
                                  | (Moves.isSameColour (Moves.onSquare board (Moves.position (a, b))) (White Pawn)) = validMoveWhitePawn board (a, b) (c, d)
                                  | (Moves.isSameColour (Moves.onSquare board (Moves.position (a, b))) (Black Pawn)) = validMoveBlackPawn board (a, b) (c, d)
                                  | otherwise = False


{- validMoveWhitePawn board (a, b) (c, d)
   Checks whether it is a valid to move a White Pawn from (a, b) to (c, d)
   Pre: (a, b) must be a White Pawn
   Returns True if the move is valid, otherwise False
   Example: validMovePawn Moves.newBoard (1, 2) (1, 3) = True
            validMovePawn Moves.newBoard (1, 2) (1, 5) = False
-}
validMoveWhitePawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveWhitePawn board (a, b) (c, d) | a == c && ((d - b == 1) || ((d - b == 2) && b == 2)) = True
                                       | (abs (a - c)) == 1 && b < d && (Moves.onSquare board (Moves.position (c, d))) /= Empty = True
                                       | otherwise = False
                                       
                                       

{- validMoveBlackPawn board (a, b) (c, d)
   Checks whether it is a valid to move a White Pawn from (a, b) to (c, d)
   Pre: (a, b) must be a White Pawn
   Returns True if the move is valid, otherwise False
   Example: validMovePawn Moves.newBoard (1, 7) (1, 6) = True
            validMovePawn Moves.newBoard (1, 7) (1, 4) = False
-}
validMoveBlackPawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveBlackPawn board (a, b) (c, d) | a == c && ((b - d == 1) || ((b - d == 2) && b == 7)) = True
                                       | (abs (a - c)) == 1 && b > d && (Moves.onSquare board (Moves.position (c, d))) /= Empty = True
                                       | otherwise = False
