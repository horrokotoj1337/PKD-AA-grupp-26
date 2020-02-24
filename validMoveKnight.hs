import Moves

{- validMoveKnight board (a, b) (c, d)
   Checks whether it is valid to move a Knight from (a, b) to (c, d)
   Pre: (a, b) must be a Knight. (a, b) and (c, d) must be Squares on the board
   Returns: True if the move is valid, otherwise False
   Example: validMovePawn Moves.newBoard (1, 2) (1, 3) = False
            validMovePawn Moves.newBoard (1, 2) (1, 5) = False
            validMovePawn Moves.newBoard (2, 1) (1, 3) = True
-}

validMoveKnight :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveKnight board (a, b) (c, d) | (Moves.isSameColour (Moves.onSquare board (Moves.position (a, b))) (Moves.onSquare board (Moves.position (c, d)))) = False
                                    | (abs (a-c)) == 1 && (abs (b-d)) == 2 = True
                                    | (abs (a-c)) == 2 && (abs (b-d)) == 1 = True
                                    | otherwise = False
