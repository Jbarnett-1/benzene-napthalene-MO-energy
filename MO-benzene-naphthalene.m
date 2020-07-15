% Construct a secular determinant as a symbolic matrix 
% using benzene and naphthalene and find the energies for the pi molecular orbitals. 
clear all
close all
syms a b E 

benz = [a-E b 0 0 0 b	 %Benzene
    b a-E b 0 0 0
    0 b a-E b 0 0 
    0 0 b a-E b 0
    0 0 0 b a-E b
    b 0 0 0 b a-E];
A1 = det(benz);
E1 = solve(A1,E)

nap = [a-E b 0 0 0 b 0 0 0 b   %Naphthalene
    b a-E b 0 0 0 0 0 0 0
    0 b a-E b 0 0 0 0 0 0
    0 0 b a-E b 0 0 0 0 0 
    0 0 0 b a-E b 0 0 0 0
    b 0 0 0 b a-E b 0 0 0
    0 0 0 0 0 b a-E b 0 0
    0 0 0 0 0 0 b a-E b 0 
    0 0 0 0 0 0 0 b a-E b  
    b 0 0 0 0 0 0 0 b a-E];
A2 = det(nap);
E2 = solve(A2,E)
