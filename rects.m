function rects(BLCs, URCs, labels, colors)
assert(size(BLCs, 1) == size(URCs,1));
assert(size(BLCs, 2) == size(URCs,2));

if(!exist("colors"))
  colors = [1 0 0
            0 1 0
            0 0 1
            1 1 0
            0 1 1
            1 0 1
            0 0 0];
endif;

%if(!exist(labels))
%  labels ={ "1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9" }
%  
%endif;



count = size(BLCs, 1);
figure("position",  [100, 100, 1400, 800]);
hold on;
for i = 1:count
  BLC = BLCs(i,:);
  URC = URCs(i,:);
  
  X = [BLC(1,1)];
  Y = [BLC(1,2)];
  
  X = [X ; BLC(1,1)];
  Y = [Y ; URC(1,2)];

  X = [X ; URC(1,1)];
  Y = [Y ; URC(1,2)];

  X = [X ; URC(1,1)];
  Y = [Y ; BLC(1,2)];


  X = [X ; BLC(1,1)];
  Y = [Y ; BLC(1,2)];

  %plot(X, Y, labels(i), colors(i))
  plot(X, Y, "color", colors(i, :), "linewidth", 1.5);
  if(exist("labels"))
    legend(labels, "location", "north outside");
  endif;
endfor;
axis("equal");
grid("on");
hold off;
end;
