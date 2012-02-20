function [x, y] = maxsize(LBC, RUC)
  sizes = RUC - LBC;
  maxes = max(sizes);
  x = maxes(1);
  y = maxes(2);
end;
