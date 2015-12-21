function [output] = calcGlobalBest( particles )
    [value index] = min(particles(3,:));
    output = particles(:, index);
end

