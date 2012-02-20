function [centers, areas] = resolutions(versions)

[resolutions, labels] = data();
res  = resolutions(:, 1:2) 



middle = [1000 1000];
middles = ones(size(res, 1), 1) * middle
if(versions == 1)
  multipliers = [1066/4;%"5:4" 
                1066/3; %"4:3" 
                10/2*100; %"3:2" 16/3*100
                100; %"16:10"
                16/5*100; %"5:3" 
                100]%"16:9"}
else
  multipliers = [1600/5;%"5:4" 
                1600/4; %"4:3" 
                1200/2; %"3:2" %odtad szerokie
                1920/16; %"16:10"
                1920/5; %"5:3" 
                1920/16]%"16:9"}
 
endif;

multiplied = res .* (multipliers * [1 1])

LBC = middles - (multiplied * 0.5)
RUC = middles + (multiplied * 0.5)
if(versions == 1)
  
  rects(LBC, RUC, labels);
  axis("equal");
  pause;
  close;
else
  curLBC = LBC(1:2, :);
  curRUC = RUC(1:2, :);
  rects(curLBC, curRUC, labels(1:2, :));
  axis("equal");

  curLBC = LBC(3:6, :);
  curRUC = RUC(3:6, :);
  rects(curLBC, curRUC, labels(3:6, :));
  axis("equal");
  pause;
  close;
  close;

endif;
end 
