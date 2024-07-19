    % Define the time vector for solving
tValues = linspace(0, 1, 10000); % 100 points from 0 to 1

% Define the initial condition
initialCondition = -2;

% Define the ODE system for the original equation
odesys = @(t, y) (cos(10*t) + cos(1000*t))*100 - 100*t*y;

% Solve the ODE numerically using ode45
[tSol, ySol] = ode45(odesys, tValues, initialCondition);

% Define the ODE system for the scaled equation
scaled_odesys = @(t, y) (cos(10*(t+1)) + cos(1000*(t+1)))*100 - 100*y;

% Solve the scaled ODE numerically using ode45
[tSolScaled, ySolScaled] = ode45(scaled_odesys, tValues, initialCondition);

% Plot the response
plot(tSol, ySol, 'b', 'LineWidth', 2);
hold on;
plot(tSolScaled, ySolScaled, 'k', 'LineWidth', 2);
xlabel('Time t');
ylabel('y(t)');
title('Response of y(t)');
legend('Original Input', 'Shifted Input');
grid on;
xlim([0, 1]); % Horizontal limits
ylim([-2, 2]); % Vertical limits
