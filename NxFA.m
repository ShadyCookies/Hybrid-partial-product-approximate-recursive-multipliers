function  [S,C] = NxFA( A , B , Cin)
w1 = not(or(A,B));
S = not(or(Cin,w1));
C = not(or(not(Cin),w1));