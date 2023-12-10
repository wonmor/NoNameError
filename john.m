% Input height in feet and inches
feet = input('Enter your height in feet: ');
inches = input('Enter your height in inches: ');

% Input weight in pounds
weight = input('Enter your weight in pounds: ');

gender = input('Enter your gender (M/F): ', 's'); % 's' indicates input as a string

% Input age in years
age = input('Enter your age in years: '); % Add this line to collect the user's age

% Convert height to inches
height = (feet * 12) + inches;

% Calculate BMI
bmi = (weight / (height^2)) * 703;

% Display the BMI
fprintf('Your BMI is: %.2f\n', bmi);

% Calculate BMR (Basal Metabolic Rate)
if gender == 'm' || gender == 'M'
    bmr = 66 + (6.23 * weight) + (12.7 * height) - (6.8 * age);
else
    bmr = 655 + (4.35 * weight) + (4.7 * height) - (4.7 * age);
end

fprintf('Your BMR is: %.2f\n', bmr);

% Define activity levels and their corresponding multipliers
activityLevels = {
    'Sedentary (little or no exercise)', 1.2;
    'Lightly active (light exercise/sports 1-3 days/week)', 1.375;
    'Moderately active (moderate exercise/sports 3-5 days/week)', 1.55;
    'Very active (hard exercise/sports 6-7 days a week)', 1.725;
    'Super active (very hard exercise & physical job)', 1.9;
};

% Prompt the user to select their activity level
fprintf('Select your activity level:\n');
for i = 1:length(activityLevels)
    fprintf('%d. %s\n', i, activityLevels{i, 1});
end

activityLevelIndex = input('Enter the number corresponding to your activity level: ');

% Calculate TDEE (Total Daily Energy Expenditure)
tdee = bmr * activityLevels{activityLevelIndex, 2};

% Define calorie intake goals (for maintaining, losing, and gaining weight)
calorieIntakeMaintain = tdee;
calorieIntakeLose = tdee - 500; % Aim for a calorie deficit of 500 calories/day for weight loss
calorieIntakeGain = tdee + 500; % Aim for a calorie surplus of 500 calories/day for weight gain

% Display calorie intake recommendations
fprintf('Calorie Intake Recommendations:\n');
fprintf('To maintain weight: %.2f calories/day\n', calorieIntakeMaintain);
fprintf('To lose weight: %.2f calories/day\n', calorieIntakeLose);
fprintf('To gain weight: %.2f calories/day\n', calorieIntakeGain);

% Create a bar chart to visualize calorie intake recommendations
x = categorical({'Maintain Weight', 'Lose Weight', 'Gain Weight'});
y = [calorieIntakeMaintain, calorieIntakeLose, calorieIntakeGain];
bar(x, y, 'b');
title('Calorie Intake Recommendations');
xlabel('Weight Management Goals');
ylabel('Calories per Day');
grid on;

% Define a large dataset of food recommendations
largeFoodRecommendations = {
    'Mushroom risotto',
    'Steak with mashed potatoes',
    'Sushi rolls (various types)',
    'Vegetable stir-fry with tofu',
    'Spaghetti carbonara',
    'Eggplant Parmesan',
    'Quinoa and black bean bowl',
    'Greek salad with feta cheese',
    'Spinach and mushroom omelette',
    'BBQ ribs with coleslaw',
    'Shrimp scampi with garlic bread',
    'Vegan chili with avocado',
    'Chicken tikka masala',
    'Beef fajitas with guacamole',
    'Caprese salad with fresh basil',
    'Pasta primavera with alfredo sauce',
    'Tofu pad thai',
    % Add more food recommendations here
};

% Define the number of random selections you want
numSelections = 3; % Change this as needed

% Randomly select food recommendations
randomIndices = randperm(length(largeFoodRecommendations), numSelections);
selectedRecommendations = largeFoodRecommendations(randomIndices);

% Display the randomly selected recommendations
fprintf('\nRandomly Selected Food Recommendations:\n');
for i = 1:numSelections
    fprintf('%d. %s\n', i, selectedRecommendations{i});
end
