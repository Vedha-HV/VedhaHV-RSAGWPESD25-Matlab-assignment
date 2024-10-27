% Generate a sequence of 100 random numbers between 0 and 1
random_numbers = rand(1, 100);

% Plot the random numbers as a line graph
plot(random_numbers);

% Add title and labels
title('Sequence of Random Numbers');
xlabel('Index');
ylabel('Value');

% Display grid lines
grid on;