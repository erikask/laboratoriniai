function nelygu0
    global x y

    ind = (x ~= 0);
    y(ind) = sin(x(ind)) ./ x(ind);
end