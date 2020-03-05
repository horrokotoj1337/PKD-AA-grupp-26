module TestCases
  where


import Test.HUnit
import Moves


-- Testcases:
testBoard :: [Square]
testBoard = [Empty, Empty, White Rook, White Pawn, Black Pawn, Empty, Empty, Empty,
             White Knight, White Pawn, Empty, Empty, Black Pawn, Empty, Empty, Empty,
             White Bishop, Empty, White Queen, Empty, Empty, Black Rook, Empty, Empty,
             Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn, Black King, 
             White King, Empty, Empty, White Pawn, Empty, Empty, Empty, Empty, 
             Empty, Empty, Empty, Empty, Empty, Empty, Black King, Empty, 
             Empty, Black Queen, Empty, Empty, White Knight, Black Pawn, Black Rook, Empty,
             Empty, Empty, White Rook, White Bishop, Empty, Empty, Empty, Empty]

testBishopBoard :: [Square]
testBishopBoard = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, Black Rook, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty, 
                  Empty, White Pawn, Empty, White Bishop, Empty, Black Pawn, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                  Empty, Black Pawn, White Pawn, Black Pawn, Black Rook, Black King, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testQueenBoard :: [Square]
testQueenBoard = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, Black Rook, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty, 
                  Empty, White Pawn, Empty, Black Queen, Empty, Black Pawn, Empty, Empty,
                  Empty, Black Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                  Empty, Black Pawn, White Pawn, Black Pawn, Black Rook, Black King, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKnightBoard1 :: [Square]
testKnightBoard1 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, White Pawn, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Empty, White Knight, Empty, Empty, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Black Pawn, Empty, Black Pawn, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKnightBoard2 :: [Square]
testKnightBoard2 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, White Pawn, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Empty, Black Knight, Empty, Empty, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Black Pawn, Empty, Black Pawn, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testPawnBoard1 :: [Square]
testPawnBoard1 = [Empty, White Pawn, Black Pawn, Empty, Empty, White Pawn, Black Pawn, Empty,
                 Empty, White Pawn, White Pawn, Empty, Empty, Black Pawn, Black Pawn, Empty,
                 Black Pawn, Empty, Black Pawn, Empty, Empty, White Pawn, Empty, White Pawn,
                 Empty, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty,
                 Black Pawn, Empty, Black Pawn, Empty, Empty, White Pawn, Empty, White Pawn,
                 Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                 Empty, Black Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty,
                 Empty, White Pawn, Empty, Empty, Empty, Empty, White Pawn, Empty]

testPawnBoard2 :: [Square]
testPawnBoard2 = [Empty, Empty, Empty, Black Pawn, White Pawn, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Black Pawn, White Pawn, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  White Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn]

testKingBoard1 :: [Square]
testKingBoard1 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, White King, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]        

testKingBoard2 :: [Square]
testKingBoard2 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Empty, Empty, Empty,
                  Empty, Empty, Black Pawn, White King, Black Pawn, Empty, Empty, Empty,
                  Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]


testKingBoard3 :: [Square]
testKingBoard3 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Empty, Empty, Empty,
                  Empty, Empty, Black Pawn, Black King, Black Pawn, Empty, Empty, Empty,
                  Empty, Empty, Black Pawn, Black Pawn, Black Pawn, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testBorderCrossingBoard1 :: [Square]
testBorderCrossingBoard1 = [White King, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                           Empty, White Rook, Empty, Empty, Empty, Empty, Black Knight, Empty,
                           Empty, White Knight, Empty, Empty, Empty, Empty, Black Rook, Empty,
                           Empty, White Bishop, Empty, Empty, Empty, Empty, Black Bishop, Empty,
                           Empty, White Queen, Empty, Empty, Empty, Black Queen, Empty, Empty,
                           Empty, White Rook, Empty, Empty, Empty, Empty, Black Knight, Empty,
                           Empty, White Knight, Empty, Empty, Empty, Empty, Black Rook, Empty,
                           Empty, Empty, Empty, Empty, Empty, Empty, Empty, Black King]

testBorderCrossingBoard2 :: [Square]
testBorderCrossingBoard2 = [Empty, White Pawn, White Pawn, Empty, Empty, Black Pawn, Black Pawn, Empty,
                            Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                            Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                            Empty, Empty, Empty, Empty, Empty, Empty, Empty, White Pawn,
                            Black Pawn, Empty, Empty, Empty, Empty, Empty, Empty, White Pawn,
                            Black Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                            Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                            Empty, Empty, Black Pawn, Black Pawn, White Pawn, White Pawn,Empty , Empty]


-- Change Board for Rook
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

testvalidMoveQueen6 = TestCase (assertEqual "Can another piece move like a Queen as Bishop?" True (Moves.validMoveQueen testQueenBoard (4,6) (6,8)))

testvalidMoveQueen7 = TestCase (assertEqual "Can another piece move like a Queen as Rook?" True (Moves.validMoveQueen testQueenBoard (4,6) (4,8)))

testvalidMoveQueen8 = TestCase (assertEqual "Move through another piece?" False (Moves.validMoveQueen testQueenBoard (4,4) (1,7)))

testvalidMoveQueen9 = TestCase (assertEqual "Queen West" True (Moves.validMoveQueen testQueenBoard (4,4) (4,2)))

testvalidMoveQueen10 = TestCase (assertEqual "Queen East" False (Moves.validMoveQueen testQueenBoard (4,4) (4,6)))

testvalidMoveQueen11 = TestCase (assertEqual "Queen North" True (Moves.validMoveQueen testQueenBoard (4,4) (2,4)))

testvalidMoveQueen12 = TestCase (assertEqual "Queen South" False (Moves.validMoveQueen testQueenBoard (4,4) (6,4)))

runQueenTests = runTestTT $ TestList [testvalidMoveQueen1, testvalidMoveQueen2, testvalidMoveQueen3, testvalidMoveQueen4, testvalidMoveQueen5, testvalidMoveQueen6, testvalidMoveQueen7, testvalidMoveQueen8, testvalidMoveQueen9, testvalidMoveQueen10, testvalidMoveQueen11]


testvalidMoveKnight1 = TestCase (assertEqual "Knight -2 +1" True (Moves.validMoveKnight testKnightBoard1 (4,4) (2,5)))

testvalidMoveKnight2 = TestCase (assertEqual "Knight -1 +2" True (Moves.validMoveKnight testKnightBoard1 (4,4) (3,6)))

testvalidMoveKnight3 = TestCase (assertEqual "Knight +1 +2" True (Moves.validMoveKnight testKnightBoard1 (4,4) (5,6)))

testvalidMoveKnight4 = TestCase (assertEqual "Knight +2 +1" True (Moves.validMoveKnight testKnightBoard1 (4,4) (6,5)))

testvalidMoveKnight5 = TestCase (assertEqual "Knight +2 -1" True (Moves.validMoveKnight testKnightBoard1 (4,4) (6,3)))

testvalidMoveKnight6 = TestCase (assertEqual "Knight +1 -2" True (Moves.validMoveKnight testKnightBoard1 (4,4) (5,2)))

testvalidMoveKnight7 = TestCase (assertEqual "Knight -1 -2" True (Moves.validMoveKnight testKnightBoard1 (4,4) (3,2)))

testvalidMoveKnight8 = TestCase (assertEqual "Knight -2 -1" True (Moves.validMoveKnight testKnightBoard1 (4,4) (2,3)))

testvalidMoveKnight9 = TestCase (assertEqual "Knight moving like rook" False (Moves.validMoveKnight testKnightBoard1 (4,4) (2,4)))


testvalidMoveKnight10 = TestCase (assertEqual "Knight -2 +1" False (Moves.validMoveKnight testKnightBoard2 (4,4) (2,5)))

testvalidMoveKnight11 = TestCase (assertEqual "Knight -1 +2" False (Moves.validMoveKnight testKnightBoard2 (4,4) (3,6)))

testvalidMoveKnight12 = TestCase (assertEqual "Knight +1 +2" False (Moves.validMoveKnight testKnightBoard2 (4,4) (5,6)))

testvalidMoveKnight13 = TestCase (assertEqual "Knight +2 +1" False (Moves.validMoveKnight testKnightBoard2 (4,4) (6,5)))

testvalidMoveKnight14 = TestCase (assertEqual "Knight +2 -1" False (Moves.validMoveKnight testKnightBoard2 (4,4) (6,3)))

testvalidMoveKnight15 = TestCase (assertEqual "Knight +1 -2" False (Moves.validMoveKnight testKnightBoard2 (4,4) (5,2)))

testvalidMoveKnight16 = TestCase (assertEqual "Knight -1 -2" False (Moves.validMoveKnight testKnightBoard2 (4,4) (3,2)))

testvalidMoveKnight17 = TestCase (assertEqual "Knight -2 -1" False (Moves.validMoveKnight testKnightBoard2 (4,4) (2,3)))

testvalidMoveKnight18 = TestCase (assertEqual "Knight moving like rook" False (Moves.validMoveKnight testKnightBoard1 (4,4) (2,4)))




runKnightTests = runTestTT $ TestList [testvalidMoveKnight1, testvalidMoveKnight2, testvalidMoveKnight3, testvalidMoveKnight4, testvalidMoveKnight5, testvalidMoveKnight6, testvalidMoveKnight7, testvalidMoveKnight8, testvalidMoveKnight9, testvalidMoveKnight10, testvalidMoveKnight11, testvalidMoveKnight12, testvalidMoveKnight13, testvalidMoveKnight14, testvalidMoveKnight15, testvalidMoveKnight16, testvalidMoveKnight17, testvalidMoveKnight18]


testvalidMovePawn1 = TestCase (assertEqual "White Pawn take left (4,2 -> 3,3)" True (Moves.validMovePawn testPawnBoard1 (4,2) (3,3)))

testvalidMovePawn2 = TestCase (assertEqual "White Pawn take right (4,2 -> 5,3)" True (Moves.validMovePawn testPawnBoard1 (4,2) (5,3)))

testvalidMovePawn3 = TestCase (assertEqual "Black Pawn take right (4,7 -> 3,6)" True (Moves.validMovePawn testPawnBoard1 (4,7) (3,6)))

testvalidMovePawn4 = TestCase (assertEqual "Black Pawn take left (4,7 -> 5,3)" True (Moves.validMovePawn testPawnBoard1 (4,7) (5,6)))

testvalidMovePawn5 = TestCase (assertEqual "White Pawn take one step" True (Moves.validMovePawn testPawnBoard1 (8,2) (8,3)))

testvalidMovePawn6 = TestCase (assertEqual "White Pawn take two step" True (Moves.validMovePawn testPawnBoard1 (8,2) (8,4)))

testvalidMovePawn7 = TestCase (assertEqual "Black Pawn take one step" True (Moves.validMovePawn testPawnBoard1 (7,7) (7,6)))

testvalidMovePawn8 = TestCase (assertEqual "Black Pawn take two step" True (Moves.validMovePawn testPawnBoard1 (7,7) (7,5)))

testvalidMovePawn9 = TestCase (assertEqual "Black Pawn tries to jump over Black Piece" False (Moves.validMovePawn testPawnBoard1 (2,7) (2,5)))

testvalidMovePawn10 = TestCase (assertEqual "Black Pawn tries to jump over White Piece" False (Moves.validMovePawn testPawnBoard1 (1,7) (1,5)))

testvalidMovePawn11 = TestCase (assertEqual "White Pawn tries to jump over White piece" False (Moves.validMovePawn testPawnBoard1 (2,2) (2,4)))

testvalidMovePawn12 = TestCase (assertEqual "White Pawn tries to jump over Black Piece" False (Moves.validMovePawn testPawnBoard1 (1,2) (1,4)))

testvalidMovePawn13 = TestCase (assertEqual "Black Pawn tries to go to White Piece one step straight" False (Moves.validMovePawn testPawnBoard1 (1,7) (1,6)))

testvalidMovePawn14 = TestCase (assertEqual "White Pawn tries to go to Black Piece one step straight" False (Moves.validMovePawn testPawnBoard1 (1,2) (1,3)))

testvalidMovePawn15 = TestCase (assertEqual "White Pawn tries to take Black Piece behind themselves1" False (Moves.validMovePawn testPawnBoard1 (4,2) (3,1)))

testvalidMovePawn16 = TestCase (assertEqual "White Pawn tries to take Black Piece behind themselves2" False (Moves.validMovePawn testPawnBoard1 (4,2) (5,1)))

testvalidMovePawn17 = TestCase (assertEqual "Black Pawn tries to take White Piece behind themselves1" False (Moves.validMovePawn testPawnBoard1 (4,7) (3,8)))

testvalidMovePawn18 = TestCase (assertEqual "Black Pawn tries to take White Piece behind themselves2" False (Moves.validMovePawn testPawnBoard1 (4,7) (5,8)))

testvalidMovePawn19 = TestCase (assertEqual "Black Pawn tries to one step backwards" False (Moves.validMovePawn testPawnBoard1 (7,2) (7,3)))

testvalidMovePawn20 = TestCase (assertEqual "Black Pawn tries to two steps backwards" False (Moves.validMovePawn testPawnBoard1 (7,2) (7,4)))

testvalidMovePawn21 = TestCase (assertEqual "White Pawn tries to one step backwards" False (Moves.validMovePawn testPawnBoard1 (8,7) (8,6)))

testvalidMovePawn22 = TestCase (assertEqual "White Pawn tries to two steps backwards" False (Moves.validMovePawn testPawnBoard1 (8,7) (8,5)))

testvalidMovePawn23 = TestCase (assertEqual "White Pawn tries to take Black Piece down" False (Moves.validMovePawn testPawnBoard1 (2,3) (3,3)))

testvalidMovePawn24 = TestCase (assertEqual "White Pawn tries to take Black Piece up" False (Moves.validMovePawn testPawnBoard1 (2,3) (1,3)))

testvalidMovePawn25 = TestCase (assertEqual "Black Pawn tries to take White Piece down" False (Moves.validMovePawn testPawnBoard1 (2,6) (3,6)))

testvalidMovePawn26 = TestCase (assertEqual "Black Pawn tries to take White Piece up" False (Moves.validMovePawn testPawnBoard1 (2,6) (1,6)))

testvalidMovePawn27 = TestCase (assertEqual "White Pawn tries to take using -2 +2" False (Moves.validMovePawn testPawnBoard2 (3,2) (1,4)))

testvalidMovePawn28 = TestCase (assertEqual "White Pawn tries to take using +2 +2" False (Moves.validMovePawn testPawnBoard2 (3,2) (5,4)))

testvalidMovePawn29 = TestCase (assertEqual "Black Pawn tries to take using -2 -2" False (Moves.validMovePawn testPawnBoard2 (3,7) (1,5)))

testvalidMovePawn30 = TestCase (assertEqual "Black Pawn tries to take using +2 -2" False (Moves.validMovePawn testPawnBoard2 (3,7) (5,5)))

testvalidMovePawn31 = TestCase (assertEqual "White Pawn tries to take like Bishop" False (Moves.validMovePawn testPawnBoard2 (8,1) (5,4)))

testvalidMovePawn32 = TestCase (assertEqual "Black Pawn tries to take like Bishop" False (Moves.validMovePawn testPawnBoard2 (8,8) (5,5)))

testvalidMovePawn33 = TestCase (assertEqual "Black Pawn tries to take using -2 +2" False (Moves.validMovePawn testPawnBoard2 (6,2) (4,4)))

testvalidMovePawn34 = TestCase (assertEqual "Black Pawn tries to take using +2 +2" False (Moves.validMovePawn testPawnBoard2 (6,2) (8,4)))

testvalidMovePawn35 = TestCase (assertEqual "White Pawn tries to take using -2 -2" False (Moves.validMovePawn testPawnBoard2 (6,7) (4,5)))

testvalidMovePawn36 = TestCase (assertEqual "White Pawn tries to take using +2 -2" False (Moves.validMovePawn testPawnBoard2 (6,7) (8,5)))

runPawnTests = runTestTT $ TestList [testvalidMovePawn1, testvalidMovePawn2, testvalidMovePawn3, testvalidMovePawn4, testvalidMovePawn5, testvalidMovePawn6, testvalidMovePawn7, testvalidMovePawn8, testvalidMovePawn9, testvalidMovePawn10, testvalidMovePawn11, testvalidMovePawn12, testvalidMovePawn13, testvalidMovePawn14, testvalidMovePawn15, testvalidMovePawn16, testvalidMovePawn17, testvalidMovePawn18, testvalidMovePawn19, testvalidMovePawn20, testvalidMovePawn21, testvalidMovePawn22, testvalidMovePawn23, testvalidMovePawn24, testvalidMovePawn25, testvalidMovePawn26, testvalidMovePawn27, testvalidMovePawn28, testvalidMovePawn29, testvalidMovePawn30, testvalidMovePawn31, testvalidMovePawn32, testvalidMovePawn33, testvalidMovePawn34, testvalidMovePawn35, testvalidMovePawn36]


-- TestCases for board filled with Empty
testvalidMoveKing1 = TestCase (assertEqual "King -1 +0" True (Moves.validMoveKing testKingBoard1 (4,4) (3,4)))

testvalidMoveKing2 = TestCase (assertEqual "King -1 +1" True (Moves.validMoveKing testKingBoard1 (4,4) (3,5)))

testvalidMoveKing3 = TestCase (assertEqual "King +0 +1" True (Moves.validMoveKing testKingBoard1 (4,4) (4,5)))

testvalidMoveKing4 = TestCase (assertEqual "King +1 +1" True (Moves.validMoveKing testKingBoard1 (4,4) (5,5)))

testvalidMoveKing5 = TestCase (assertEqual "King +1 +0" True (Moves.validMoveKing testKingBoard1 (4,4) (5,4)))

testvalidMoveKing6 = TestCase (assertEqual "King +1 -1" True (Moves.validMoveKing testKingBoard1 (4,4) (5,3)))

testvalidMoveKing7 = TestCase (assertEqual "King +0 -1" True (Moves.validMoveKing testKingBoard1 (4,4) (4,3)))

testvalidMoveKing8 = TestCase (assertEqual "King -1 -1" True (Moves.validMoveKing testKingBoard1 (4,4) (3,3)))

testvalidMoveKing9 = TestCase (assertEqual "King -2 +0" False (Moves.validMoveKing testKingBoard1 (4,4) (2,4)))

testvalidMoveKing10 = TestCase (assertEqual "King -2 +1" False (Moves.validMoveKing testKingBoard1 (4,4) (2,5)))

testvalidMoveKing11 = TestCase (assertEqual "King -2 +2" False (Moves.validMoveKing testKingBoard1 (4,4) (2,6)))

testvalidMoveKing12 = TestCase (assertEqual "King -1 +2" False (Moves.validMoveKing testKingBoard1 (4,4) (3,6)))

testvalidMoveKing13 = TestCase (assertEqual "King +0 +2" False (Moves.validMoveKing testKingBoard1 (4,4) (4,6)))

testvalidMoveKing14 = TestCase (assertEqual "King +1 +2" False (Moves.validMoveKing testKingBoard1 (4,4) (5,6)))

testvalidMoveKing15 = TestCase (assertEqual "King +2 +2" False (Moves.validMoveKing testKingBoard1 (4,4) (6,6)))

testvalidMoveKing16 = TestCase (assertEqual "King +2 +1" False (Moves.validMoveKing testKingBoard1 (4,4) (6,5)))

testvalidMoveKing17 = TestCase (assertEqual "King +2 +0" False (Moves.validMoveKing testKingBoard1 (4,4) (6,4)))

testvalidMoveKing18 = TestCase (assertEqual "King +2 -1" False (Moves.validMoveKing testKingBoard1 (4,4) (6,3)))

testvalidMoveKing19 = TestCase (assertEqual "King +2 -2" False (Moves.validMoveKing testKingBoard1 (4,4) (6,2)))

testvalidMoveKing20 = TestCase (assertEqual "King +1 -2" False (Moves.validMoveKing testKingBoard1 (4,4) (5,2)))

testvalidMoveKing21 = TestCase (assertEqual "King +0 -2" False (Moves.validMoveKing testKingBoard1 (4,4) (4,2)))

testvalidMoveKing22 = TestCase (assertEqual "King -1 -2" False (Moves.validMoveKing testKingBoard1 (4,4) (3,2)))

testvalidMoveKing23 = TestCase (assertEqual "King -2 -2" False (Moves.validMoveKing testKingBoard1 (4,4) (2,2)))

testvalidMoveKing24 = TestCase (assertEqual "King -2 -1" False (Moves.validMoveKing testKingBoard1 (4,4) (2,3)))


-- TestCases for different Colour
testvalidMoveKing25 = TestCase (assertEqual "King -1 +0" True (Moves.validMoveKing testKingBoard2 (4,4) (3,4)))

testvalidMoveKing26 = TestCase (assertEqual "King -1 +1" True (Moves.validMoveKing testKingBoard2 (4,4) (3,5)))

testvalidMoveKing27 = TestCase (assertEqual "King +0 +1" True (Moves.validMoveKing testKingBoard2 (4,4) (4,5)))

testvalidMoveKing28 = TestCase (assertEqual "King +1 +1" True (Moves.validMoveKing testKingBoard2 (4,4) (5,5)))

testvalidMoveKing29 = TestCase (assertEqual "King +1 +0" True (Moves.validMoveKing testKingBoard2 (4,4) (5,4)))

testvalidMoveKing30 = TestCase (assertEqual "King +1 -1" True (Moves.validMoveKing testKingBoard2 (4,4) (5,3)))

testvalidMoveKing31 = TestCase (assertEqual "King +0 -1" True (Moves.validMoveKing testKingBoard2 (4,4) (4,3)))

testvalidMoveKing32 = TestCase (assertEqual "King -1 -1" True (Moves.validMoveKing testKingBoard2 (4,4) (3,3)))



testvalidMoveKing33 = TestCase (assertEqual "King -2 +0" False (Moves.validMoveKing testKingBoard2 (4,4) (2,4)))

testvalidMoveKing34 = TestCase (assertEqual "King -2 +1" False (Moves.validMoveKing testKingBoard2 (4,4) (2,5)))

testvalidMoveKing35 = TestCase (assertEqual "King -2 +2" False (Moves.validMoveKing testKingBoard2 (4,4) (2,6)))

testvalidMoveKing36 = TestCase (assertEqual "King -1 +2" False (Moves.validMoveKing testKingBoard2 (4,4) (3,6)))

testvalidMoveKing37 = TestCase (assertEqual "King +0 +2" False (Moves.validMoveKing testKingBoard2 (4,4) (4,6)))

testvalidMoveKing38 = TestCase (assertEqual "King +1 +2" False (Moves.validMoveKing testKingBoard2 (4,4) (5,6)))

testvalidMoveKing39 = TestCase (assertEqual "King +2 +2" False (Moves.validMoveKing testKingBoard2 (4,4) (6,6)))

testvalidMoveKing40 = TestCase (assertEqual "King +2 +1" False (Moves.validMoveKing testKingBoard2 (4,4) (6,5)))

testvalidMoveKing41 = TestCase (assertEqual "King +2 +0" False (Moves.validMoveKing testKingBoard2 (4,4) (6,4)))

testvalidMoveKing42 = TestCase (assertEqual "King +2 -1" False (Moves.validMoveKing testKingBoard2 (4,4) (6,3)))

testvalidMoveKing43 = TestCase (assertEqual "King +2 -2" False (Moves.validMoveKing testKingBoard2 (4,4) (6,2)))

testvalidMoveKing44 = TestCase (assertEqual "King +1 -2" False (Moves.validMoveKing testKingBoard2 (4,4) (5,2)))

testvalidMoveKing45 = TestCase (assertEqual "King +0 -2" False (Moves.validMoveKing testKingBoard2 (4,4) (4,2)))

testvalidMoveKing46 = TestCase (assertEqual "King -1 -2" False (Moves.validMoveKing testKingBoard2 (4,4) (3,2)))

testvalidMoveKing47 = TestCase (assertEqual "King -2 -2" False (Moves.validMoveKing testKingBoard2 (4,4) (2,2)))

testvalidMoveKing48 = TestCase (assertEqual "King -2 -1" False (Moves.validMoveKing testKingBoard2 (4,4) (2,3)))



-- TestCases for Same Colour
testvalidMoveKing49 = TestCase (assertEqual "King -1 +0" False (Moves.validMoveKing testKingBoard3 (4,4) (3,4)))

testvalidMoveKing50 = TestCase (assertEqual "King -1 +1" False (Moves.validMoveKing testKingBoard3 (4,4) (3,5)))

testvalidMoveKing51 = TestCase (assertEqual "King +0 +1" False (Moves.validMoveKing testKingBoard3 (4,4) (4,5)))

testvalidMoveKing52 = TestCase (assertEqual "King +1 +1" False (Moves.validMoveKing testKingBoard3 (4,4) (5,5)))

testvalidMoveKing53 = TestCase (assertEqual "King +1 +0" False (Moves.validMoveKing testKingBoard3 (4,4) (5,4)))

testvalidMoveKing54 = TestCase (assertEqual "King +1 -1" False (Moves.validMoveKing testKingBoard3 (4,4) (5,3)))

testvalidMoveKing55 = TestCase (assertEqual "King +0 -1" False (Moves.validMoveKing testKingBoard3 (4,4) (4,3)))

testvalidMoveKing56 = TestCase (assertEqual "King -1 -1" False (Moves.validMoveKing testKingBoard3 (4,4) (3,3)))



testvalidMoveKing57 = TestCase (assertEqual "King -2 +0" False (Moves.validMoveKing testKingBoard3 (4,4) (2,4)))

testvalidMoveKing58 = TestCase (assertEqual "King -2 +1" False (Moves.validMoveKing testKingBoard3 (4,4) (2,5)))

testvalidMoveKing59 = TestCase (assertEqual "King -2 +2" False (Moves.validMoveKing testKingBoard3 (4,4) (2,6)))

testvalidMoveKing60 = TestCase (assertEqual "King -1 +2" False (Moves.validMoveKing testKingBoard3 (4,4) (3,6)))

testvalidMoveKing61 = TestCase (assertEqual "King +0 +2" False (Moves.validMoveKing testKingBoard3 (4,4) (4,6)))

testvalidMoveKing62 = TestCase (assertEqual "King +1 +2" False (Moves.validMoveKing testKingBoard3 (4,4) (5,6)))

testvalidMoveKing63 = TestCase (assertEqual "King +2 +2" False (Moves.validMoveKing testKingBoard3 (4,4) (6,6)))

testvalidMoveKing64 = TestCase (assertEqual "King +2 +1" False (Moves.validMoveKing testKingBoard3 (4,4) (6,5)))

testvalidMoveKing65 = TestCase (assertEqual "King +2 +0" False (Moves.validMoveKing testKingBoard3 (4,4) (6,4)))

testvalidMoveKing66 = TestCase (assertEqual "King +2 -1" False (Moves.validMoveKing testKingBoard3 (4,4) (6,3)))

testvalidMoveKing67 = TestCase (assertEqual "King +2 -2" False (Moves.validMoveKing testKingBoard3 (4,4) (6,2)))

testvalidMoveKing68 = TestCase (assertEqual "King +1 -2" False (Moves.validMoveKing testKingBoard3 (4,4) (5,2)))

testvalidMoveKing69 = TestCase (assertEqual "King +0 -2" False (Moves.validMoveKing testKingBoard3 (4,4) (4,2)))

testvalidMoveKing70 = TestCase (assertEqual "King -1 -2" False (Moves.validMoveKing testKingBoard3 (4,4) (3,2)))

testvalidMoveKing71 = TestCase (assertEqual "King -2 -2" False (Moves.validMoveKing testKingBoard3 (4,4) (2,2)))

testvalidMoveKing72 = TestCase (assertEqual "King -2 -1" False (Moves.validMoveKing testKingBoard3 (4,4) (2,3)))





runKingTests = runTestTT $ TestList [testvalidMoveKing1, testvalidMoveKing2, testvalidMoveKing3, testvalidMoveKing4, testvalidMoveKing5, testvalidMoveKing6, testvalidMoveKing7, testvalidMoveKing8, testvalidMoveKing9, testvalidMoveKing10, testvalidMoveKing11, testvalidMoveKing12, testvalidMoveKing13, testvalidMoveKing14, testvalidMoveKing15, testvalidMoveKing16, testvalidMoveKing17, testvalidMoveKing18, testvalidMoveKing19, testvalidMoveKing20, testvalidMoveKing21, testvalidMoveKing22, testvalidMoveKing23, testvalidMoveKing24, testvalidMoveKing25, testvalidMoveKing26, testvalidMoveKing27, testvalidMoveKing28, testvalidMoveKing29, testvalidMoveKing30, testvalidMoveKing32, testvalidMoveKing33, testvalidMoveKing34, testvalidMoveKing35, testvalidMoveKing36, testvalidMoveKing37, testvalidMoveKing38, testvalidMoveKing39, testvalidMoveKing40, testvalidMoveKing41, testvalidMoveKing42, testvalidMoveKing43, testvalidMoveKing44, testvalidMoveKing45, testvalidMoveKing46, testvalidMoveKing47, testvalidMoveKing48, testvalidMoveKing49, testvalidMoveKing50, testvalidMoveKing51, testvalidMoveKing52, testvalidMoveKing53, testvalidMoveKing54, testvalidMoveKing55, testvalidMoveKing56, testvalidMoveKing57, testvalidMoveKing58, testvalidMoveKing59, testvalidMoveKing60, testvalidMoveKing61, testvalidMoveKing62, testvalidMoveKing63, testvalidMoveKing64, testvalidMoveKing65, testvalidMoveKing66, testvalidMoveKing67, testvalidMoveKing68, testvalidMoveKing69, testvalidMoveKing70, testvalidMoveKing71, testvalidMoveKing72]

testBorderCrossingRookWest = TestCase (assertEqual "Rook west" False (Moves.validMove testBorderCrossingBoard1 "White player" "b2" "b8"))

testBorderCrossingRookEast = TestCase (assertEqual "Rook east" False (Moves.validMove testBoard "Black player" "b7" "b1"))

testBorderCrossingRookNorth = TestCase (assertEqual "Rook north" False (Moves.validMove testBoard "White player" "b2" "h2"))

testBorderCrossingRookSouth = TestCase (assertEqual "Rook south" False (Moves.validMove testBoard "Black player" "g7" "a7"))

testBorderCrossingKnightWest = TestCase (assertEqual "Knight west" False (Moves.validMove testBoard "White player" "c3" "b8"))

testBorderCrossingKnightEast = TestCase (assertEqual "Knight east" False (Moves.validMove testBoard "Black player" "f7" "g1"))

testBorderCrossingKnightSouth = TestCase (assertEqual "Knight south" False (Moves.validMove testBoard "White player" "g2" "a3"))

testBorderCrossingKnightNorth = TestCase (assertEqual "Knight north" False (Moves.validMove testBoard "Black player" "b7" "h6"))

testBorderCrossingBishopWest = TestCase (assertEqual "White west" False (Moves.validMove testBoard "White player" "d2" "b8"))

testBorderCrossingBishopEast = TestCase (assertEqual "Black west" False (Moves.validMove testBoard "Black player" "d7" "f1"))

testBorderCrossingBishopNorth = TestCase (assertEqual "White north" False (Moves.validMove testBoard "White player" "d2" "h6"))

testBorderCrossingBishopSouth = TestCase (assertEqual "Black south" False (Moves.validMove testBoard "White player" "d2" "a7"))

testBorderCrossingKingWest = TestCase (assertEqual "King west" False (Moves.validMove testBorderCrossingBoard1 "White player" "a1" "a8"))

testBorderCrossingKingEast = TestCase (assertEqual "King east" False (Moves.validMove testBorderCrossingBoard1 "Black player" "h8" "h1"))

testBorderCrossingKingNorth = TestCase (assertEqual "King north" False (Moves.validMove testBorderCrossingBoard1 "White King" "a1" "h1"))

testBorderCrossingKingSouth = TestCase (assertEqual "King south" False (Moves.validMove testBorderCrossingBoard1 "Black player" "h8" "a8"))

testBorderCrossingPawnWestPassive = TestCase (assertEqual "Pawn west passive" False (Moves.validMove testBorderCrossingBoard2 "Black player" "f1" "f8"))

testBorderCrossingPawnWestAggresive = TestCase (assertEqual "Pawn west aggresive" False (Moves.validMove testBorderCrossingBoard2 "Black player" "e1" "d8"))

testBorderCrossingPawnEasttPassive = TestCase (assertEqual "Pawn east passive" False (Moves.validMove testBorderCrossingBoard2 "White player" "d8" "d1"))

testBorderCrossingPawnEastAggresive = TestCase (assertEqual "Pawn east aggresive" False (Moves.validMove testBorderCrossingBoard2 "White player" "e8" "f1"))

testBorderCrossingWhitePawnNorthPassive = TestCase (assertEqual "Pawn north passive" False (Moves.validMove testBorderCrossingBoard2 "White player" "f1" "f8"))

testBorderCrossingWhitePawnNorthAggresive = TestCase (assertEqual "Pawn north aggresive" False (Moves.validMove testBorderCrossingBoard2 "White player" "e1" "d8"))

testBorderCrossingWhitePawnSouthPassive = TestCase (assertEqual "Pawn south passive" False (Moves.validMove testBorderCrossingBoard2 "White player" "d8" "d1"))

testBorderCrossingWhitePawnSouthAggresive = TestCase (assertEqual "Pawn south aggresive" False (Moves.validMove testBorderCrossingBoard2 "White player" "e8" "f1"))

testBorderCrossingBlackPawnNorthPassive = TestCase (assertEqual "Pawn north passive" False (Moves.validMove testBorderCrossingBoard2 "Black player" "f1" "f8"))

testBorderCrossingBlackPawnNorthAggresive = TestCase (assertEqual "Pawn north aggresive" False (Moves.validMove testBorderCrossingBoard2 "Black player" "e1" "d8"))

testBorderCrossingBlackPawnSouthPassive = TestCase (assertEqual "Pawn south passive" False (Moves.validMove testBorderCrossingBoard2 "Black player" "d8" "d1"))

testBorderCrossingBlackPawnSouthAggresive = TestCase (assertEqual "Pawn south aggresive" False (Moves.validMove testBorderCrossingBoard2 "Black player" "e8" "f1"))


runBorderCrossingTests = runTestTT $ TestList [testBorderCrossingRookWest, testBorderCrossingRookEast, testBorderCrossingRookNorth, testBorderCrossingRookSouth, testBorderCrossingKnightWest, testBorderCrossingKnightEast, testBorderCrossingKnightSouth, testBorderCrossingKnightNorth, testBorderCrossingBishopWest, testBorderCrossingBishopEast, testBorderCrossingBishopNorth, testBorderCrossingBishopSouth, testBorderCrossingKingWest, testBorderCrossingKingEast, testBorderCrossingKingNorth, testBorderCrossingKingSouth, testBorderCrossingPawnWestPassive, testBorderCrossingPawnWestAggresive, testBorderCrossingPawnEasttPassive, testBorderCrossingPawnEastAggresive]



testConvertcastling = TestCase (assertEqual "convert castling" (9, 9) (Moves.convert "castling"))

testConvertrandom = TestCase (assertEqual "convert random string" (10, 10) (Moves.convert "random string"))

testConverta = TestCase (assertEqual "convert a" (10, 10) (Moves.convert "a"))

testConvertaa = TestCase (assertEqual "convert aa" (10, 10) (Moves.convert "aa"))

testConvertaaa = TestCase (assertEqual "convert aaa" (10, 10) (Moves.convert "aaa"))

testConverta1 = TestCase (assertEqual "convert a1" (1, 1) (Moves.convert "a1"))

testConvert1a = TestCase (assertEqual "convert 1a" (10, 10) (Moves.convert "1a"))



runConvertTests = runTestTT $ TestList [testConvertcastling, testConvertrandom, testConverta, testConvertaa, testConvertaaa, testConverta1, testConvert1a]

testPosition11 = TestCase (assertEqual "position (1, 1)" 0 (Moves.position (1, 1)))

testPosition12 = TestCase (assertEqual "position (1, 2)" 1 (Moves.position (1, 2)))

testPosition13 = TestCase (assertEqual "position (1, 3)" 2 (Moves.position (1, 3)))

testPosition14 = TestCase (assertEqual "position (1, 4)" 3 (Moves.position (1, 4)))

testPosition15 = TestCase (assertEqual "position (1, 5)" 4 (Moves.position (1, 5)))

testPosition16 = TestCase (assertEqual "position (1, 6)" 5 (Moves.position (1, 6)))

testPosition17 = TestCase (assertEqual "position (1, 7)" 6 (Moves.position (1, 7)))

testPosition18 = TestCase (assertEqual "position (1, 8)" 7 (Moves.position (1, 8)))

testPosition21 = TestCase (assertEqual "position (2, 1)" 8 (Moves.position (2, 1)))

testPosition22 = TestCase (assertEqual "position (2, 2)" 9 (Moves.position (2, 2)))

testPosition23 = TestCase (assertEqual "position (2, 3)" 10 (Moves.position (2, 3)))

testPosition24 = TestCase (assertEqual "position (2, 4)" 11 (Moves.position (2, 4)))

testPosition25 = TestCase (assertEqual "position (2, 5)" 12 (Moves.position (2, 5)))

testPosition26 = TestCase (assertEqual "position (2, 6)" 13 (Moves.position (2, 6)))

testPosition27 = TestCase (assertEqual "position (2, 7)" 14 (Moves.position (2, 7)))

testPosition28 = TestCase (assertEqual "position (2, 8)" 15 (Moves.position (2, 8)))

testPosition34 = TestCase (assertEqual "position (3, 4)" 19 (Moves.position (3, 4)))

testPosition46 = TestCase (assertEqual "position (4, 6)" 29 (Moves.position (4, 6)))

testPosition55 = TestCase (assertEqual "position (5, 5)" 36 (Moves.position (5, 5)))

testPosition63 = TestCase (assertEqual "position (6, 3)" 42 (Moves.position (6, 3)))

testPosition71 = TestCase (assertEqual "position (7, 1)" 48 (Moves.position (7, 1)))

testPosition88 = TestCase (assertEqual "position (8, 8)" 63 (Moves.position (8, 8)))

runPositionTests = runTestTT $ TestList [testPosition11, testPosition12, testPosition13, testPosition14, testPosition15, testPosition16, testPosition17, testPosition18, testPosition21, testPosition22, testPosition23, testPosition24, testPosition25, testPosition26, testPosition27, testPosition28, testPosition34, testPosition46, testPosition55, testPosition63, testPosition71, testPosition88] 

testOnSquare1 = TestCase (assertEqual "onSquare Empty" Empty (Moves.onSquare testBoard 0))

testOnSquare2 = TestCase (assertEqual "onSquare White Rook" (White Rook) (Moves.onSquare testBoard 2))

testOnSquare3 = TestCase (assertEqual "onSquare Black King" (Black King) (Moves.onSquare testBoard 31))

runOnSquareTests = runTestTT $ TestList [testOnSquare1, testOnSquare2, testOnSquare3]


testisSameColour1 = TestCase (assertEqual "White, White" True (Moves.isSameColour (White Rook) (White King)))

testisSameColour2 = TestCase (assertEqual "Black, Black" True (Moves.isSameColour (Black Pawn) (Black Bishop)))

testisSameColour3 = TestCase (assertEqual "White, Black" False (Moves.isSameColour (White Rook) (Black King)))

testisSameColour4 = TestCase (assertEqual "Empty, White" False (Moves.isSameColour (Empty) (White King)))

testisSameColour5 = TestCase (assertEqual "Black, Empty" False (Moves.isSameColour (Black Rook) (Empty)))

testisSameColour6 = TestCase (assertEqual "Empty, Empty" False (Moves.isSameColour (Empty) (Empty)))

runisSameColourTests = runTestTT $ TestList [testisSameColour1, testisSameColour2, testisSameColour3, testisSameColour4, testisSameColour5, testisSameColour6]

testisSameColourPlayer1 = TestCase (assertEqual "White, White" True (Moves.isSameColourPlayer "White player" (White King)))

testisSameColourPlayer2 = TestCase (assertEqual "Black, Black" True (Moves.isSameColourPlayer "Black player" (Black Bishop)))

testisSameColourPlayer3 = TestCase (assertEqual "White, Black" False (Moves.isSameColourPlayer "White player" (Black King)))

testisSameColourPlayer4 = TestCase (assertEqual "Black, White" False (Moves.isSameColourPlayer "Black player" (White King)))

testisSameColourPlayer5 = TestCase (assertEqual "Black, Empty" False (Moves.isSameColourPlayer "Black player" (Empty)))

testisSameColourPlayer6 = TestCase (assertEqual "White, Empty" False (Moves.isSameColourPlayer "White player" (Empty)))


runisSameColourPlayerTests = runTestTT $ TestList [testisSameColourPlayer1, testisSameColourPlayer2, testisSameColourPlayer3, testisSameColourPlayer4, testisSameColourPlayer5, testisSameColourPlayer6]



testvalidMove1 = TestCase (assertEqual "Pawn move like Rook" False (Moves.validMove testBoard "Black player" "g6" "d6"))

testvalidMove2 = TestCase (assertEqual "Pawn move like Bishop" False (Moves.validMove testBoard "Black player" "g6" "e4"))

testvalidMove3 = TestCase (assertEqual "Pawn move like Knight" False (Moves.validMove testBoard "Black player" "g6" "f4"))

testvalidMove4 = TestCase (assertEqual "Pawn move like Pawn" True (Moves.validMove testBoard "Black player" "b5" "b4"))


testvalidMove5 = TestCase (assertEqual "Rook move like Rook" True (Moves.validMove testBoard "Black player" "c6" "c3"))

testvalidMove6 = TestCase (assertEqual "Rook move like Bishop" False (Moves.validMove testBoard "Black player" "c6" "e4"))

testvalidMove7 = TestCase (assertEqual "Rook move like Knight" False (Moves.validMove testBoard "Black player" "c6" "d4"))


testvalidMove8 = TestCase (assertEqual "Bishop move like Rook" False (Moves.validMove testBoard "White player" "h5" "h8"))

testvalidMove9 = TestCase (assertEqual "Bishop move like Bishop" True (Moves.validMove testBoard "White player" "h4" "f2"))

testvalidMove10 = TestCase (assertEqual "Bishop move like Knight" False (Moves.validMove testBoard "White player" "h5" "g7"))


testvalidMove11 = TestCase (assertEqual "Knight move like Rook" False (Moves.validMove testBoard "White player" "g5" "c5"))

testvalidMove12 = TestCase (assertEqual "Knight move like Bishop" False (Moves.validMove testBoard "White player" "g5" "d8"))

testvalidMove13 = TestCase (assertEqual "Knight move like Knight" True (Moves.validMove testBoard "White player" "g5" "f7"))


testvalidMove14 = TestCase (assertEqual "Queen move like Rook" True (Moves.validMove testBoard "White player" "c3" "c6"))

testvalidMove15 = TestCase (assertEqual "Queen move like Bishop" True (Moves.validMove testBoard "White player" "c3" "g7"))

testvalidMove16 = TestCase (assertEqual "Queen move like Knight" False (Moves.validMove testBoard "White player" "c3" "d5"))


testvalidMove17 = TestCase (assertEqual "King move like Rook" False (Moves.validMove testBoard "Black player" "d8" "h8"))

testvalidMove18 = TestCase (assertEqual "King move like Bishop" False (Moves.validMove testBoard "Black player" "d8" "b6"))

testvalidMove19 = TestCase (assertEqual "King move like Knight" False (Moves.validMove testBoard "Black player" "d8" "e6"))

testvalidMove20 = TestCase (assertEqual "King move like King" True (Moves.validMove testBoard "Black player" "d8" "e8"))

runvalidMoveTests = runTestTT $ TestList [testvalidMove1, testvalidMove2, testvalidMove3, testvalidMove4, testvalidMove5, testvalidMove6, testvalidMove7, testvalidMove8, testvalidMove9, testvalidMove10, testvalidMove11, testvalidMove12, testvalidMove13, testvalidMove14, testvalidMove15, testvalidMove16, testvalidMove17, testvalidMove18, testvalidMove19, testvalidMove20]
