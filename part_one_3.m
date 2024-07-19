% y and x are symbolic functions
syms y(t) x(t)

% define x as the input function
x(t) = cos(10*t) + cos(1000*t);

% Define the ODE
ode = y(t)*100 + diff(y(t), t) == x(t)*100;

% Define the initial condition
initialCondition = y(0) == -2;

% Solve the ODE with the initial condition
ySol(t) = dsolve(ode, initialCondition);

% Display the solution
disp(ySol)

% evaluate the function through a range of t, and plot
syms t
ySol(t) = ySol(t); % Ensure ySol is defined

% Define the time vector for plotting
tValues = linspace(0, 1, 5000); % 100 points from 0 to 1

% Evaluate y(t) numerically
yValues = double(subs(ySol(t), t, tValues));

% Plot the response
plot(tValues, yValues, 'b', 'LineWidth', 2);
xlabel('Time t');
ylabel('y(t)');
title('Response of y(t)');
grid on;
xlim([0, 1]); % Horizontal limits
ylim([-2, 2]); % Vertical limits
