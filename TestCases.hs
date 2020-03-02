module TestCases
  where

--import Data.Char
import Test.HUnit
import Moves

{-
type Board = [Square]

type Contester = String

type Move = String

data Square = Empty | White Piece | Black Piece
   deriving (Eq, Show)

data Piece = Pawn | Knight | Bishop | Rook | Queen | King
   deriving (Eq, Show)
-}


-- Testcases:
--testBoard :: [Square]
testBoard = [Empty, Empty, White Rook, White Pawn, Black Pawn, Empty, Empty, Empty,
             White Knight, White Pawn, Empty, Empty, Black Pawn, Empty, Empty, Empty,
             White Bishop, Empty, White Queen, Empty, Empty, Black Rook, Empty, Empty,
             Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black King, 
             White King, Empty, Empty, White Pawn, Empty, Empty, Empty, Empty, 
             Empty, Empty, Empty, Empty, Empty, Empty, Black King, Empty, 
             Empty, Black Queen, Empty, Empty, White Knight, Black Pawn, Black Rook, 
             Empty, Empty, Empty, White Rook, White Bishop, Empty, Empty, Empty]

--testBishopBoard :: [Square]
testBishopBoard = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, Black Rook, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty, 
                  Empty, White Pawn, Empty, White Bishop, Empty, Black Pawn, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                  Empty, Black Pawn, White Pawn, Black Pawn, Black Rook, Black King, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

--testQueenBoard :: [Square]
testQueenBoard = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, Black Rook, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty, 
                  Empty, White Pawn, Empty, Black Queen, Empty, Black Pawn, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                  Empty, Black Pawn, White Pawn, Black Pawn, Black Rook, Black King, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]





-- Can any of these take a piece?
testvalidMoveRook1 = TestCase (assertEqual "Move from one square to the same square" False (validMoveRook (testBoard) (1,3) (1,3)))

testvalidMoveRook2 = TestCase (assertEqual "Can Rook move down?" True (Moves.validMoveRook testBoard (1,3) (2,3)))

testvalidMoveRook3 = TestCase (assertEqual "Can Rook move up?" True (Moves.validMoveRook testBoard (8,4) (6,4)))

testvalidMoveRook4 = TestCase (assertEqual "Can you move Empty?" False (Moves.validMoveRook testBoard (2,3) (1,1)))

testvalidMoveRook5 = TestCase (assertEqual "Can Rook move right?" True (Moves.validMoveRook testBoard (3,6) (3,8)))

testvalidMoveRook6 = TestCase (assertEqual "Can Rook move left and take out a piece?" True (Moves.validMoveRook testBoard (3,6) (3,3)))

testvalidMoveRook7 = TestCase (assertEqual "Can Rook move through another piece?" False (Moves.validMoveRook testBoard (1,3) (1,6)))

testvalidMoveRook8 = TestCase (assertEqual "Can other Piece than Rook move like a Rook?" True (Moves.validMoveRook testBoard (2,2) (2,5)))


testvalidMoveRook9 = TestCase (assertEqual "Can Rook move diagonal?" False (Moves.validMoveRook testBoard (1,3) (3,5)))

runRookTests = runTestTT $ TestList [testvalidMoveRook1, testvalidMoveRook2, testvalidMoveRook3, testvalidMoveRook4, testvalidMoveRook5, testvalidMoveRook6,
                                     testvalidMoveRook7, testvalidMoveRook8, testvalidMoveRook9]





testvalidMoveBishop1 = TestCase (assertEqual "Move from and to the same square" False (Moves.validMoveBishop testBishopBoard (4, 4) (4,4)))

testvalidMoveBishop2 = TestCase (assertEqual "Bishop Northeast" True (Moves.validMoveBishop testBishopBoard (4,4) (2,6)))

testvalidMoveBishop3 = TestCase (assertEqual "Bishop Northwest" False (Moves.validMoveBishop testBishopBoard (4,4) (2,2)))

testvalidMoveBishop4 = TestCase (assertEqual "Bishop Southwest" True (Moves.validMoveBishop testBishopBoard (4,4) (6,2)))

testvalidMoveBishop5 = TestCase (assertEqual "Bishop Southeast" True (Moves.validMoveBishop testBishopBoard (4,4) (6,6)))

testvalidMoveBishop6 = TestCase (assertEqual "Can another piece move like a Bishop?" True (Moves.validMoveBishop testBishopBoard (4,6) (6,8)))

testvalidMoveBishop7 = TestCase (assertEqual "Move through another piece?" False (Moves.validMoveBishop testBishopBoard (4,4) (1,7)))

testvalidMoveBishop8 = TestCase (assertEqual "Can Bishop move like Rook?" False (Moves.validMoveBishop testBishopBoard (4,4) (4,6)))

runBishopTests = runTestTT $ TestList [testvalidMoveBishop1, testvalidMoveBishop2, testvalidMoveBishop3, testvalidMoveBishop4, testvalidMoveBishop5, testvalidMoveBishop6, testvalidMoveBishop7, testvalidMoveBishop8]


testvalidMoveQueen1 = TestCase (assertEqual "Move from and to the same square" False (Moves.validMoveQueen testQueenBoard (4, 4) (4,4)))

testvalidMoveQueen2 = TestCase (assertEqual "Queen Northeast" False (Moves.validMoveQueen testQueenBoard (4,4) (2,6)))

testvalidMoveQueen3 = TestCase (assertEqual "Queen Northwest" True (Moves.validMoveQueen testQueenBoard (4,4) (2,2)))

testvalidMoveQueen4 = TestCase (assertEqual "Queen Southwest" False (Moves.validMoveQueen testQueenBoard (4,4) (6,2)))

testvalidMoveQueen5 = TestCase (assertEqual "Queen Southeast" False (Moves.validMoveQueen testQueenBoard (4,4) (6,6)))

testvalidMoveQueen6 = TestCase (assertEqual "Can another piece move like a Queen?" True (Moves.validMoveQueen testQueenBoard (4,6) (6,8)))

testvalidMoveQueen7 = TestCase (assertEqual "Move through another piece?" False (Moves.validMoveQueen testQueenBoard (4,4) (1,7)))

testvalidMoveQueen8 = TestCase (assertEqual "Queen West" True (Moves.validMoveQueen testQueenBoard (4,4) (4,2)))

testvalidMoveQueen9 = TestCase (assertEqual "Queen East" False (Moves.validMoveQueen testQueenBoard (4,4) (4,6)))

testvalidMoveQueen10 = TestCase (assertEqual "Queen North" True (Moves.validMoveQueen testQueenBoard (4,4) (2,4)))

testvalidMoveQueen11 = TestCase (assertEqual "Queen South" False (Moves.validMoveQueen testQueenBoard (4,4) (6,4)))

runQueenTests = runTestTT $ TestList [testvalidMoveQueen1, testvalidMoveQueen2, testvalidMoveQueen3, testvalidMoveQueen4, testvalidMoveQueen5, testvalidMoveQueen6, testvalidMoveQueen7, testvalidMoveQueen8]





{-
testvalidMovePawn1  = TestCase (assertEqual "White Pawn move two steps from original square" True (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn2  = TestCase (assertEqual "White Pawn move two steps not from original square" False (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn3  = TestCase (assertEqual "Black Pawn move two steps from original square" True (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn4  = TestCase (assertEqual "Black Pawn move two steps not from original square" False (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn5  = TestCase (assertEqual "Black Pawn take out White Piece" True (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn6  = TestCase (assertEqual "White Pawn take out Black Piece" True (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn7  = TestCase (assertEqual "White Pawn take out White Piece" False (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn8  = TestCase (assertEqual "Pawn move like Rook" False (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn9  = TestCase (assertEqual "Pawn move like Bishop" False (validMovePawn testBoard (1,1) (1,1)))

testvalidMovePawn10 = TestCase (assertEqual "Chess piece that is not a pawn tries to move like a pawn" True/False (validMovePawn testBoard (1,1) (1,1)))


testvalidKnight1

testvalidKnight2

testvalidKnight3

testvalidKnight4



testvalidQueen1

testvalidQueen2



testvalidKing1

testvalidKing2


-}


--tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2, TestLabel "test3" test3, TestLabel "test4" test4]
--testsvalidMoveRook   = TestList [testvalidMoveRook1, testvalidMoveRook2, testvalidMoveRook3, testvalidMoveRook4]
--testsvalidMoveBishop = TestList [testvalidMoveBishop1, testvalidMoveBishop2, testvalidMoveBishop3, testvalidMoveBishop4]
--testsvalidMovePawn   = TestList [testvalidMovePawn1, testvalidMovePawn2, testvalidMovePawn3, testvalidMovePawn4]


--runtests = runTestTT tests
--runtests2 = runTestTT tests2

