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

- Checked the distribution of the target variable (level of offense) and found that it was imbalanced, with a majority of the arrests being for midemeanors and felonies.
- Visualized the distribution of the target variable using a countplot from the seaborn library.

Based on the data, the following analysis can be made:

The data shows a sharp decline in misdemeanors from 2017 to 2021. There could be several reasons for this trend. One possible explanation is changes in policing strategies. Law enforcement agencies may be focusing on more serious crimes such as felonies, which could explain the decrease in misdemeanor arrests. Additionally, changes in laws and policies may have resulted in fewer misdemeanors being committed or reported, which could also explain the decline. It is also possible that the decline in misdemeanors is due to changes in societal norms and behaviors, as people may be committing fewer minor offenses. I would also like to note the decriminilization of marijuana is likely to have had an impact on why misdemeanors have declined over time.

On the other hand, the data shows that felonies have remained relatively stable over time. This could be because felonies are typically more serious crimes that require more extensive investigation and prosecution, and therefore may not be as affected by changes in policing strategies or changes in societal behaviors. Additionally, the types of crimes that are classified as felonies may not have changed significantly over the years, which could also explain the stable trend.

While there may not be a direct correlation between the decline in misdemeanors and the stable trend in felonies, there are several possible factors that could be contributing to both trends. For example, changes in policing strategies and changes in societal norms and behaviors could be impacting both the number of misdemeanors and the types of felonies being committed. It is also possible that changes in the legal system, such as changes in sentencing guidelines or diversion programs, could be influencing both trends. Further analysis would be necessary to determine the extent of the correlation, if any.

COVID-19 is likely to have played a significant role in the decline of misdemeanors over time. The pandemic led to a number of changes in daily life, including the implementation of lockdowns and social distancing measures, which likely resulted in a decrease in public gatherings and activities. This may have resulted in a decrease in the likelihood of committing misdemeanors, such as disorderly conduct, loitering, or minor drug offenses, which often occur in public spaces. Additionally, law enforcement agencies may have shifted their focus towards enforcing COVID-19 related restrictions, resulting in less time and resources being devoted to minor offenses. Finally, the pandemic also resulted in a significant decrease in foot traffic in many urban areas, leading to less opportunities for misdemeanor crimes to occur. Therefore, it is likely that COVID-19 and the resulting changes in daily life contributed to the decline in misdemeanors seen over time.

![Monthly_Counts_Line_Chart](https://user-images.githubusercontent.com/114521887/227396103-25fd597f-c7b8-4a2b-8a1d-2e0d5878a26c.png)

![Monthly_Counts_Bar_Chart](https://user-images.githubusercontent.com/114521887/227396125-e41fbb1d-c816-4bc3-a9ce-409ea0622de3.png)


## Database 

A PostgreSQL relational database was utilized for data storage due to its ability to easily establish connections between various tables and generate results that can answer questions. Additionally, the unchanging nature of the database enables it to be seamlessly integrated with Pandas for executing ETL processes.

### Tables:
* Felony
* Violation
* Misdemeanor
* Monthly Crimes
* Yearly Crimes
* NYC Historic Crime

<img width="837" alt="Screen Shot 2023-03-23 at 6 16 31 PM" src="https://user-images.githubusercontent.com/107570913/227393178-2ff6fce0-e1d9-49d9-992d-8c36deb5c2b4.png">



## Machine Learning

After cleaning and exploring the data, a Random Forest Classifier algorithm was used to build the model. The following steps were taken for machine learning:

- Split the data into training and testing sets using the train_test_split function from the sklearn library.
- Trained the Random Forest Classifier model on the training set using the fit function.
- Made predictions on the testing set using the predict function.
- Calculated the accuracy of the model using the accuracy_score function from the sklearn library.
- Created a confusion matrix to visualize the performance of the model using the confusion_matrix function and a heatmap from the seaborn library.

### Results:
The results of the analysis show that the RFC model achieved an accuracy score of 0.62, meaning that the model correctly predicted the class for approximately 62% of the observations. However, the confusion matrix revealed that the model had difficulty distinguishing between misdemeanors and felonies, as it misclassified a significant number of observations as either False Positives or False Negatives. From the confusion matrix, we can see that the model correctly predicted 7092 felonies as felonies (True Positives) and 118902 misdemeanors as misdemeanors (True Negatives). However, the model also made some incorrect predictions. Specifically, it classified 71608 felonies as misdemeanors (False Negatives) and 5690 misdemeanors as felonies(False Positives).
![confusion_matrix](https://user-images.githubusercontent.com/114922260/227391327-83dee126-01bc-4627-901e-723fe5d9f49a.png)

### Conclusion:
In conclusion, the analysis showed that an RFC model trained on demographic features of NYC arrestees from 2017-2021 was able to predict whether an arrest resulted in a misdemeanor or a felony with an accuracy score of 0.62. However, the model had difficulty distinguishing between these two classes, indicating that further analysis and experimentation may be necessary to improve its performance and gain a more nuanced understanding of the factors that contribute to arrest outcomes in NYC.






