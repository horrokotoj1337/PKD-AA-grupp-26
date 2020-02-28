import Data.Char
type Board = [Square]


data Square = Empty | White Piece | Black Piece

   deriving (Eq, Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)

newBoard :: IO Board
newBoard = return [White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Queen, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Queen, White King, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black King, White Bishop, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Bishop, White Knight, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Knight, White Rook, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Black Rook]


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

main :: IO ()
main = do
  putStrLn "Welcome players to haskell-chess!"
  currentBoard <- newBoard
  play currentBoard


play newBoard = do
  printCurrentBoard (convertBoard (newBoard))

  
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
  
