function y = matfunkc(x);
% MATFUNKC Apskaičiuoja dalimis apibrėžtą matematinę funkciją y(x).
%
% NAUDOJIMAS:
%   y = matfunkc(x)
%
% ĮVESTIS:
%   x - įėjimo kintamasis (skaičius arba vektorius / matrica)
%
% IŠVESTIS:
%   y - išėjimo kintamasis:
%       y = -sin(x), kai x < 0
%       y =  sin(x), kai x >= 0

y = zeros(size(x));

y(x<0) = -sin(x(x<0));
y(x>0) = sin(x(x>=0));

end