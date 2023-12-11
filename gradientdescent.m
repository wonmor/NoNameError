% Create a synthetic dataset
n = 100; % Number of data points
x_var = linspace(-5, 5, n)'; % Predictor variable
true_slope = 2; % True slope
true_intercept = -3; % True intercept
noise = randn(n, 1); % Gaussian noise
y_var = true_slope * x_var + true_intercept + noise; % Response variable

% Plot the initial data
figure;
plot(x_var, y_var, '.');
xlabel('Predictor Variable');
ylabel('Response Variable');
title('Synthetic Dataset');

% Initialize variables
slope = 0;
intercept = 0;

% Calculate initial prediction and error
yhat = slope * x_var + intercept;
error = sum((y_var - yhat).^2);

% Define the gradient functions using symbolic computation
syms x y m b;
errorFunc = (y - (m*x + b))^2;
gradSlope = matlabFunction(-2 * x * (-b - m*x + y), 'Vars', [x y m b]);
gradIntercept = matlabFunction(2*b + 2*m*x - 2*y, 'Vars', [x y m b]);

% Gradient Descent parameters
learning_rate = 0.001;
n_iter = 1000;

% Arrays to store the results
slopes = zeros(1, n_iter);
intercepts = zeros(1, n_iter);
errors = zeros(1, n_iter);
slopes(1) = slope;
intercepts(1) = intercept;
errors(1) = error;

% Gradient functions revised to ensure scalar output
gradSlope = matlabFunction(-2 * sum(x * (-b - m*x + y)), 'Vars', [x y m b]);
gradIntercept = matlabFunction(2 * sum(b + m*x - y), 'Vars', [x y m b]);

% Gradient Descent Loop
for i = 2:n_iter
    prevSlope = slopes(i-1);
    prevIntercept = intercepts(i-1);
    
    % Calculate gradients for each data point
    gradSlopeVals = -2 * x_var .* (-prevIntercept - prevSlope * x_var + y_var);
    gradInterceptVals = -2 * (-prevIntercept - prevSlope * x_var + y_var);

    % Summing up the gradients to get a single update value
    gradSlopeSum = sum(gradSlopeVals);
    gradInterceptSum = sum(gradInterceptVals);
    
    % Update slope and intercept
    newSlope = prevSlope - learning_rate * gradSlopeSum;
    newIntercept = prevIntercept - learning_rate * gradInterceptSum;
    
    % Predict and calculate new error
    yhat = x_var .* newSlope + newIntercept; 
    error = sum((y_var - yhat).^2);

    % Store the results
    slopes(i) = newSlope;
    intercepts(i) = newIntercept;
    errors(i) = error;
end

% Plot the error over iterations
figure('Position', [100, 100, 1024, 768]) % This sets the figure window size to 1024x768 pixels
subplot(1,2,1);
plot(errors);
xlabel('Iteration');
ylabel('Sum of Squared Errors (SSE)');
title('Error over Iterations');

% Plot the regression lines over iterations
subplot(1,2,2);
plot(x_var, y_var, '.');
hold on;
plot(x_var, x_var * slopes(1) + intercepts(1), 'r', 'DisplayName', 'Iteration 0');
plot(x_var, x_var * slopes(10) + intercepts(10), 'g', 'DisplayName', 'Iteration 10');
plot(x_var, x_var * slopes(1000) + intercepts(1000), 'b', 'DisplayName', 'Iteration 1000');
hold off;
xlabel('Predictor Variable');
ylabel('Response Variable');
legend show;
title('Regression Line Progression');

% Display final slope, intercept, and error
disp(['Final Slope: ', num2str(slopes(end))]);
disp(['Final Intercept: ', num2str(intercepts(end))]);
disp(['Final Error: ', num2str(errors(end))]);
