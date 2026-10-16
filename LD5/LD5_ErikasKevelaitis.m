%   1

studentai(1).vardas_pavarde = 'Erikas Kėvelaitis';
studentai(1).grupe = 'EF-25/2';
studentai(1).pazymiai = [10, 9, 10; 9, 8, 10];

studentai(2).vardas_pavarde = 'Jonas Jonaitis';
studentai(2).grupe = 'EF-25/2';
studentai(2).pazymiai = [7, 8, 6; 9, 7, 8];

studentai(3).vardas_pavarde = 'Petras Petraitis';
studentai(3).grupe = 'EF-25/2';
studentai(3).pazymiai = [10, 9, 9; 8, 10, 9];

studentai(2).pazymiai(1, 3) = 9;

disp('Visų studentų duomenys');
for k = 1:length(studentai)
    fprintf('Studentas %d: %s %s\n', k, studentai(k).vardas_pavarde, studentai(k).grupe);
    disp('Pažymių matrica:');
    disp(studentai(k).pazymiai);
end

%   2
format bank;

p1 = 0.10; 
p2 = 0.15;
p3 = 0.20;

sumos = 10000:1000:20000;

lentele = zeros(length(sumos), 4);

for i = 1:length(sumos)
    S = sumos(i);

    imoka1 = (S * p1) / 12;
    imoka2 = (S * p2) / 12;
    imoka3 = (S * p3) / 12;
    lentele(i, :) = [S, imoka1, imoka2, imoka3];
end

disp('  Suma (€)    Bankas 1 (10%)  Bankas 2 (15%)  Bankas 3 (20%)');
disp('-----------------------------------------------------------');

disp(lentele);

%   3

x = input('Įveskite x: ');
y = input('Įveskite y: ');

if x < 1 || y < 1
    error('Skaičiai x ir y turi būti teigiami.');
end

for k = 1:15
    m = randi([1, x]);
    n = randi([1, y]);

    A = zeros(x, y);

    A(m, n) = NaN;

    disp(A);

    pause(0.5);

    clc;
end