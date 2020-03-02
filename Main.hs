import Data.Char
import Moves

{- main
   main starts the game
   Returns: the ability to play the game
-}
main :: IO ()
main = do
  putStrLn "Welcome to Chess!"
  putStrLn "To move a piece type the square the piece is standing on."
  putStrLn "To forfeit the game at any time, type forfeit."
  putStrLn "Want to play, yes or no?"
  choice <- getLine
  if (map toUpper choice) == "YES" then
    turn "White player" newBoard
  else if (map toUpper choice) == "NO" then
    return ()
  else
    main

{- turn player board
   Administers the turn
   Returns: the ability for player to do his/her turn
-}
turn :: Contester -> Board -> IO ()
turn player board = do
  printCurrentBoard (convertBoard board)
  putStrLn "Eliminated pieces:"
  putStrLn (convertBoard (eliminatedPieces board))
  putStrLn (player ++ ", choose piece to move.")
  input <- getLine
  if (map toUpper input) == "FORFEIT" then do
    putStrLn ((nextPlayer player) ++ " wins!")
    main
  else if convert input == (9, 9) then do
    putStrLn "Rockade not available."
    turn player board
  else if convert input == (10, 10) then do
    putStrLn "Invalid move, try again."
    turn player board
  else if onSquare board (position (convert input)) == Empty then do
    putStrLn "You have chosen an empty square, try again."
    turn player board
  else if isSameColourPlayer player (onSquare board (position (convert input))) then do
    makeMove player board input
    else do
    putStrLn "You need to choose one of your own pieces, try again."
    turn player board

{- printCurrentBoard y
   prints the bord y
   Returns: an IO that prints y in 8 different rows
   Sideeffects: prints the current board
-}
printCurrentBoard :: String -> IO ()
printCurrentBoard y = do
  putStrLn ("  1  2  3  4  5  6  7  8")
  putStrLn ("A" ++  take 24 y)
  putStrLn ("B" ++ take 24 (drop 24 y))
  putStrLn ("C" ++ take 24 (drop 48 y))
  putStrLn ("D" ++ take 24 (drop 72 y))
  putStrLn ("E" ++ take 24 (drop 96 y))
  putStrLn ("F" ++ take 24 (drop 120 y))
  putStrLn ("G" ++ take 24 (drop 144 y))
  putStrLn ("H" ++ take 24 (drop 168 y))

{- convertPieces piece
   converts a Piece into a String with the appropriate chess symbol
   Returns: A string containing the appropriate chess symbor för piece
   Example: convertPieces (White Rook) = " ♖ "
            convertPieces (Black Rook) = " ♜ "
            convertPieces (Empty) = " ⬚ "
            convertPieces "hej" = error
            convertPieces (Green King) = Error
-}
convertPieces :: Square -> String
convertPieces (White Rook) = " ♖ "
convertPieces (White Knight) = " ♘ "
convertPieces (White Bishop) = " ♗ "
convertPieces (White Queen) = " ♕ "
convertPieces (White King) = " ♔ "
convertPieces (White Pawn) = " ♙ "
convertPieces (Black Rook) = " ♜ "
convertPieces (Black Knight) = " ♞ "
convertPieces (Black Bishop) = " ♝ "
convertPieces (Black Queen) = " ♛ "
convertPieces (Black King) = " ♚ "
convertPieces (Black Pawn) = " ♝ "
convertPieces (Empty) = " ⬚ "


{- convertBoard board
   represents a Board as a String where every Square in board will be converted into it's chess symbol
   Returns: a String where every element is the appropriate chess symbol of every Square in board
   Sideeffect: the function will not print the chess symbols when called on it's own.
   Example: convertBoard newBoard = " \9814  \9817  \11034  \11034  \11034  \11034  \9823  \9820  \9816  \9817  \11034  \11034  \11034  \11034  \9823  \9822  \9815  \9817  \11034  \11034  \11034  \11034  \9823  \9821  \9813  \9817  \11034  \11034  \11034  \11034  \9823  \9819  \9812  \9817  \11034  \11034  \11034  \11034  \9823  \9818  \9815  \9817  \11034  \11034  \11034  \11034  \9823  \9821  \9816  \9817  \11034  \11034  \11034  \11034  \9823  \9822  \9814  \9817  \11034  \11034  \11034  \11034  \9823  \9820 "
-}
convertBoard :: Board -> String
convertBoard [] = []
convertBoard (x:xs) = (convertPieces x) ++ (convertBoard xs)



  
{- makeMove player board input
   makes a move of the piece on the position corresponding to (a, b) to (c, d) if the move is valid
   Returns: a board where the move has been made or the same board if the move was invalid
-}
makeMove :: Contester -> Board -> Move -> IO ()
makeMove player board input = do 
  putStrLn "Choose where to move"
  output <- getLine
  if Moves.validMove board player input output then do
    let currentBoard = move board (position (convert input)) (position (convert output))
     in checkWinner (nextPlayer player) currentBoard
  else do
    putStrLn "Invalid move, try again"
    turn player board

{- checkWinner player board
   checks for a winner on the board.
   Returns: A string with the Winner and then main or turn player board
   Example: ?
-}
checkWinner :: Contester -> Board -> IO ()
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
nextPlayer :: Contester -> Contester
nextPlayer "White player" = "Black player"
nextPlayer "Black player" = "White player"

{- eliminatedPieces board
   List all the Pieces that has been eliminated
   Returns: A Board of the eliminated Pieces
   Example: eliminatedPieces newBoard = []
            eliminatedPieces [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty] = [Black Rook]
            eliminatedPieces [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty] = [Black Rook,Black Rook]
            eliminatedPieces [] = [Black Pawn,Black Pawn,Black Pawn,Black Pawn,Black Pawn,Black Pawn,Black Pawn,Black Pawn,Black King,Black Queen,Black Bishop,Black Bishop,Black Knight,Black Knight,Black Rook,Black Rook,White Pawn,White Pawn,White Pawn,White Pawn,White Pawn,White Pawn,White Pawn,White Pawn,White King,White Queen,White Bishop,White Bishop,White Knight,White Knight,White Rook,White Rook]
-}
eliminatedPieces :: Board -> Board
eliminatedPieces board = let noEmpty = filter (/=Empty) board
                          in eliminatedPieces_acc [] noEmpty templatePieces
  where
    eliminatedPieces_acc acc noEmpty [] = acc
    eliminatedPieces_acc acc noEmpty ((x, y):xs) | (y - (length (filter (==x) noEmpty))) == 0 = eliminatedPieces_acc acc noEmpty xs
                                                 | otherwise = eliminatedPieces_acc (x:acc) noEmpty ((x, (y-1)):xs)

{- newBoard 
   Creates a new chessboard
   Returns A list of Square where the first element in the list corresponds to A1 on a chess board, the 9th element corresponds to B1 on a chess board and thr 64th element corresponds to H8 on a chess board
   Examples: newBoard = [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]
-}
newBoard :: Board
newBoard = [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]

{- templatePieces
   Creates a template of pieces in a chess game
   Returns: [(Square, Int)] where Int is the number of Squares in a chess game
   Example: templatePieces = [(White Rook, 2), (White Knight, 2), (White Bishop, 2), (White Queen, 1), (White King, 1), (White Pawn, 8), (Black Rook, 2), (Black Knight, 2), (Black Bishop, 2), (Black Queen, 1), (Black King, 1), (Black Pawn, 8)]
-}
templatePieces :: [(Square, Int)]
templatePieces = [(White Rook, 2), (White Knight, 2), (White Bishop, 2), (White Queen, 1), (White King, 1), (White Pawn, 8), (Black Rook, 2), (Black Knight, 2), (Black Bishop, 2), (Black Queen, 1), (Black King, 1), (Black Pawn, 8)]

