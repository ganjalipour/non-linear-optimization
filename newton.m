function [x,numIts]=newton(x,maxIts)
        EPSILON = 5.0e-5;
        increment=1;  % this is an arbitrary value
        
        for numIts=1:maxIts
        oldIncrement=x;
        if df(x)==0 
            return;
        end
        x = x - df(x)/d2f(x);
        r1=abs(x)/abs(oldIncrement);

        if abs(x - oldIncrement)<EPSILON
        return;
        end
        end
end