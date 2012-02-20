function statistics()
[proc, labels] = data();
pie(proc(:,3), labels);
end;
