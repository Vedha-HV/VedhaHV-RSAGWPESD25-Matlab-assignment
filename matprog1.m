% Define constants
g = 9.81;  % gravitational acceleration (m/s^2)
v0 = 100;  % initial velocity (m/s)
theta = 45;  % launch angle (degrees)

% Convert theta to radians
theta_rad = deg2rad(theta);

% Calculate time of flight
t_flight = 2 * v0 * sin(theta_rad) / g;

% Generate time array
t = 0:0.01:t_flight;

% Calculate x and y coordinates
x = v0 * cos(theta_rad) * t;
y = v0 * sin(theta_rad) * t - 0.5 * g * t.^2;

% Calculate range and maximum height
range = max(x);
max_height = max(y);

% Plot trajectory
figure;
plot(x, y);
xlabel('Range (m)');
ylabel('Height (m)');
title('Projectile Trajectory');
grid on;

% Display range and maximum height
fprintf('Range: %.2f m\n', range);
fprintf('Maximum Height: %.2f m\n', max_height);
