function res = Ax8_3( A , B )
A_higher = bitget( A , 8:-1:5);
A_lower = bitget( A , 4:-1:1);
B_higher = bitget( B , 8:-1:5);
B_lower = bitget( B , 4:-1:1);

pp1 = MxA(A_lower,B_lower);
pp2 = LxA(A_higher,B_lower);
pp3 = LxA(A_lower,B_higher);
pp4 = wallace_4x4(A_higher,B_higher);

res = bitshift(pp4,8) + bitshift(pp3,4) + bitshift(pp2,4) + pp1;