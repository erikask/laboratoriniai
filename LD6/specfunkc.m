function y = specfunkc(varargin)
    kintkiekis = nargin;
    
    if kintkiekis == 1
        x = varargin{1};

        x_kubu = x.^3;

        y = x.^2;

    elseif kintkiekis == 2
        a = varargin{1};
        b = varargin{2};

        a_kv = a.^2;
        b_kub = b.^3;

        y = a_kv - b_kub;
end