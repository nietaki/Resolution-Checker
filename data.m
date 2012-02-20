function [resolutions, labels] = data()
resolutions = [ 5 4 10.39 
            4 3 1.16+4.66+0.97+0.81+0.95
            3 2 1
            16 10 4.48+8.74+17.37+7.75
            5 3 0.62
            16 9 0.68+1.34+6.24+4.52+25.15+0.93+1];
labels  = { "5:4" 
            "4:3" 
            "3:2" 
            "16:10" 
            "5:3" 
            "16:9"};
%labels = num2str(resolutions(:, 1:2));

end;
