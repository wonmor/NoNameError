# Team: NoNameError
- *“Vincit Omnia Veritas” — Truth Always Prevails*
- Team Members: **Ishan, Isil, Chester, and John**
- Written on **December 11, 2023**

Our Group Project for MAE10 course offered under the faculty of engineering at UC Irvine.

---

### 3.1 Abstract
This report is to underline the processes used to track BMI, make a health tracker app, and make useful infographics using worldwide data to raise awareness for the growing obesity rate in America. As engineers, it is our duty to spread awareness and use our skills for good, which is why we chose a distinctive topic pertaining to our country that is affecting lives everyday. Using MATLAB as a tool for tracking and displaying data, we were able to learn and apply our learning in this project outlined by the report. 

### 3.3 Background of the project
Solving and being aware of the risks associated with your height and weight is important because a healthy body is crucial for overall well-being. Since obesity and underweight can lead to various health risks, offering a solution that calculates  BMI, BMR, and visualizes calorie intake recommendations based on the user’s input empowers individuals to manage their health and take actions to improve their body health. 

### 3.4 Brief Overview of the Solution Using MATLAB
We created several prompts in MATLAB that prompts the user to enter their height, weight, and age and the program we created would display the user’s BMI and display several figures showing caloric intake recommendations and the average BMI in their state compared to other states in the country. Including a BMI calculator, we used a graphic (bar chart) for the user to see how many calories they need to maintain, gain, or lose weight depending on their preference. 

### 3.5 Data Collection/Acquisition 
We used a CSV spreadsheet file with data from the CDC of the average BMI of each state in the United States. Another sample set of data that we used was tracking the users caloric intake, calories burned for each day. All the data was organized into a spreadsheet in a txt file.  Finally we used another set of BMI’s from surveys and plotted the data as a Linear Regression Model, even plotting the best line of fit to see the average BMI over a set predictor variable. 

### 3.6 Data Analysis
We wanted to analyze the data and put it into an easy to understand bar chart. For the average BMI countrywide, we found that using a heatmap shows a clear correlation to BMI per state. We arranged the color red to be places with high BMI and blue to be places with low BMI. This part of the project is to raise awareness to higher BMI’s countrywide and see how state metrics and lifestyle can play a role in your BMI. 

We used user inputted data such as height, weight, and gender to calculate BMI. From the BMI calculated, we then asked the user their activity level from sedentary to active. We thought that increasing, decreasing, or maintaining fitness level is up to the users will, so we used another formula found on the CDC to track what is needed to maintain caloric maintenance, deficit, and gain. We then included healthy food options for each category, ranging from pasta with shredded turkey to vegetarian options. This was useful in pertaining to the users personal goals and benefit, since the health tracker app is meant to help the user with their dietary and caloric needs. 

We then wanted a visual for the data set on the calories consumed and burned per day. We generated random data for the calories burned/consumed and converted the data to txt matrix. We then imported the txt file and made a bar graph showing the data. 

The last set of data that was used was the survey of sample BMI’s. We wanted to use a more mathematical graph so we used a linear regression model with a line of best fit. This is fitting since more data would ideally make the linear regression model and the line of best fit more accurate. We also imported the BMI’s in a segmented histogram with ranges of BMI for a more clear understanding of the users BMI in the range of people in the same area as the user. 

### 3.7 Solution and Demonstration
The figure below is a bar graph displaying the caloric intake recommendations based on weight management goals (gaining weight, losing weight, and maintaining weight). The second figure is another bar graph that shows the daily caloric intake based on the amount of calories burned for a period of 30 days with the data being read from a data file. Our third figure takes data from a data table displaying the prevalence of obesity by state and plots the data in a contour plot with color bars. The fourth figure takes data from the CSV spreadsheet and groups the average BMIs from each state in a histogram. Finally, our fifth figure is a linear regression plot created using code that plots the line of best fit.

<img width="838" alt="Screenshot 2023-12-10 at 4 01 42 PM" src="https://github.com/wonmor/NoNameError/assets/35755386/8f7db6be-3036-445d-8174-f86d4531a314">

<img width="640" alt="Screenshot 2023-12-10 at 4 09 45 PM" src="https://github.com/wonmor/NoNameError/assets/35755386/e843c22c-ee37-4d0a-8358-dab82c1e1cf4">

<img width="1087" alt="Screenshot 2023-12-10 at 4 04 42 PM" src="https://github.com/wonmor/NoNameError/assets/35755386/d453b263-432b-43b8-a19d-428d49892a12">

<img width="1368" alt="Screenshot 2023-12-10 at 4 50 56 PM" src="https://github.com/wonmor/NoNameError/assets/35755386/b03df425-3d5b-4b50-8b61-b3991d38b9e3">

---

## 3.8 Works Cited

- **Centers for Disease Control and Prevention (CDC)**: https://www.cdc.gov/obesity/data/prevalence-maps.html
- Published in 2022

---
```
MIT License
Copyright © 2023 Team NoNameError
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```





