# Analysis of NYC Arrest Data

## Introduction

This project aims to explore and analyze the NYPD Arrests dataset to identify trends and insights about arrests in New York City. The dataset contains information about arrests made in NYC from 2017 to 2022, including the date of the arrest, the crime committed, demographic information about the perpetrator, and information about the arrest location.

To analyze the data, we will perform a series of data cleaning and preprocessing steps to prepare the data for analysis. We will then perform exploratory data analysis to identify trends and patterns in the data and formulate questions that we would like to answer. Finally, we will build a Random Forest Classifier model to predict the level of offense of an arrest (felony or misdemeanor), and store the cleaned data in a Postgres database.

## Cleaning Data

The first step in this project was to clean and preprocess the dataset. This involved dropping unnecessary columns, handling missing data, and encoding categorical variables. The following steps were taken to clean the data:

- Dropped unnecessary columns such as arrest date, arrest key, jurisdiction code, latitude, longitude, and description columns.
- Handled missing data by dropping rows with missing values.
- Encoded categorical variables such as borough of arrest, age group, race, sex, and level of offense using LabelEncoder from the sklearn library.

## Exploratory Data Analysis (EDA)

After cleaning the data, exploratory data analysis was performed to gain insights into the dataset and visualize the distribution of the target variable. The following analyses were performed:

- Checked the distribution of the target variable (level of offense) and found that it was imbalanced, with a majority of the arrests being for violations or infractions.
- Visualized the distribution of the target variable using a countplot from the seaborn library.

## Machine Learning

After cleaning and exploring the data, a Random Forest Classifier algorithm was used to build the model. The following steps were taken for machine learning:

- Split the data into training and testing sets using the train_test_split function from the sklearn library.
- Trained the Random Forest Classifier model on the training set using the fit function.
- Made predictions on the testing set using the predict function.
- Calculated the accuracy of the model using the accuracy_score function from the sklearn library.
- Created a confusion matrix to visualize the performance of the model using the confusion_matrix function and a heatmap from the seaborn library.
