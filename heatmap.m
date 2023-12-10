% Read the CSV file
data = readtable('2022-overall-prevalence.csv');

% Extract the state names and prevalence values
states = data.State;
prevalence = data.Prevalence;

% Convert state names to state abbreviations if necessary
% You might need a mapping from state names to abbreviations

% Initialize a USA map
figure;
usamap('conus'); % 'conus' for continental US

% Loop through the states and plot the data
for i = 1:length(states)
    stateName = states{i};
    value = prevalence(i);

    % Find the state's location and plot
    % Use a colormap to represent different values
    % You might need to use a function like 'geoshow' or 'patch'
end

% Adjust color scale and add colorbar
colormap(jet); % You can choose a different colormap
colorbar;

% Add labels and title if necessary
title('Prevalence Heatmap');
