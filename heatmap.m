% Read data from CSV file
data = readtable('2022-overall-prevalence.csv');

% Extract Prevalence data and convert it to a matrix
prevalence = data.Prevalence; % Assuming the second column contains prevalence values
% For a contour plot, we need a 2D matrix. Assuming a simple case where we can just replicate the vector.
prevalence_matrix = repmat(prevalence', numel(prevalence), 1);

% Generate the x and y coordinates for the plot
[x, y] = meshgrid(1:numel(prevalence), 1:numel(prevalence));

% Create a contourf plot
figure; % Creates a new figure window
contourf(x, y, prevalence_matrix, 20, 'LineStyle', 'none'); % Adjust the number 20 for more or fewer contours

% Add a color bar to the right of the plot
colorbar;

% Customize the axes (optional, depending on your data's needs)
ax = gca; % Get current axes
ax.XTick = 1:numel(prevalence); % Set X-ticks to match the number of data points
ax.XTickLabel = data.State; % Set X-tick labels to state names
ax.XTickLabelRotation = 90; % Rotate labels for readability
ax.YTick = []; % Remove Y-ticks as the y-axis might not be meaningful in this context

% Add title and labels
title('State-wise Prevalence');

% Adjust colormap
colormap(jet); % Use jet colormap for bright colors, or choose another if preferred
caxis([min(prevalence) max(prevalence)]); % Set the limits of the colors to match your data range

% Remove axis lines and ticks for a cleaner look
box off;
ax.TickLength = [0 0];
