# Tracking User Engagement with SQL, Excel, and Python

This project analyzes whether new platform features (courses, exams, and career tracks) have increased student engagement, using real company data and tools like SQL, Excel, and Python.

## Files Description

- `data_scientist_project.sql`  
  The main dataset used for analysis.

- `View.sql`  
  Creates a SQL view that standardizes subscription dates and flags paid subscriptions during Q2 2021 and Q2 2022 for each student.

- `Periods.sql`  
  Filters students active in Q2 2021 and Q2 2022 by their paid subscription status, producing datasets of paying and free-plan users for targeted engagement analysis.

- `Certificates.sql`  
  Extracts student IDs, total minutes watched, and total certificates issued, assigning zeros for missing viewing data, to study engagement and achievement relationships.

- `Outliers.ipynb`  
  Removes outliers above the 99th percentile in each dataset and generates distribution graphs.

- `Hypothesis_Testing.xlsx`  
  Performs hypothesis testing including F-tests and T-tests, and creates bar charts to compare engagement across groups and time periods.

- `Correlation_Coefficients.xlsx`  
  Calculates and visualizes a moderate positive correlation (0.512) between minutes watched and certificates issued, supported by a scatter plot.
