% Input height in feet and inches
feet = input('Enter your height in feet: ');
inches = input('Enter your height in inches: ');

% Input weight in pounds
weight = input('Enter your weight in pounds: ');

% Convert height to inches
height = (feet * 12) + inches;

% Calculate BMI
bmi = (weight / (height^2)) * 703;

% Display the BMI
fprintf('Your BMI is: %.2f\n', bmi);

% Interpret the BMI
if bmi < 18.5
    fprintf('You are underweight.\n');
    dietRecommendation = 'You should consider increasing your calorie intake with a balanced diet.';
elseif bmi >= 18.5 && bmi < 24.9
    fprintf('Your weight is in the healthy range.\n');
    dietRecommendation = 'Continue with your current diet and exercise routine to maintain a healthy weight.';
elseif bmi >= 25 && bmi < 29.9
    fprintf('You are overweight.\n');
    dietRecommendation = 'Consider reducing your calorie intake and increasing physical activity.';
else
    fprintf('You are obese.\n');
    dietRecommendation = 'It is essential to consult a healthcare professional for a personalized weight management plan.';
end

% Display diet recommendation
fprintf('Diet Recommendation: %s\n', dietRecommendation);

% Create a chart to visualize BMI
x = categorical({'Underweight', 'Healthy Weight', 'Overweight', 'Obese'});
y = [bmi, 24.9, 29.9, 50]; % Set upper bounds for each category
bar(x, y, 'b');
title('BMI Chart');
xlabel('BMI Categories');
ylabel('BMI Value');
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
