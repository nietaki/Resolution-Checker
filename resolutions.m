function resolutions()

[resolutions, labels] = data();
res  = resolutions(:, 1:2) 



middle = [1000 1000];
middles = ones(size(res, 1), 1) * middle

multipliers = [1066/4;%"5:4" 
              1066/3; %"4:3" 
              16/3*100; %"3:2" 
              100; %"16:10"
              16/5*100; %"5:3" 
              100]%"16:9"}

multiplied = res .* (multipliers * [1 1])

LBC = middles - (multiplied * 0.5)
RUC = middles + (multiplied * 0.5)

rects(LBC, RUC, labels);
axis("equal");
pause;
close;
end 
