syms t;

e = exp(1);
y_zsr = 100*((0.01*e^(-100*t)-cos(10*t-1.47))/sqrt(100+100^2 ) + (0.001*e^(-100*t)-cos(100*t-1.569))/sqrt(100^2+1000^2 ))

y_zir = -2*e^-(100*t);


y = y_zir + y_zsr;

% Plot the function
fplot(y, [0 1])

% Set the y-axis limits
ylim([-2 2])

% Add labels and title (optional)
xlabel('x')
ylabel('y')
title('Plot of the symbolic function')
grid on




