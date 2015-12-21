function output=Live_fn(x)
    %-- Edit this function in order to change Fitness-Function
    output = f1(x);
end

%-- Simple circle
function output=f1(x)
    output = x(1)^2 + x(2)^2;
end

%-- Simple circle with disposition
function output=f2(x)
    output = (2*x(1)-3)^2 + (2*x(2)-3)^2;
end

%-- Some more complex function
function output=f3(x)
    p=0;q=0;
    
    for k=1:5
        p=p+k*cos((k+1)*x(1)+k);
        q=q+k*cos((k+1)*x(2)+k);
    end

    output=p*q+(x(1)+1.42513)^2+(x(2)+.80032)^2;
end
