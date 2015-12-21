function [output] = calcFitness( particles )
    output = particles;
    for i = 1:size(particles, 2)
        output(3, i) = Live_fn(output(1:2,i));
    end
end

