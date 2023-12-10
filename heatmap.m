% Read data from CSV file
data = readtable('2022-overall-prevalence.csv');

% Extract Prevalence data
prevalence = data.Prevalence; % Assuming the second column contains prevalence values

% Create an image to represent the data
figure; % Creates a new figure window
imagesc(prevalence'); % Creates a color-coded image with transposed data for correct orientation
colorbar; % Adds a color bar to indicate the scaling

% Customize the axes
ax = gca; % Get current axes
ax.XTick = 1:size(data, 1); % Set X-ticks to match the number of states
ax.XTickLabel = data.State; % Set X-tick labels to state names
ax.YTick = []; % Remove Y-ticks as there's only one column
ax.XTickLabelRotation = 90; % Rotate labels for readability

% Add title
title('State-wise Prevalence');

% Invert the colormap so higher values are brighter
colormap(flipud(hot)); 