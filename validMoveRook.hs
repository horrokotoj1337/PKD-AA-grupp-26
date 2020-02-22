
--import Data.Char

type Board = [Square]

data Square = Empty | White Piece | Black Piece
   deriving (Eq, Show)


data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)

-- Helper function to validMove

{- validMoveRook board startPos endPos square
   checks whether or not a rook can make a move in chess.
   PRE: 
   RETURNS: True if 'square' can make the nove from 'startPos' to 'endPos' on the Board 'board', else False
   SIDE-EFFECTS: 
   EXAMPLES: 
 -}

validMoveRook :: Board -> (Int, Int) -> (Int, Int) -> Square -> Bool
-- validMoveRook _ _ _ (White _) = 
-- validMoveRook _ _ _ (Black _) =
-- validMoveRook _ _ _ Empty == False -- this should not need to be since this exception should be taken care of in validMove
-- validMoveRook _ _ endPos (White _)   = if endPos returns a White Piece then False
-- validMoveRook _ _ endPos (Black _)   = if endPos returns a Black Piece then False
validMoveRook board (a, b) (c, d) square | (a,b) == (c,d) = False
                                         | a == c = validMoveRookAux board 8 (b-d) (convertTupleToIndex (a,b)) (convertTupleToIndex (c,d)) square
                                         | b == d = validMoveRookAux board 1 (a-d) (convertTupleToIndex (a,b)) (convertTupleToIndex (c,d)) square
                                         | otherwise = False



{- validMoveRookAux b indexchange n indexOfab indexOfcd square
   checks if there is anything in the way when a chess piece moves from one square to another. 
   PRE: 
   RETRUNS: -- Something about square can move to every square with the indexchange to n on b.
   SIDE-EFFECTS: 
   EXAMPLES: 
-}
validMoveRookAux :: Board -> Int -> Int -> Int -> Int -> Square -> Bool -- tuple might be best if changed to their index in Board.
validMoveRookAux b ic 0 ab cd square = if (isSameColour b (convertIntToSquare b cd) square) then False else True
validMoveRookAux b ic n ab cd square | n>0 = True


-- checks if the square on an index is the same colour as the square in the argument. If first Square is same Colour then True else False (False if Empty or enemy)
isSameColour :: Board -> Square -> Square -> Bool  
isSameColour = undefined


-- takes an index in board and converts it to its Square Form (Empty | Black _ | White _)
convertIntToSquare :: Board -> Int -> Square
convertIntToSquare = undefined

-- takes a (Int,Int) tuple and makes it into a boardIndex
convertTupleToIndex :: (Int, Int) -> Int
convertTupleToIndex = undefined
