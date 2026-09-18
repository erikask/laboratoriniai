%Privaloma uzduotis

%   1

v1 = (-pi/2) : 0.5 : 3*pi;
v2 = v1.^2;
v3 = sin(v1+v2);
v3 = v3.'

%   2

z = rand(3,3);
z(:,2) = [];
z = z.'

%   3

A = 5.5;
f = 5;
o = 0.8;
u1 = 3.5;
u2 = 2;
t = 0: 0.005 : 1;

s_p = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = o*randn(size(t));
s = s_p + n;

virsijancios = s(s > u1);

s_filt = s;
s_filt(abs(s_filt)<u2) = 0;

dydis = length(s)
a_dydis = length(virsijancios)

maz = min(s_filt)
didz = max(s_filt)

%Papildoma

A = input("Iveskite vektoriu A: ");
B = [A(1:end), A(end:-1:1)];
disp("Vektorius B yra: ")
disp(B)