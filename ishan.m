% Read the data from the file
data = readtable('calorie_data.txt', 'Delimiter', '\t');

% Create a bar graph
figure;
bar(data.Day, [data.Calorie_Intake, data.Calorie_Burned], 'grouped');
xlabel('Day');
ylabel('Calories');
legend('Calorie Intake', 'Calorie Burned');
title('Daily Calorie Intake vs Calorie Burned');

% Calculate the average calorie intake and burned
avg_intake = mean(data.Calorie_Intake);
avg_burned = mean(data.Calorie_Burned);

% Determine if it's a caloric deficit, maintenance, or intake
if avg_intake > avg_burned
    result = 'caloric intake surplus';
elseif avg_intake < avg_burned
    result = 'caloric deficit';
else
    result = 'maintenance';
end

% Display the results
fprintf('Average Calorie Intake: %.2f\n', avg_intake);
fprintf('Average Calorie Burned: %.2f\n', avg_burned);
fprintf('Result: You are in a %s.\n', result);


