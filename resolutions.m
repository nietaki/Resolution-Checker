function resolutions()

res         =  [5 4;
                4 3;
                3 2;
                8 5;
                5 3;
                16 9];



middle = [1000 1000];
middles = ones(size(res, 1), 1) * middle

multipliers = [100;
              100;
              100;
              100;
              100;
              100];

multiplied = res .* (multipliers * [1 1])

LBC = middles - (multiplied * 0.5)
RUC = middles + (multiplied * 0.5)
%rectangle([1 3;6 4;2 3],[0 3;2 7;1 5]);
rectangle(LBC, RUC);
end 
