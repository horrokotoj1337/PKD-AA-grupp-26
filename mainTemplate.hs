import Data.Char
import Moves


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
  



-- play can take inspiration from Nim.hs (lab 15). (In Nim.hs it is play that does most of the work.)
play = undefined

{- turn player board
   Administers the turn
   Returns: the next turn for the other player if there is a valid move. The turn for the same player if the move is invalid. Main if the player quits.
-}
turn :: Moves.Contester -> Moves.Board -> IO ()
turn player board = do
  print board
  putStrLn (player ++ ", choose piece to move")
  input <- getLine
  if (map toUpper input) == "FORFEIT" then
    main
  else if Moves.convert input == (9, 9) then do
    putStrLn "Rockade not available"
    turn player board
  else if Moves.convert input == (10, 10) then do
    putStrLn "Invalid move, try again"
    turn player board
  else if Moves.onSquare board (Moves.position (Moves.convert input)) == Moves.Empty then do
    putStrLn "You have chosen an empty square, try again"
    turn player board
    else do
    makeMove player board input
    
    

{- makeMove player board input
   makes a move of the piece on the position corresponding to (a, b) to (c, d) if the move is valid
   Returns: a board where the move has been made or the same board if the move was invalid
-}
makeMove :: Moves.Contester -> Moves.Board -> Moves.Move -> IO ()
makeMove player board input = do
  putStrLn "Choose where to move"
  output <- getLine
  if Moves.validMove board player input output then do
    let currentBoard = Moves.move board (Moves.position (Moves.convert input)) (Moves.position (Moves.convert output))
     in turn (nextPlayer player) currentBoard
   else do
     putStrLn "Invalid move, try again"
     turn player board

{- nextPlayer player
   Swithces to the other player
   PRE: player must be "White player" or "Black player"
   Returns: "Black player" if player == "White player". "white player" if player == "Black player"
   Examples: nextPlayer "White player" = "Black player"
             nextPlayer "sdjfg" = error
-}
nextPlayer :: Moves.Contester -> Contester
nextPlayer "White player" = "Black player"
nextPlayer "Black player" = "White player"

{- newBoard -- This is a function, should be treated as one.
   Creates a new chessboard
   Returns A list of Square where the first element in the list corresponds to A1 on a chess board, the 9th element corresponds to B1 on a chess board and thr 64th element corresponds to H8 on a chess board
-}
--newBoard :: IO [Square]
newBoard = [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]

