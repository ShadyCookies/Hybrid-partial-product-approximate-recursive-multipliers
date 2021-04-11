function  [S,C] = NxHA1( A , B )
S = not(or(A,not(B)));
C = A;
    