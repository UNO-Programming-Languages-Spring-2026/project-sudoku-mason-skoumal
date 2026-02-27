% 4x4 Sudoku
pos(1..4).
val(1..4).

% only 1 num each cell
1 { sudoku(X,Y,N) : val(N) } 1 :- pos(X), pos(Y).

% initial clues must be respected
:- initial(X,Y,N), not sudoku(X,Y,N).

% only 1 of each num/row
:- sudoku(X,Y,N), sudoku(X,Y2,N), Y != Y2.

% only 1 of each num/col
:- sudoku(X,Y,N), sudoku(X2,Y,N), X != X2.
#show sudoku/3.
