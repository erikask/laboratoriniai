%Privaloma uzduotis

%   1
close all;

x = 0 : 0.5 : 2*pi;
f = sin(x)+cos(x).^2;
figure;
plot(x, f, 'o', 'MarkerFaceColor', 'y', 'MarkerEdgeColor', 'r')
grid on;
axis([min(x) max(x) min(f) max(f)]);
xlabel('x');
ylabel('f(x)');
title('f(x) = sin(x) + cos^2(x)');
legend('f(x) taškai', 'Location', 'best');

f1 = x.^exp(1);
f2 = x.^(2*exp(1));
f3 = x.^(3*exp(1));
figure(2);
plot(x, f1); hold on;
plot(x, f2);
plot(x, f3);
grid on;
axis([min(x) max(x) min(f3) max(f3)]);
xlabel('x');
ylabel('f(x)');
title('f(x) = x^e, x^{2e}, x^{3e}');
legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'best');

%   2

x = -2*pi : 0.5 : 2*pi;
y = x.^3 + sin(x);

figure(3);
quiver(x, zeros(size(x)), zeros(size(x)), y);
xlabel('x');
ylabel('y(x)');
title('y(x) = x^3 + sin(x) vektoriai');

figure(4);
bar(x,y);
xlabel('x');
ylabel('y(x)');
title('y(x) = x^3 + sin(x) stulpeline diagrama');

%Papildoma uzduotis

A = 5.5;
f = 5;
o = 0.8;
u1 = 3.5;
u2 = 2;
t = 0: 0.005 : 1;

s_p = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = o*randn(size(t));
s = s_p + n;
s_filt = s;
s_filt(abs(s_filt)<u2) = 0;

figure(5);
subplot(1,2,1);
plot(t, s, '-', 'Color', 'b'); hold on;
plot(t, s_filt, ':', 'Color', 'y', 'LineWidth', 1.5);
yline(u1, '--', 'Color', 'k');
yline(u2, ':', 'Color', 'k');
grid on;
axis([min(t) max(t) min(s)-1 max(s)+1]);
xlabel('t, s', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('Įtampa, V', 'FontSize', 14, 'FontWeight', 'bold');
title('Pradinis ir filtruotas signalai');
legend('Pradinis signalas', 'Filtruotas signalas', 'U_1 riba', 'U_2 riba', 'Location', 'best');

idx = s > u1;
t_sel = t(idx);
s_sel = s(idx);

[maxVal, maxIdx] = max(s_sel);
[minVal, minIdx] = min(s_sel);

subplot(1,2,2);
stem(t_sel, s_sel); hold on;
plot(t_sel(maxIdx), maxVal, 'r^', 'MarkerSize', 12, 'MarkerFaceColor', 'r');
plot(t_sel(minIdx), minVal, 'gv', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
grid on;
axis([min(t) max(t) u1-0.5 max(s_sel)+1]);
xlabel('t, s', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('Įtampa, V', 'FontSize', 14, 'FontWeight', 'bold');
title('Reikšmės, viršijančios U_1 ribą');
legend('Signalo reikšmės', 'Maksimali reikšmė', 'Minimali reikšmė', 'Location', 'best');