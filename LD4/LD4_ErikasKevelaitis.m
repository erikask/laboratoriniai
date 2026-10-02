%Privaloma uzduotis

close all;

%   1

%   A

[x, y] = meshgrid(linspace(-1, 1, 100));
r = sqrt(x.^2+y.^2);
z = exp(r.^2);
figure;
s = surf(x, y, z);
colormap("autumn");
shading flat;
rotate(s, [0 0 1], 10);
title('z(r) = e^{r^2}');
xlabel('x ašis');
ylabel('y ašis');
zlabel('z ašis');

%   B

x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);
[X, Y] = meshgrid(x, y);

f = sin((X.^2 + Y.^2)/20) .* exp(-(X.^2 + Y.^2));
a = deg2rad(15);
Xr = X*cos(a) - Y*sin(a);
Yr = X*sin(a) + Y*cos(a);

figure;
surf(Xr, Yr, f);
colormap("summer");
shading("flat");
title('f(x,y) = sin((x^2+y^2)/20) \cdot e^{-(x^2+y^2)}');
xlabel('x ašis');
ylabel('y ašis');
zlabel('z ašis');

%Papildoma

x = linspace(-1, 1, 30);
y = linspace(-1, 1, 30);
[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);

figure;
subplot(1,3,1);
surf(X, Y, Z);
shading faceted;
title('shading faceted');
xlabel('x'); ylabel('y'); zlabel('z');

subplot(1, 3, 2);
surf(X, Y, Z);
shading flat;
title('shading flat');
xlabel('x'); ylabel('y'); zlabel('z');

subplot(1, 3, 3);
surf(X, Y, Z);
shading interp;
title('shading interp');
xlabel('x'); ylabel('y'); zlabel('z');

colormap(parula);