function [x, y] = minsize(LBC, RUC)
  sizes = RUC - LBC;
  mins = min(sizes);
  x = mins(1);
  y = mins(2);
end;
