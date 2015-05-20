function y = accel(x)
% this function finds the acceleration.
    double m;
    double r;
    double s; 
    m = 0;
    k = size(x(:,1));
    for a = 1:k-1;
    r = (x(a+1,3) - x(a,3));
    m(a) = r;
    end
    m = [0;m.'];
    x(:,5) = m;
    y = x;