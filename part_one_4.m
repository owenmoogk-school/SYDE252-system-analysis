syms y(t) x(t)

x(t) = cos(10*t) + cos(1000*t);
x_scaled(t) = 2 * (cos(10*t) + cos(1000*t));

% Define the ODE
ode = y(t)*100 + diff(y(t), t) + 500 == x(t)*100;
scaled_ode = y(t)*100 + diff(y(t), t) + 500 == x_scaled(t)*100;

% Define the initial condition
initialCondition = y(0) == -2;

% Solve the ODE with the initial condition
ySol(t) = dsolve(ode, initialCondition);
ySolScaled(t) = dsolve(scaled_ode, initialCondition);

% Display the solution
disp(ySol)
disp(ySolScaled)

syms t
ySol(t) = ySol(t); % Ensure ySol is defined
ySolScaled(t) = ySolScaled(t);

% Define the time vector for plotting
tValues = linspace(0, 1, 5000); % 100 points from 0 to 1

% Evaluate y(t) numerically
yValues = double(subs(ySol(t), t, tValues));
yValuesScaled = double(subs(ySolScaled(t), t, tValues));

% Plot the response
plot(tValues, yValues, 'b', 'LineWidth', 2);
hold on;
plot(tValues, yValuesScaled, 'k', 'LineWidth', 2);
xlabel('Time t');
ylabel('y(t)');
title('Response of y(t)');
grid on;
legend('Original Input', 'Scaled Input');
