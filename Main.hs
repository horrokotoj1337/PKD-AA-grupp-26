import Data.Char
import Moves

{- main with influence of Nim.hs (Lab 15)
-}
main :: IO ()
main = do
  putStrLn "Welcome to Chess."
  putStrLn "Want to play?"
  choice <- getLine
  if (map toUpper choice) == "YES" then
    turn "White player" newBoard
  else
    main

{- turn player board
   Administers the turn
   Returns: the next turn for the other player if there is a valid move. The turn for the same player if the move is invalid. Main if the player quits.
-}
turn :: Moves.Contester -> Moves.Board -> IO ()
turn player board = do
  printCurrentBoard (convertBoard board)
  putStrLn "Eliminated pieces"
  print (eliminatedPieces board)
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
    
printCurrentBoard :: String -> IO ()
printCurrentBoard y = do
  putStrLn ("   1  2  3  4  5  6  7  8")
  putStrLn ("A" ++ show (take 24 y))
  putStrLn ("B" ++ show (take 24 (drop 24 y)))
  putStrLn ("C" ++ show (take 24 (drop 48 y)))
  putStrLn ("D" ++ show (take 24 (drop 72 y)))
  putStrLn ("E" ++ show (take 24 (drop 96 y)))
  putStrLn ("F" ++ show (take 24 (drop 120 y)))
  putStrLn ("G" ++ show (take 24 (drop 144 y)))
  putStrLn ("H" ++ show (take 24 (drop 168 y)))

convertPieces (White Rook) = " R "
convertPieces (White Knight) = " N "
convertPieces (White Bishop) = " B "
convertPieces (White Queen) = " Q "
convertPieces (White King) = " K "
convertPieces (White Pawn) = " P "
convertPieces (Black Rook) = " r "
convertPieces (Black Knight) = " n "
convertPieces (Black Bishop) = " b "
convertPieces (Black Queen) = " q "
convertPieces (Black King) = " k "
convertPieces (Black Pawn) = " p "
convertPieces (Empty) = " * "

convertBoard :: Board -> String
convertBoard [] = []
convertBoard (x:xs) = (convertPieces x) ++ (convertBoard xs)



  
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
     in checkWinner (nextPlayer player) currentBoard
  else do
    putStrLn "Invalid move, try again"
    turn player board

checkWinner :: Moves.Contester -> Moves.Board -> IO ()
checkWinner player board = do
  if elem (White King) (eliminatedPieces board) then do
    putStrLn "Black player wins!"
    main
  else if elem (Black King) (eliminatedPieces board) then do
    putStrLn "White player wins!"
    main
    else
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

{- eliminatedPieces board
   List all the Pieces that has been eliminated
   Returns: A Board of the eliminated Pieces
   Example: eliminatedPieces newBoard = []
-}
eliminatedPieces :: Moves.Board -> Moves.Board
eliminatedPieces board = let noEmpty = filter (/=Empty) board
                                                  in eliminatedPieces_acc [] noEmpty templateEliminatedPieces
  where
    eliminatedPieces_acc acc noEmpty [] = acc
    eliminatedPieces_acc acc noEmpty ((x, y):xs) | (y - (length (filter (==x) noEmpty))) == 0 = eliminatedPieces_acc acc noEmpty xs
                                                 | otherwise = eliminatedPieces_acc (x:acc) noEmpty ((x, (y-1)):xs)

{- newBoard -- This is a function, should be treated as one.
   Creates a new chessboard
   Returns A list of Square where the first element in the list corresponds to A1 on a chess board, the 9th element corresponds to B1 on a chess board and thr 64th element corresponds to H8 on a chess board
-}
newBoard :: Board
newBoard = [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]

templateEliminatedPieces :: [(Moves.Square, Int)]
templateEliminatedPieces = [(White Rook, 2), (White Knight, 2), (White Bishop, 2), (White Queen, 1), (White King, 1), (White Pawn, 8), (Black Rook, 2), (Black Knight, 2), (Black Bishop, 2), (Black Queen, 1), (Black King, 1), (Black Pawn, 8)]

