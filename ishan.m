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
elseif bmi >= 18.5 && bmi < 24.9
    fprintf('Your weight is in the healthy range.\n');
elseif bmi >= 25 && bmi < 29.9
    fprintf('You are overweight.\n');
else
    fprintf('You are obese.\n');
end