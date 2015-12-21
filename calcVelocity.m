function [ output ] = calcVelocity( velocity, particles, localBest, globalBest )
    global c1 c2 w

    R1 = rand(2, size(particles, 2));  %-- Random Diversity for Local-Best
    R2 = rand(2, size(particles, 2));  %-- Random Diversity for Global-Best
    
    globalBestMatrix = ones(2, size(particles, 2));
    globalBestMatrix(1, :) = globalBestMatrix(1, :) * globalBest(1);
    globalBestMatrix(2, :) = globalBestMatrix(2, :) * globalBest(2);
    
    output = w *velocity + c1*(R1.*(localBest(1:2, :)-particles(1:2, :))) + c2*(R2.*(globalBestMatrix-particles(1:2, :)));
end

