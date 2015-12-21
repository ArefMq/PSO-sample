function plotFitness()
    
    
    x = -5:0.1:5;
    y = -5:0.1:5;

    [X Y] = meshgrid(x, y);

    for i=1:size(x,2)
        for j=1:size(y,2)
            z(i,j) = Live_fn([x(i) y(j)]);
        end
    end
    
    surf(X, Y, z,'EdgeColor', 'None', 'facecolor', 'interp');
    view(2);

end