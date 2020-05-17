% ganji - golden section implementation
clc;
clear;
close all;

func = @sin;
xL= 0.1;
xU= pi;

fL = func(xL);
fU = func(xU);

goldenRate = 0.5*(sqrt(5) - 1);
d = goldenRate*(xU - xL);
x1 = xU - d;
x2 = xL + d;

f1 = func(x1)
f2 = func(x2)

err = inf;

while err> 1e-4
    if f1 > f2 
        xU = x2;
        fu = f2;
        x2 = x1;
        f2 = f1; 
        d = goldenRate*(xU - xL);
        x1 = xU - d;
        f1 = func(x1);
    elseif f1 < f2
        xL = x1;
        fL = f1;
        x1 = x2;
        f1 = f2;
        d = goldenRate*(xU - xL);
        x2 = xL + d;
        f2 = func(x2);
    else % equal
        xL = (x1+x2) / 2;
        xU = xL;
    end
    
    err = abs(xL - xU)
    
end



