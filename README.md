# Tracking User Engagement with SQL, Excel, and Python

This project analyzes whether new platform features (courses, exams, and career tracks) have increased student engagement. The analysis uses real company data and a combination of SQL, Excel, and Python.

## Files Description

### SQL Files

- `data_scientist_project.sql`  
  Main dataset containing the raw tables used for the analysis.

- `View.sql`  
  Creates a SQL view (`purchases_info`) that standardizes subscription dates and adds binary flags (`paid_q2_2021`, `paid_q2_2022`) to indicate active subscriptions in Q2 of each year.

- `Periods.sql`  
  Filters students by subscription status (paid or free-plan) in Q2 2021 and Q2 2022, generating datasets for analyzing engagement trends among different user groups.

- `Certificates.sql`  
  Extracts student IDs, total minutes watched, and certificates issued (with 0s for missing values), enabling correlation analysis between engagement and achievement.

### Excel & Python Files

- `Outliers.ipynb`  
  Filters out outliers above the 99th percentile and plots distribution graphs for each group.

- `Hypothesis_Testing.xlsx`  
  Performs F-tests and T-tests to compare engagement between 2021 and 2022 for both paid and free users, including bar chart visualizations.

- `Correlation_Coefficients.xlsx`  
  Calculates the correlation between minutes watched and certificates issued (result: 0.512) and includes a supporting scatter plot.

### CSV Files (Raw SQL Query Outputs)

- `minutes_and_certificates.csv`  
  Total minutes watched and certificates issued per student.

- `minutes_watched_2021_paid_0.csv`  
- `minutes_watched_2021_paid_1.csv`  
- `minutes_watched_2022_paid_0.csv`  
- `minutes_watched_2022_paid_1.csv`  
  Engagement data segmented by subscription type and year.

### CSV Files (Cleaned — Outliers Removed)

- `minutes_watched_2021_paid_0_no_outliers.csv`  
- `minutes_watched_2021_paid_1_no_outliers.csv`  
- `minutes_watched_2022_paid_0_no_outliers.csv`  
- `minutes_watched_2022_paid_1_no_outliers.csv`  
  Cleaned versions of the datasets above, excluding extreme values above the 99th percentile.

### Visualizations

- `scatterplot.png`  
  Scatter plot showing the relationship between certificates issued (X-axis) and minutes watched (Y-axis).

- `distribution.png`  
  Distributions of minutes watched for paid and unpaid users in Q2 of 2021 and 2022.

- `PaidPlanStudents.png`  
- `FreePlanStudents.png`  
  Bar charts showing the average minutes watched by paid-plan and free-plan users in Q2 of 2021 and 2022.

### Documentation

- `Tracking_User_Engagement.pdf`  
  Full project summary, detailing each step taken, the methods used, and the purpose of each file.
