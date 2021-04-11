function res = wallace_4x4( A , B )
res = zeros(1,8);

for i = 1:4
    pp1(i) = and( A(i) , B(1) );
    pp2(i) = and( A(i) , B(2) );
    pp3(i) = and( A(i) , B(3) );
    pp4(i) = and( A(i) , B(4) );
end

[H3_S1 , H3_C1] = HA(pp4(2) , pp3(3));          % half adder used on 3rd col from right , stage 1 , S = sum , C = carry
[F4_S1 , F4_C1] = FA(pp4(1) , pp3(2) , pp2(3));
[F5_S1 , F5_C1] = FA(pp3(1) , pp2(2) , pp1(3));

[H4_S2 , H4_C2] = HA(H3_C1 , F4_S1);
[H5_S2 , H5_C2] = HA(F5_S1 , F4_C1);
[F6_S2 , F6_C2] = FA(pp2(1) , pp1(2) , F5_C1);

A_new(7) = pp4(4);
A_new(6) = pp4(3);
A_new(5) = H3_S1;
A_new(4) = H4_S2;
A_new(3) = H4_C2;
A_new(2) = H5_C2;
A_new(1) = F6_C2;

B_new(7) = 0;
B_new(6) = pp3(4);
B_new(5) = pp2(4);
B_new(4) = pp1(4);
B_new(3) = H5_S2;
B_new(2) = F6_S2;
B_new(1) = pp1(1);

res = bi2de(A_new,'left-msb') + bi2de(B_new,'left-msb');

end
        

    