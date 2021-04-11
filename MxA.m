function res = MxA( A , B )
res = zeros(1,8);

for i = 1:4
    pp1(i) = and( A(i) , B(1) );
    pp2(i) = and( A(i) , B(2) );
    pp3(i) = and( A(i) , B(3) );
    pp4(i) = and( A(i) , B(4) );
end

E2_0 = or(and(A(2),B(4)),and(A(4),B(2)));
E3_1 = or(and(A(1),B(3)),and(A(3),B(1)));
E3_0 = or(and(A(1),B(4)),and(A(4),B(1)));
E2_1 = or(and(A(2),B(3)),and(A(3),B(2)));

F3_0 = and(and(A(1),B(4)),and(A(4),B(1)));
F2_1 = and(and(A(2),B(3)),and(A(3),B(2)));

F3 = or(F3_0,F2_1);

res(8) = pp4(4);
[res(7),C2] = NxHA1(pp4(3),pp3(4));
[res(6),C3] = NxFA(E2_0,pp3(3),C2);
[res(5),C4] = NxFA(E3_0,E2_1,F3);
[res(4),C5] = NxFA(E3_1,pp1(3),C4);
[res(3),C6] = NxFA(pp2(1),pp1(2),C5);
[res(2),res(1)] = NxHA1(pp1(1),C6);

res = bi2de(res,'left-msb');

end