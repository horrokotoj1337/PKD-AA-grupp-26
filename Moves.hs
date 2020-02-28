module Moves
  where

import Data.Char
import Test.HUnit


type Board = [Square]

type Contester = String

type Move = String

data Square = Empty | White Piece | Black Piece

   deriving (Eq, Show)

--data Colour = White | Black
  -- deriving (Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)


{- move b int1 int2
   -- moves a chess piece from one square to another. 
   moves a piece from the Square corresponding to int1 to the square corresponding to int2 on the board.
   PRE: move need to be valid          -- not a precondtion?
   RETURNS: a board where the piece on 'int1' has been moved to 'int2'.  -- + the place 'int1' becomes 'Empty' and the place on 'int2' gets the Square value of wher 'int1' initially was/were. 
   EXAMPLES: move newBoard 1 2 = [White Rook,Empty,White Pawn,Empty,Empty,Empty,Black Pawn,Black Rook,White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,White Queen,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Queen,White King,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black King,White Bishop,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Bishop,White Knight,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Knight,White Rook,White Pawn,Empty,Empty,Empty,Empty,Black Pawn,Black Rook]

++ more examples
-}
move :: Board -> Int -> Int -> Board
move b int1 int2 = let
              removed
                = (take int1 b) ++ [Empty] ++ (drop (int1 + 1) b)
             in (take int2 removed) ++ ((onSquare b int1) : (drop (int2 + 1) removed))

{- convert i
   converts an input String into a pair of two Int's 
   Returns: (9, 9) if i = "Rockade" or (x, y) where x is an Int from 1 to 8 intead of a Char from 'a' to 'h' and y = digitToInt y if x, y are positioner on a chess board. Otherwise (10, 10)   --            x is head of i converted to an int                                          y is seconde element of i
   Examples: convert "a1" = (1, 1)
             convert "h8" == (8, 8)
             convert "rockade" == (9,9)
             convert "i9" == (10,10)
             convert "b6" == (2,6)
-}
                                                                 
convert :: String -> (Int, Int)
convert []       = (10, 10) -- not needed
convert (x:[])   = (10, 10) -- not needed if convert x = (10,10) is added to the end -- **
convert (x:y:[]) | (isNumber y) && ((digitToInt y) <= 8) && ((digitToInt y) >= 1) = ((convertAux x), (digitToInt y))
                 | otherwise = (10, 10)
convert (x:y:ys) | (map toUpper (x:y:ys)) == "ROCKADE" = (9, 9)
                 | otherwise = (10, 10)
--  **convert x = (10,10)


{- convertAux x
   Converts a Char between 'a' and 'h' to an Int between 1 and 8
   Returns: An Int between 1 and 8 if the Char is between 'a' and 'h' otherwise 10    -- Char should be replaced with x
   Example: convertAux 'a'  = 1
            convertAux 'A'  = 1
            convertAux 'h'  = 8
            convertAux 'hk' = 10
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

{-{- pieceOnSquare Square
   Checks what piece is on the Square
   PRE: Square can not be Empty
   Returns: thr Piece that is on the Square
   Example pieceOnSquare Black Pawn = Pawn
-}
pieceOnSquare :: Square -> Piece
pieceOnSquare square | square == -}


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

{- isSameColourPlayer player square
   Checks if a player and a piece on a square are the same colour
   RETURNS: True if player and square are the same colour. Otherwise False
   EXAMPLES: isSameColourPlayer "White player" (Empty) == False
             isSameColourPlayer "White player" (White King) == True
             isSameColourPlayer "Black player" (Black Rook) == True
             isSameColourPlayer "White player" (Black rook) == False
-}
isSameColourPlayer :: Contester -> Square -> Bool  
isSameColourPlayer "White player" (White _) = True
isSameColourPlayer "Black player" (Black _) = True
isSameColourPlayer player square            = False

{- validMove board player (a, b) (c, d)
   Checks whether it is valid for player to move the piece on (a, b) to (c, d) on the board
   PRE: a, b, c or d must be between 1 and 8
   Returns: True if the move is valid. False if the move is not valid.
-}
validMove :: Board -> Contester -> Move -> Move -> Bool
validMove board player input output | convert output == (9, 9) || convert output == (10, 10) = False
                                    
                                    | isSameColourPlayer player (onSquare board (position (convert input))) == True = validMoveAux board input output
                                    | otherwise = False

{- validMoveAux board input output
   Finds the appropriate validMove function for the piece on the input square
   Returns: The right function -}
validMoveAux board input output = case onSquare board (position (convert input)) of
                                    White Pawn   -> validMovePawn board (convert input) (convert output)
                                    Black Pawn   -> validMovePawn board (convert input) (convert output)
                                    White Rook   -> validMoveRook board (convert input) (convert output)
                                    Black Rook   -> validMoveRook board (convert input) (convert output)
                                    White Knight -> validMoveKnight board (convert input) (convert output)
                                    Black Knight -> validMoveKnight board (convert input) (convert output)
                                    White Bishop -> validMoveBishop board (convert input) (convert output)
                                    Black Bishop -> validMoveBishop board (convert input) (convert output)
                                    White Queen  -> validMoveQueen board (convert input) (convert output)
                                    Black Queen  -> validMoveQueen board (convert input) (convert output)
                                    White King   -> validMoveKing board (convert input) (convert output)
                                    Black King   -> validMoveKing board (convert input) (convert output)

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

{- validMoveRook board startPos endPos
   checks whether or not a rook can make a move in chess.
   PRE: 
   RETURNS: True if 'square' can make the nove from 'startPos' to 'endPos' on the Board 'board', else False
   SIDE-EFFECTS: 
   EXAMPLES:
DOES NOT WORK WHEN TRYING TO MOVE A ROOK TO A PLACE WHERE YOU CAN MOVE IT
SEEMS TO ALWAYS RETURN FALSE
 -}
validMoveRook :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveRook board (a, b) (c, d) | isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d))) = False
                                  -- 1 and 8 to check all squares on that line
                                  | a == c = validMoveRookAux board 1 (d-b) (position (a,b)) (position (c,d)) (onSquare board (position (a, b)))
                                  -- 1 and 8 to check horizontal/vertical line
                                  | b == d = validMoveRookAux board 8 (c-a) (position (a,b)) (position (c,d)) (onSquare board (position (a, b)))
                                  ----- board 1 (a-c) instead of (a-d)
                                  | otherwise = False

{- validMoveRookAux b indexchange n indexOfab indexOfcd square
   checks if there is anything in the way when a chess piece moves from one square to another. 
   PRE: 
   RETRUNS: -- Something about square can move to every square with the indexchange to n on b.
   SIDE-EFFECTS: 
   EXAMPLES: 
-}
-- VARIANT: n
validMoveRookAux :: Board -> Int -> Int -> Int -> Int -> Square -> Bool -- tuple might be best if changed to their index in Board.
validMoveRookAux b ic 0 ab cd sq = ((onSquare b ab) == Empty) || (isSameColour (onSquare b ab) sq == False) ------ cd not needed
validMoveRookAux b ic n ab cd sq | (abs n > 1 && n<0) && ((onSquare b (ab-ic)) /= Empty) = False -- change to cd instead of ab? 
                                 | (abs n > 1 && n>0) && ((onSquare b (ab+ic)) /= Empty) = False
                                 | n>0       = validMoveRookAux b ic (n-1) (ab+ic) cd sq
                                 | otherwise = validMoveRookAux b ic (n+1) (ab-ic) cd sq -- n-1 changed to n+1

{- validMoveKnight board (a, b) (c, d)
   Checks whether it is valid to move a Knight from (a, b) to (c, d)
   Pre: (a, b) must be a Knight. (a, b) and (c, d) must be Squares on the board
   Returns: True if the move is valid, otherwise False
   Example: validMovePawn Moves.newBoard (1, 2) (1, 3) = False
            validMovePawn Moves.newBoard (1, 2) (1, 5) = False
            validMovePawn Moves.newBoard (2, 1) (1, 3) = True
-}

validMoveKnight :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveKnight board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                    | (abs (a-c)) == 1 && (abs (b-d)) == 2 = True
                                    | (abs (a-c)) == 2 && (abs (b-d)) == 1 = True
                                    | otherwise = False


{- validMoveBishop board (a, b) (c, d)
   Checks whether it is a valid to move a Bishop from (a, b) to (c, d)
   Pre: (a, b) must be a Bishop. (a, b) and (c, d) must be on the board.
   Returns True if the move is valid, otherwise False
   Example:
-}
validMoveBishop :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveBishop board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                    | (abs (a-c)) == 1 && (abs (b-d)) == 1 = True
                                    | (abs (a - c)) == (abs (b - d)) = validMoveBishopAux board (a, b) (c, d)
                                    | otherwise = False

{- validMoveBishopAux board (a, b) (a, b)
   Checks in which direction the recusion for validMoveBishop should continue
   Returnes: validMoveBishope board (a, b) (c, d) where (c, d) is an updated output one step closer to the input.
-}
validMoveBishopAux :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveBishopAux board (a, b) (c, d) | a > c && b > d = validMoveBishop board (a, b) ((c+1), (d+1))
                                       | a > c && b < d = validMoveBishop board (a, b) ((c+1), (d-1))
                                       | a < c && b < d = validMoveBishop board (a, b) ((c-1), (d-1))
                                       | a < c && b > d = validMoveBishop board (a, b) ((c-1), (d+1))

{- validMoveQueen board (a, b) (c, d)
   Checks whether it is a valid to move a Queen from (a, b) to (c, d)
   Pre: (a, b) must be a Queen. (a, b) and (c, d) must be on the board.
   Returns True if the move is valid, otherwise False
   Example:
-}
validMoveQueen :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveQueen board (a,b) (c,d) = (validMoveRook board (a,b) (c,d) || validMoveBishop board (a,b) (c,d))

{- validMoveKing board (a, b) (c, d)
   Checks whether it is valid to move a King from (a, b) to (c, d)
   Pre: (a, b) must be a King. (a, b) and (c, d) must be Squares on the board
   Returns: True if the move is valid, otherwise False
   Example: validMoveKing Moves.newBoard (3, 2) (3, 3) = True
            validMoveKing Moves.newBoard (1, 2) (1, 5) = False
            validMoveKing [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, Black King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook] (5, 1) (6, 1) = True
-}

validMoveKing :: Board -> (Int, Int) -> (Int, Int) -> Bool
validMoveKing board (a, b) (c, d) | (isSameColour (onSquare board (position (a, b))) (onSquare board (position (c, d)))) = False
                                  | ((abs (a-c)) <= 1 || (abs (a-c)) >= 0) && ((abs(b-d)) <= 1 || (abs (b-d) <= 0)) = True
                                  | otherwise = False


whiterook = '♖'


-- Testcases:
testBoard :: [Square]
testBoard = [Empty, Empty, White Rook, White Pawn, Black Pawn, Empty, Empty, Empty,
             White Knight, White Pawn, Empty, Empty, Black Pawn, Empty, Empty, Empty,
             White Bishop, Empty, White Queen, Empty, Empty, Black Rook, Empty, Empty,
             Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black King, 
             White King, Empty, Empty, White Pawn, Empty, Empty, Empty, Empty, 
             Empty, Empty, Empty, Empty, Empty, Empty, Black King, Empty, 
             Empty, Black Queen, Empty, Empty, White Knight, Black Pawn, Black Rook, 
             Empty, Empty, Empty, White Rook, White Bishop, Empty, Empty, Empty]

testvalidMoveRook1 = TestCase (assertEqual "Move from one square to the same square" False (validMoveRook (testBoard) (1,1) (1,1)))

{-
testvalidMoveRook2 = TestCase (assertEqual "for Qsort []" [] (validMoveRook testBoard (1,1) (1,1)))


testvalidMoveRook3 = TestCase (assertEqual "for Qsort [1,6,5,3,2,4]" [1,2,3,4,5,6] (validMoveRook testBoard (1,1) (1,1)))


testvalidMoveRook4 = TestCase (assertEqual "for Qsort [4]" [4] (validMoveRook testBoard (1,1) (1,1)))


testvalidMoveBishop1 = TestCase (assertEqual "for Qsort [4]" [4] (validMoveBishop testBoard (1,1) (1,1)))


testvalidMoveBishop2 = TestCase (assertEqual "for Qsort [4]" [4] (validMoveBishop testBoard (1,1) (1,1)))

testvalidMoveBishop3 = TestCase (assertEqual "for Qsort [4]" [4] (validMoveBishop testBoard (1,1) (1,1)))

testvalidMoveBishop4 = TestCase (assertEqual "for Qsort [4]" [4] (validMoveBishop testBoard (1,1) (1,1)))



testvalidMovePawn1 = TestCase (assertEqual "for Qsort [4]" [4] (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn2 = TestCase (assertEqual "for Qsort [4]" [4] (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn3 = TestCase (assertEqual "for Qsort [4]" [4] (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn4 = TestCase (assertEqual "for Qsort [4]" [4] (validMovePawn testBoard (1,1) (1,1)))
-}



--tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2, TestLabel "test3" test3, TestLabel "test4" test4]
--testsvalidMoveRook   = TestList [testvalidMoveRook1, testvalidMoveRook2, testvalidMoveRook3, testvalidMoveRook4]
--testsvalidMoveBishop = TestList [testvalidMoveBishop1, testvalidMoveBishop2, testvalidMoveBishop3, testvalidMoveBishop4]
--testsvalidMovePawn   = TestList [testvalidMovePawn1, testvalidMovePawn2, testvalidMovePawn3, testvalidMovePawn4]


--runtests = runTestTT tests
--runtests2 = runTestTT tests2

