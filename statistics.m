function statistics()
[proc, labels] = data();
pie(proc(:,3), labels);
title("czestosc wystepowania proporcji ekranu wsrod graczy");
end;
