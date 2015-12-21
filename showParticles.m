function showParticles( particles, globalBest )
    
    %clf
    subplot(2, 2, 2);
    title('Particles');
    plot(particles(1,:), particles(2, :), 'h');
    hold on
    plot(globalBest(1), globalBest(2), 'ro');
    hold off
    axis([-5 5 -5 5]);
    grid on;
    
    global globBuffer
    globBuffer = [globBuffer; globalBest(3)];
    
    subplot(2, 2, 3:4);
    plot(globBuffer);
    grid on
    
    pause(.2); %-- This is for slowing down the visualization
end

