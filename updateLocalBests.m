function localBests = updateLocalBests(localBests, particles)
    for i = 1:size(particles, 2)
        if localBests(3, i) > particles(3, i)
            localBests(:, i) = particles(:, i);
        end
    end
end