data Square = Empty | White Piece | Black Piece

   deriving (Eq, Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)

newBoard :: IO Board
newBoard = return [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]

convertPieces :: Board -> Char
convertPieces [White Rook] = '♖'

main :: IO ()
main = do
  putStrLn "Welcome players to haskell-chess!"
  currentBoard <- newBoard
  play currentBoard


play newBoard = do
  printCurrentBoard newBoard
  
printCurrentBoard :: Board -> IO ()
printCurrentBoard y = do --Add a call to convertPieces
  putStrLn ("1 2 3 4 5 6 7 8")
  putStrLn ("A" ++ show (take 8 y))
  putStrLn ("B" ++ show (take 8 (drop 8 y)))
  putStrLn ("C" ++ show (take 8 (drop 16 y)))
  putStrLn ("D" ++ show (take 8 (drop 24 y)))
  putStrLn ("E" ++ show (take 8 (drop 32 y)))
  putStrLn ("F" ++ show (take 8 (drop 40 y)))
  putStrLn ("G" ++ show (take 8 (drop 48 y)))
  putStrLn ("H" ++ show (take 8 (drop 56 y)))
  
  

  
-- printa newBoard
-- call player1 move
-- call player2 move
-- call if chess
-- call victory

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
