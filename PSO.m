clear all
close all
clc

%-- Plot the orginal Fitness Function
subplot(2, 2, 1);
title('Fitness Function');
plotFitness();

%-- CONFIGURATIONs
NUM_OF_PARTICLES = 50;
MAX_ITER = 50;

%-- Value used in velocity calculation
global c1 c2 w
c1 = 0.12; %-- Local-Best Coeff.
c2 = 1.2;  %-- Global-Best Coeff.
w = 0.7;   %-- Previous Velo. Coeff.

%-- Variables Initiation
%-- Particles
%--     [X1 ...
%--     [Y1 ...
%--     [Fitness-Value ...
particles = [10 * (rand(2, NUM_OF_PARTICLES) - .5); ... %-- X and Y randomly positioned (between -5 to +5)
             zeros(1, NUM_OF_PARTICLES)]; %-- Fitness-Value initially is zero
particles = calcFitness(particles);
local_bests = particles;

%-- Global Best = [X, Y, Value]
global_best = calcGlobalBest(local_bests);

%-- Velocity [Vx, Vy]
velocity = calcVelocity(0.3 * randn(2, NUM_OF_PARTICLES), particles, local_bests, global_best);


%-- Main Loop
iter = 0;
while (iter < MAX_ITER)
    particles = calcFitness(particles);
    local_bests = updateLocalBests(local_bests, particles);
    global_best = calcGlobalBest(local_bests);
    velocity = calcVelocity(velocity, particles, local_bests, global_best);
    particles(1:2, :) = particles(1:2, :) + velocity;
    
    showParticles(particles, global_best);
    iter = iter + 1;
end



