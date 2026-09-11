%
% Erikas Kėvelaitis EF-25/2 2026-09-11
%

%
%Paprastas skriptas
%

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |  F_2 [-x]')

%
%Papildoma uzduotis
% 

N = 0;
v = (N+1) : 0.5 : (N+4);
A = reshape(N : (N+8), 3, 3)';
A_a = A(3,2)
A_b = A(2:3,1:2)
A_c = A([1, 3],[1, 3])

v_mod = v(1:3);
A_mod = [A; v_mod]