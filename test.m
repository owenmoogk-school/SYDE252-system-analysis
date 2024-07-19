function y = y_ZSR(t)    
    % Denominators
    D1 = sqrt(100^2 + 100);
    D2 = sqrt(100^2 + 1000^2);
    
    % Calculate the terms
    term1 = (-.99 * exp(-100 * t) - cos(10 * t - 3.241)) / D1;
    term2 = (-.1 * exp(-100 * t) - cos(1000 * t - 4.612)) / D2;
    
    % Calculate the final result
    y = 100 * (term1 + term2) - 2*exp(-100*t);
end


t = 0:0.001:1; % Time vector from 0 to 10 with step 0.01
y = y_ZSR(t); % Calculate y_ZSR for each value of t
plot(t, y); % Plot the result
xlim([0, 1]); % Horizontal limits
ylim([-2, 2]); % Vertical limits


xlabel('Time t');
ylabel('y(t)');
title('Response');
