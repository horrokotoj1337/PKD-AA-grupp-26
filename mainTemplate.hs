import Data.Char


type Board = [Square]

data Square = Empty | White Piece | Black Piece

   deriving (Eq, Show)

--data Colour = White | Black
  -- deriving (Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)


{- main
   SIDE-EFFECTS: Printing out lines

-}
-- main :: IO...
-- main

{-
create a newBoard
print lines with rules and/or instructions
-}

{-
call play (inspiration from Nim.hs) which plays the chess game until it is finished
call playTurn/turn/turnPlayer1


{- makeAMove
   SIDE-EFFECTS: Asking for an input and printing out lines
-}
call to makeAMove. Arguments: Board (and maybe White since player 1's turn)
getLine (startPos, endPos). (If startPos not holding White piece then InvalidMove and repeat getLine somehow, this might be done in validMove)

call to validMove with the arguments: Board, startPos, endPos, White. (might want to convert startPos and endPos to something easier to handle for our functions
if White is necessary). If validMove returns False -> InvalidMove and repeat getLine somehow, else continue.

call to move. Arguments: Board, startPos, endPos. Which returns an updated board.

(Somewhere in these calls a call to check if you put yourself into check might get added)

call to isCheck. Arguments: Board, (possibly Black King). Checks if Black King is in check. If True then print something that tells the players Black King
is in check

Now graphics or other representation of the board should be updated to the new board. (This might happen before isCheck is called)

Player 1's turn is now over. (Maybe a check somewhere if Black King still exists on board, this might be done earlier by checking if endPos holds Black King
and validMove returns True)
-}

{-
Player 2 should now be able to make their move. (unless player 1 wins)

Everything should work the same. However, instead validMove should check if endPos is White instead and isCheck should check White King. StartPos should
also be checked to see if Black piece. 

-}


{- main with influence of Nim.hs (Lab 15)
-}
main :: IO ()
main = do
  putStrLn "Wellcome to Chess."

  play newBoard



-- play can take inspiration from Nim.hs (lab 15). (In Nim.hs it is play that does most of the work.)
play = undefined


newBoard = undefined

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
