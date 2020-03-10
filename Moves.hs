
--Let Chess In Haskell by Albin Ekroth, Johan Norén, Leo Arnholm and Rickard Forsberg

module Moves
  where

import Data.Char
import Test.HUnit

{- Board
   Represents a chess board that is a list of Square
   INVARIANT: Only one White King and Black King can reside on the board
-}
type Board = [Square]

{- Contester
   Differentiates between two players
   INVARIANT: Must be "White player" or "Black player"
-}
type Contester = String

{- Move
   Representes input for a Square on a Board
-}
type Move = String

{- Square
   Represents a Black Piece, a White Piece or no piece at all (Empty)
-}
data Square = Empty | White Piece | Black Piece
   deriving (Eq, Show)

{- Piece
   Represents different types of chess pieces
-}
data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)


{- convert input
   converts an input String into a pair of two Int's 
   Returns: (9, 9) if map toUpper input = "CASTLING" or (x, y) where x is an Int from 1 to 8 intead of a Char from 'a' to 'h' and y = digitToInt of y if x and y are positions on a chess board. Otherwise (10, 10)
   Examples: convert "a1" = (1, 1)
             convert "A1" = (1, 1)
             convert "h8" = (8, 8)
             convert "castling" = (9,9)
             convert "i9" = (10,10)
             convert "b6" = (2,6)
-}
convert :: String -> (Int, Int)
convert (x:y:[]) | (isNumber y) && ((digitToInt y) <= 8) && ((digitToInt y) >= 1) = ((convertAux x), (digitToInt y))
                 | otherwise = (10, 10)
convert (x:y:ys) | (map toUpper (x:y:ys)) == "CASTLING" = (9, 9)
                 | otherwise = (10, 10)
convert x = (10,10)

{- convertAux x
   Converts a character to an Int
   Returns: An Int between 1 and 8 if x is between 'a' and 'h' otherwise 10 
   Example: convertAux 'a'  = 1
            convertAux 'A'  = 1
            convertAux 'h'  = 8
            convertAux 'i'  = 10
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
                 
{- position (a, b)
   converts a pair of numbers to a number, if both the input numbers are between 1 and 8 they together represent a Square on a Board
   RETURNS: an Int where if a and b represent Squares on a chess board the Int will represent it's position in a list of 64 elements
   EXAMPLES: position (1, 1)  = 0
             position (1, 2)  = 1
             position (2, 1)  = 8
             position (8, 8)  = 63
             position (9, 9)  = 72
             position (1, 24) = 23
             position (0, 0)  = -9
-}
position :: (Int, Int) -> Int
position (x, y) = 8 * (x - 1) + y - 1

{- onSquare board position
   finds the Square on a given position
   PRE: board cannot be empty and position < (length board)
   RETURNS: The Square on position of board
   EXAMPLES: onSquare newBoard 0 = White Rook
             onSquare newBoard 63 = Black Rook
             onSquare newBoard 64 = *** Exception: Prelude.!!: index too large            
-}
onSquare :: Board -> Int -> Square
onSquare board position = board !! position

{- isSameColour square1 square2
   Checks if two Squares are of the same colour
   RETURNS: True if square1 and square2 are of the same colour. Otherwise False
   EXAMPLES: isSameColour Empty Empty == False
             isSameColour (White Knight) (White King) == True
             isSameColour (Black Queen) (Black Rook) == True
             isSameColour (White Knight) (Black Knight) == False
             isSameColour (White Knight) Empty == False
-}
isSameColour :: Square -> Square -> Bool  
isSameColour (White _) (White _) = True
isSameColour (Black _) (Black _) = True
isSameColour square1 square2     = False

{- isSameColourPlayer player square
   Checks if a player and a square are of the same colour
   RETURNS: True if player and square are the same colour. Otherwise False
   EXAMPLES: isSameColourPlayer "White player" (Empty) == False
             isSameColourPlayer "White player" (White King) == True
             isSameColourPlayer "Black player" (Black Rook) == True
             isSameColourPlayer "White player" (Black Rook) == False
             isSameColourPlayer "random string" (Black Rook) == False
-}
isSameColourPlayer :: Contester -> Square -> Bool  
isSameColourPlayer "White player" (White _) = True
isSameColourPlayer "Black player" (Black _) = True
isSameColourPlayer player square            = False

{- move board from to 
   moves a Square from one position to another
   PRE: from must be between 0 and ((length board)-1)
   RETURNS: a board where the Square on from has replaced to and from is now Empty. 
   EXAMPLES: move newBoard 1 2 = [White Rook,Empty,White Pawn,Empty,Empty,Empty,Black Pawn,Black Rook,
                                  White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,
                                  White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,
                                  White Queen,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Queen,
                                  White King,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black King,
                                  White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,
                                  White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,
                                  White Rook,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Rook]
             move [White Rook,Empty,Empty,White Pawn] 0 0 = [White Rook,Empty,Empty,White Pawn]
             move [White Rook,Empty,White Pawn,Empty,Empty,Empty,Black Pawn,Black Rook,
                   White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,
                   White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,
                   White Queen,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Queen,
                   White King,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black King,
                   White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,
                   White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,
                   White Rook,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Rook] 2 3 =
                  [White Rook,Empty,Empty,White Pawn,Empty,Empty,Black Pawn,Black Rook,
                   White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,
                   White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,
                   White Queen,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Queen,
                   White King,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black King,
                   White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,
                   White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,
                   White Rook,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Rook]
             move [White Rook,Empty,Empty,White Pawn] 1 2 = [White Rook,Empty,Empty,White Pawn]
             move [White Rook,Empty,Empty,White Pawn] 10 15 = [White Rook,Empty,Empty,White Pawn,Empty,*** Exception: Prelude.!!: index too large
             move [] 1 2 = [Empty,*** Exception: Prelude.!!: index too large
-}
move :: Board -> Int -> Int -> Board
move board from to = let
                     removed
                      = (take from board) ++ [Empty] ++ (drop (from + 1) board)
                     in (take to removed) ++ ((onSquare board from) : (drop (to + 1) removed))


{- validMove board player from to
   Checks whether a move is valid for the player
   RETURNS: True if a move is valid from "from" to "to" for "player" on "board" otherwise False
   EXAMPLES: validMove newBoard "White player" "a2" "a3" = True
             validMove newBoard "White player" "a2" "a6" = False
             validMove newBoard "Black player" "a7" "a5" = True
             validMove newBoard "White player" "Castling" "b1" = False
-}
validMove :: Board -> Contester -> Move -> Move -> Bool
validMove board player from to | convert from == (9, 9) || convert from == (10, 10) || convert to == (9, 9) || convert to  == (10, 10) = False
                               | isSameColourPlayer player (onSquare board (position (convert from))) == True = validMoveAux board from to
                               | otherwise = False
        --finds the appropriate validMove funciton for the piece on the Square you are trying to move from
        --Returns: True if a move is valid from "from" to "to" for "player" on "board" otherwise False
  where 
    validMoveAux board from to = case onSquare board (position (convert from)) of
                                     White Pawn   -> validMovePawn board (convert from) (convert to)
                                     Black Pawn   -> validMovePawn board (convert from) (convert to)
                                     White Rook   -> validMoveRook board (convert from) (convert to)
                                     Black Rook   -> validMoveRook board (convert from) (convert to)
                                     White Knight -> validMoveKnight board (convert from) (convert to)
                                     Black Knight -> validMoveKnight board (convert from) (convert to)
                                     White Bishop -> validMoveBishop board (convert from) (convert to)
                                     Black Bishop -> validMoveBishop board (convert from) (convert to)
                                     White Queen  -> validMoveQueen board (convert from) (convert to)
                                     Black Queen  -> validMoveQueen board (convert from) (convert to)
                                     White King   -> validMoveKing board (convert from) (convert to)
                                     Black King   -> validMoveKing board (convert from) (convert to)
                                     
{- validMovePawn board (a, b) (c, d)
   Checks whether it is valid to move a Square from one position to another
   PRE: ((position (a, b) && position (c, d)) < (length board))
   RETURNS: True if a move is valid from (a, b) to (c, d) on "board" otherwise False
   Example: validMovePawn newBoard (1, 2) (1, 3) = True
            validMovePawn newBoard (1, 2) (1, 5) = False
            validMovePawn newBoard (1, 7) (1, 6) = True
            validMovePawn newBoard (1,2) (2,57) = *** Exception: Prelude.!!: index too large
-}
validMovePawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMovePawn board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                  | a == c && ((onSquare board (position (c, d))) /= Empty) = False
                                  | (isSameColour (onSquare board (position (a, b))) (White Pawn)) = validMoveWhitePawn board (a, b) (c, d)
                                  | (isSameColour (onSquare board (position (a, b))) (Black Pawn)) = validMoveBlackPawn board (a, b) (c, d)
                                  | otherwise = False


{- validMoveWhitePawn board (a, b) (c, d)
   Checks whether it is valid to move a Square like a White Pawn from one position to another 
   PRE: if (abs (a-c)) == 1 then ((position (c, d)) < (length board) ) else if a == c && ((d - b == 2) && b == 2) then (position (c, (d-1))) < (length board)
   RETURNS: True if the move is valid, otherwise False
   Example: validMoveWhitePawn newBoard (1, 2) (1, 3) = True
            validMoveWhitePawn newBoard (1, 2) (1, 5) = False
            validMoveWhitePawn newBoard (9, 9) (9, 345) = False
-}
validMoveWhitePawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveWhitePawn board (a, b) (c, d) | a == c && ((d - b == 1) || (((d - b == 2) && b == 2) && (onSquare board (position (c, (d-1))) == Empty))) = True
                                       | (abs (a - c)) == 1 && d - b == 1 && (onSquare board (position (c, d))) /= Empty = True
                                       | otherwise = False
                                       
                                       

{- validMoveBlackPawn board (a, b) (c, d)
   Checks whether it is valid to move a Square like a White Pawn from one position to another 
   PRE: if (abs (a-c)) == 1 then ((position (c, d)) < (length board) ) else if a == c && ((b - d  == 2) && b == 7) then (position (c, (d+1))) < (length board)
   RETURNS: True if the move is valid, otherwise False
   Example: validMoveBlackPawn newBoard (1, 7) (1, 6) = True
            validMoveBlackPawn newBoard (1, 7) (1, 4) = False
            validMoveBlackPawn newBoard (9, 9) (9, 345) = False

-}
validMoveBlackPawn :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveBlackPawn board (a, b) (c, d) | a == c && ((b - d == 1) || (((b - d == 2) && b == 7) && (onSquare board (position (c, (d+1))) == Empty))) = True
                                       | (abs (a - c)) == 1 && b - d == 1 && (onSquare board (position (c, d))) /= Empty = True
                                       | otherwise = False

{- validMoveRook board (a, b) (c, d)
   Checks whether it is valid to move a Square like a Rook from one position to another
   PRE: (position (a, b) && position (c, d)) < length board 
   RETURNS: True if the move is valid, otherwise False 
   EXAMPLES: validMoveRook newBoard (1, 2) (1, 4) = True
             validMoveRook newBoard (1, 1) (1, 4) = False
             validMoveRook newBoard (9, 9) (9, 345) = *** Exception: Prelude.!!: index too large
-}
validMoveRook :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveRook board (a, b) (c, d) | isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d))) = False
                                  | a == c = validMoveRookAux board 1 (d-b) (position (a,b)) (onSquare board (position (a, b)))
                                  | b == d = validMoveRookAux board 8 (c-a) (position (a,b)) (onSquare board (position (a, b)))
                                  | otherwise = False

{- validMoveRookAux board indexchange n indexOfab square
   Checks if there is a piece in the way when a chess piece moves from one Square to another like a Rook
   PRE: (indexOfab && indexOfab-indexchange && indexOfab+indexchange) < length board
   RETURNS: True if every Square indexOfab is Empty otherwise False 
   EXAMPLES: validMoveRookAux newBoard 1 0 1 (White Rook) = False
             validMoveRookAux newBoard 1 0 3 (White Rook) = True
-}
-- VARIANT: abs n
validMoveRookAux :: Board -> Int -> Int -> Int -> Square -> Bool -- tuple might be best if changed to their index in Board.
validMoveRookAux b ic 0 ab sq = ((onSquare b ab) == Empty) || (isSameColour (onSquare b ab) sq == False) 
validMoveRookAux b ic n ab sq | (abs n > 1 && n<0) && ((onSquare b (ab-ic)) /= Empty) = False 
                              | (abs n > 1 && n>0) && ((onSquare b (ab+ic)) /= Empty) = False
                              | n>0       = validMoveRookAux b ic (n-1) (ab+ic) sq
                              | otherwise = validMoveRookAux b ic (n+1) (ab-ic) sq 

{- validMoveKnight board (a, b) (c, d)
   Checks whether it is valid to move a Square like a Knight from one position to another
   PRE: (position (a, b) && position (c, d)) < length board 
   RETURNS: True if the move is valid, otherwise False
   Example: validMoveKnight newBoard (1, 2) (1, 3) = False
            validMoveKnight newBoard (1, 2) (1, 5) = False
            validMoveKnight newBoard (2, 1) (1, 3) = True
            validMoveKnight newBoard (9, 9) (9, 9) =  *** Exception: Prelude.!!: index too large
-}
validMoveKnight :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveKnight board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                    | (abs (a-c)) == 1 && (abs (b-d)) == 2 = True
                                    | (abs (a-c)) == 2 && (abs (b-d)) == 1 = True
                                    | otherwise = False


{- validMoveBishop board (a, b) (c, d)
   Checks whether it is valid to move a Square like a Bishop from one position to another
   PRE: (position (a, b) && position (c, d)) < length board and if a > c && b > d then position ((c+1), (d+1)) < length of board, if a > c && b < d then position ((c+1), (d-1)) < length of board,
                                                                if a < c && b < d then position ((c-1), (d-1)) < length of board, if a < c && b > d then position ((c-1), (d+1)) < length of board
   RETURNS: True if the move is valid, otherwise False
   Example: validMoveBishop newBoard (3, 1) (1, 3) = False
            validMoveBishop newBoard (3, 3) (1, 6) = False
            validMoveBishop newBoard (3, 3) (4, 4) = True
            validMoveBishopAux newBoard (3, 3) (1, 57) = False
            validMoveBishopAux newBoard (3, 3) (1, 58) = *** Exception: Prelude.!!: index too large
-}
validMoveBishop :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveBishop board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                    | (abs (a-c)) == 1 && (abs (b-d)) == 1 = True
                                    | (abs (a - c)) == (abs (b - d)) = validMoveBishopAux board (a, b) (c, d)
                                    | otherwise = False

{- validMoveBishopAux board (a, b) (a, b)
   Checks in which direction the recusion for validMoveBishop should continue
   PRE: if a > c && b > d then position ((c+1), (d+1)) < length of board, if a > c && b < d then position ((c+1), (d-1)) < length of board,
        if a < c && b < d then position ((c-1), (d-1)) < length of board, if a < c && b > d then position ((c-1), (d+1)) < length of board
   Returnes: False if a == c || b == d otherwise recursive call on validMoveBishop where (c, d) will be adjusted to be one step closer to (a, b)
   Example: validMoveBishopAux newBoard (3, 1) (1, 3) = False
            validMoveBishopAux newBoard (3, 3) (4, 4) = False
            validMoveBishopAux newBoard (3, 3) (5, 5) = True
            validMoveBishopAux newBoard (1, 1) (1, 57) = False
            validMoveBishopAux newBoard (1, 1) (3, 58) = *** Exception: Prelude.!!: index too large
-}
validMoveBishopAux :: Board -> (Int, Int) -> (Int, Int) -> Bool
--VARIANT: abs (a-c) one recursive call occures when validMoveBishopAux is called a second time by validMoveBishop
validMoveBishopAux board (a, b) (c, d) | a > c && b > d && (onSquare board (position ((c+1), (d+1)))) == Empty = validMoveBishop board (a, b) ((c+1), (d+1))
                                       | a > c && b < d && (onSquare board (position ((c+1), (d-1)))) == Empty = validMoveBishop board (a, b) ((c+1), (d-1))
                                       | a < c && b < d && (onSquare board (position ((c-1), (d-1)))) == Empty = validMoveBishop board (a, b) ((c-1), (d-1))
                                       | a < c && b > d && (onSquare board (position ((c-1), (d+1)))) == Empty = validMoveBishop board (a, b) ((c-1), (d+1))
                                       | otherwise = False

{- validMoveQueen board (a, b) (c, d)
   Checks whether it is valid to move a Square like a Queen from one position to another
   PRE: (position (a, b) && position (c, d)) < length board and if a > c && b > d then position ((c+1), (d+1)) < length of board, if a > c && b < d then position ((c+1), (d-1)) < length of board,
                                                                if a < c && b < d then position ((c-1), (d-1)) < length of board, if a < c && b > d then position ((c-1), (d+1)) < length of board
   Returns True if the move is valid, otherwise False
   Example: validMoveQueen newBoard (4, 1) (4, 3) = False
            validMoveQueen newBoard (3, 3) (4, 4) = True
            validMoveQueen newBoard (4, 1) (4, 9) = False
            validMoveRook newBoard (1,2) (2, 57) = *** Exception: Prelude.!!: index too large
-}
validMoveQueen :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveQueen board (a,b) (c,d) = (validMoveRook board (a,b) (c,d) || validMoveBishop board (a,b) (c,d))

{- validMoveKing board (a, b) (c, d)
   Checks whether it is valid to move a Square like a King from one position to another
   PRE: ((position (a, b) && position (c, d)) < length of boar)
   Returns: True if the move is valid, otherwise False
   Example: validMoveKing newBoard (3, 2) (3, 3) = True
            validMoveKing newBoard (1, 2) (1, 5) = False
            validMoveKing newBoard (3, 3) (2, 57) = *** Exception: Prelude.!!: index too large
-}

validMoveKing :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveKing board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                  | (abs (a-c)) == 1 && (abs (b-d)) == 0 = True
                                  | (abs (a-c)) == 0 && (abs (b-d)) == 1 = True
                                  | (abs (a-c)) == 1 && (abs (b-d)) == 1 = True
                                  | otherwise = False
