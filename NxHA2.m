function  [S,C] = NxHA2( A , B )
S = not(or(A,not(B)));
C = and(A,B);
