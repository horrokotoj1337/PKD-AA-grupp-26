module TestCases
  where


import Test.HUnit
import Moves


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


testKnightBoard1 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, White Pawn, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Empty, White Knight, Empty, Empty, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Black Pawn, Empty, Black Pawn, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKnightBoard2 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, White Pawn, Black Pawn, White Pawn, Black Pawn, White Pawn, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Empty, Black Knight, Empty, Empty, Empty, Empty,
                   Empty, Black Pawn, Empty, Empty, Empty, Black Pawn, Empty, Empty,
                   Empty, Empty, Black Pawn, Empty, Black Pawn, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKnightBoard3 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Black Pawn, White Pawn, Black Pawn, White Pawn, Black Pawn, Empty, Empty,
                   Empty, White Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                   Empty, Empty, Empty, Black Knight, Empty, Empty, Empty, Empty,
                   Empty, White Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                   Empty, Empty, White Pawn, Empty, White Pawn, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKnightBoard4 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Black Pawn, White Pawn, Black Pawn, White Pawn, Black Pawn, Empty, Empty,
                   Empty, White Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                   Empty, Empty, Empty, White Knight, Empty, Empty, Empty, Empty,
                   Empty, White Pawn, Empty, Empty, Empty, White Pawn, Empty, Empty,
                   Empty, Empty, White Pawn, Empty, White Pawn, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                   Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]





testPawnBoard1 = [Empty, White Pawn, Black Pawn, Empty, Empty, White Pawn, Black Pawn, Empty,
                 Empty, White Pawn, White Pawn, Empty, Empty, Black Pawn, Black Pawn, Empty,
                 Black Pawn, Empty, Black Pawn, Empty, Empty, White Pawn, Empty, White Pawn,
                 Empty, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty,
                 Black Pawn, Empty, Black Pawn, Empty, Empty, White Pawn, Empty, White Pawn,
                 Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                 Empty, Black Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty,
                 Empty, White Pawn, Empty, Empty, Empty, Empty, White Pawn, Empty]

testPawnBoard2 = [Empty, Empty, Empty, Black Pawn, White Pawn, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, White Pawn, Empty, Empty, Empty, Empty, Black Pawn, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Black Pawn, White Pawn, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                  White Pawn, Empty, Empty, Empty, Empty, Empty, Empty, Black Pawn]

testKingBoard1 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, White King, Empty, Empty, Black King, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKingBoard2 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Black Pawn, Black Pawn, Black Pawn, White Pawn, White Pawn, White Pawn, Empty,
                Empty, Black Pawn, White King, Black Pawn, White Pawn, Black King, White Pawn, Empty,
                Empty, Black Pawn, Black Pawn, Black Pawn, White Pawn, White Pawn, White Pawn, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]

testKingBoard3 = [Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Black Pawn, Empty, Empty, White Pawn, Empty, Empty,
                Empty, Empty, Black Pawn, Black Pawn, White Pawn, White Pawn, Empty, Empty,
                Black Pawn, Empty, White King, Empty, Empty, Black King, Empty, White Pawn,
                Empty, Empty, White Pawn, White Pawn, Black Pawn, Black Pawn, White Pawn, Empty,
                Empty, Empty, Black Pawn, Empty, Empty, White Pawn, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
                Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty]



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


runPawnTests = runTestTT $ TestList [testvalidMovePawn1, testvalidMovePawn2, testvalidMovePawn3, testvalidMovePawn4, testvalidMovePawn5, testvalidMovePawn6, testvalidMovePawn7, testvalidMovePawn8, testvalidMovePawn9, testvalidMovePawn10, testvalidMovePawn11, testvalidMovePawn12, testvalidMovePawn13, testvalidMovePawn14, testvalidMovePawn15, testvalidMovePawn16, testvalidMovePawn17, testvalidMovePawn18, testvalidMovePawn19, testvalidMovePawn20, testvalidMovePawn21, testvalidMovePawn22, testvalidMovePawn23, testvalidMovePawn24, testvalidMovePawn25, testvalidMovePawn26, testvalidMovePawn27, testvalidMovePawn28, testvalidMovePawn29, testvalidMovePawn30, testvalidMovePawn31, testvalidMovePawn32]


testvalidMoveKing1 = TestCase (assertEqual "White King move right" True (Moves.validMoveKing testKingBoard1 (4, 3) (4, 4)))

testvalidMoveKing2 = TestCase (assertEqual "White King move left" True (Moves.validMoveKing testKingBoard1 (4, 3) (4, 2)))

testvalidMoveKing3 = TestCase (assertEqual "White King move up" True (Moves.validMoveKing testKingBoard1 (4, 3) (3, 3)))

testvalidMoveKing4 = TestCase (assertEqual "White King move down" True (Moves.validMoveKing testKingBoard1 (4, 3) (5, 3)))

testvalidMoveKing5 = TestCase (assertEqual "Black King move right" True (Moves.validMoveKing testKingBoard1 (4, 6) (4, 7)))

testvalidMoveKing6 = TestCase (assertEqual "Black King move left" True (Moves.validMoveKing testKingBoard1 (4, 6) (4, 5)))

testvalidMoveKing7 = TestCase (assertEqual "Black King move up" True (Moves.validMoveKing testKingBoard1 (4, 6) (3, 6)))

testvalidMoveKing8 = TestCase (assertEqual "Black King move down" True (Moves.validMoveKing testKingBoard1 (4, 6) (5, 6)))

testvalidMoveKing9 = TestCase (assertEqual "White King strike enemy to the right" True (Moves.validMoveKing testKingBoard2 (4, 3) (4, 4)))

testvalidMoveKing10 = TestCase (assertEqual "White King strike enemy to the left" True (Moves.validMoveKing testKingBoard2 (4, 3) (4, 2)))

testvalidMoveKing11 = TestCase (assertEqual "White King strike enemy to the up" True (Moves.validMoveKing testKingBoard2 (4, 3) (3, 3)))

testvalidMoveKing12 = TestCase (assertEqual "White King strike enemy to the down" True (Moves.validMoveKing testKingBoard2 (4, 3) (5, 3)))

testvalidMoveKing13 = TestCase (assertEqual "Black King strike enemy to the right" True (Moves.validMoveKing testKingBoard2 (4, 6) (4, 7)))

testvalidMoveKing14 = TestCase (assertEqual "Black King strike enemy to the left" True (Moves.validMoveKing testKingBoard2 (4, 6) (4, 5)))

testvalidMoveKing15 = TestCase (assertEqual "Black King strike enemy to the up" True (Moves.validMoveKing testKingBoard2 (4, 6) (3, 6)))

testvalidMoveKing16 = TestCase (assertEqual "Black King strike enemy to the down" True (Moves.validMoveKing testKingBoard2 (4, 6) (5, 6)))

testvalidMoveKing17 = TestCase (assertEqual "White King strike enemy to upper left" True (Moves.validMoveKing testKingBoard2 (4, 3) (3, 4)))

testvalidMoveKing18 = TestCase (assertEqual "White King strike enemy to lower left" True (Moves.validMoveKing testKingBoard2 (4, 3) (5, 4)))
                 
testvalidMoveKing19 = TestCase (assertEqual "White King strike enemy to upper right" True (Moves.validMoveKing testKingBoard2 (4, 3) (3, 2)))
                 
testvalidMoveKing20 = TestCase (assertEqual "White King strike enemy to lower right" True (Moves.validMoveKing testKingBoard2 (4, 3) (5, 2)))
                 
testvalidMoveKing21 = TestCase (assertEqual "Black King strike enemy to upper left" True (Moves.validMoveKing testKingBoard2 (4, 6) (3, 7)))
                 
testvalidMoveKing22 = TestCase (assertEqual "Black King strike enemy to lower left" True (Moves.validMoveKing testKingBoard2 (4, 6) (5, 7)))
                 
testvalidMoveKing23 = TestCase (assertEqual "Black King strike enemy to upper right" True (Moves.validMoveKing testKingBoard2 (4, 6) (3, 5)))
                 
testvalidMoveKing24 = TestCase (assertEqual "Black King strike enemy to lower right" True (Moves.validMoveKing testKingBoard2 (4, 6) (5, 5)))

testvalidMoveKing25 = TestCase (assertEqual "White King move one step when enemy at two" True (Moves.validMoveKing testKingBoard2 (4, 3) (4, 2)))

testvalidMoveKing26 = TestCase (assertEqual "White King take enemy at two steps" False (Moves.validMoveKing testKingBoard3 (4, 3) (4,1)))

testvalidMoveKing27 = TestCase (assertEqual "White King take own pawn" False (Moves.validMoveKing testKingBoard3 (4, 3) (5, 3)))

testvalidMoveKing28 = TestCase (assertEqual "White King take own pawn diagonally" False (Moves.validMoveKing testKingBoard3 (4, 3) (5, 4)))

testvalidMoveKing29 = TestCase (assertEqual "Black King move one step when enemy at two" True (Moves.validMoveKing testKingBoard2 (4, 6) (4, 7)))

testvalidMoveKing30 = TestCase (assertEqual "Black King take enemy at two steps" False (Moves.validMoveKing testKingBoard3 (4, 6) (4,8)))

testvalidMoveKing31 = TestCase (assertEqual "Black King take own pawn" False (Moves.validMoveKing testKingBoard3 (4, 6) (5, 6)))

testvalidMoveKing32 = TestCase (assertEqual "Black King take own pawn diagonally" False (Moves.validMoveKing testKingBoard3 (4, 6) (5, 5)))

testvalidMoveKing33 = TestCase (assertEqual "White King take at two steps with enemy obsticle" False (Moves.validMoveKing testKingBoard2 (4, 3) (2, 3)))

testvalidMoveKing34 = TestCase (assertEqual "White King take at two steps with friendly obsticle" False (Moves.validMoveKing testKingBoard3 (4, 3) (6,3)))

testvalidMoveKing35 = TestCase (assertEqual "White King move lika a Knight" False (Moves.validMoveKing testKingBoard3 (4, 3) (2, 4)))

testvalidMoveKing36 = TestCase (assertEqual "White King Move lika a Bishop" False (Moves.validMoveKing testKingBoard3 (4, 3) (6, 1)))

testvalidMoveKing37 = TestCase (assertEqual "Black King take at two steps with enemy obsticle" False (Moves.validMoveKing testKingBoard2 (4, 6) (2, 6)))

testvalidMoveKing38 = TestCase (assertEqual "Black King take at two steps with friendly obsticle" False (Moves.validMoveKing testKingBoard3 (4, 6) (6, 6)))

testvalidMoveKing39 = TestCase (assertEqual "Black King move lika a Knight" False (Moves.validMoveKing testKingBoard3 (4, 6) (6, 5)))

testvalidMoveKing40 = TestCase (assertEqual "Black King take lika a Rook" False (Moves.validMoveKing testKingBoard3 (4, 6) (4, 3)))


runKingTests = runTestTT $ TestList [testvalidMoveKing1, testvalidMoveKing2, testvalidMoveKing3, testvalidMoveKing4, testvalidMoveKing5, testvalidMoveKing6, testvalidMoveKing7, testvalidMoveKing8, testvalidMoveKing9, testvalidMoveKing10, testvalidMoveKing11, testvalidMoveKing12, testvalidMoveKing13, testvalidMoveKing14, testvalidMoveKing15, testvalidMoveKing16, testvalidMoveKing17, testvalidMoveKing18, testvalidMoveKing19, testvalidMoveKing20, testvalidMoveKing21, testvalidMoveKing22, testvalidMoveKing23, testvalidMoveKing24, testvalidMoveKing25, testvalidMoveKing26, testvalidMoveKing27, testvalidMoveKing28, testvalidMoveKing29, testvalidMoveKing30, testvalidMoveKing31, testvalidMoveKing32, testvalidMoveKing33, testvalidMoveKing34, testvalidMoveKing35, testvalidMoveKing36, testvalidMoveKing37, testvalidMoveKing38, testvalidMoveKing39, testvalidMoveKing40]
