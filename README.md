

# Descriptive Statistical Analysis and Data Visualization in MATLAB





## Project Overview

This project demonstrates a complete introductory workflow for descriptive statistical analysis using MATLAB.

The analysis includes organizing a numerical dataset, calculating descriptive statistical measures, verifying the standard deviation using two methods, visualizing the data, and exporting results for further analysis.


**Tools: MATLAB, Mermaid, GitHub**

**Methods: Descriptive Statistics, Data Visualization, Mathematical Verification**

[View_MATLAB_Source_code](Matlab_Statistics_Boxplot.m)



### 1. Dataset

The project uses a sample dataset containing 10 numerical observations:

    [60, 80, 100, 110, 120, 140, 150, 160, 180, 200]

The values are organized into a MATLAB table with two columns:

- Index — observation number

- Data1 — numerical value

**This is a synthetic dataset created for educational and demonstration purposes.**


[View Dataset](Data/sample_data.csv)




### 2. Statistical Analysis

The following descriptive statistical measures are calculated:

    - Mean and Median

    - Minimum and Maximum

    - First Quartile (Q1), Median (Q2), and Third Quartile (Q3)

    - Interquartile Range (IQR)

    - Sample Variance

    - Sample Standard Deviation
    
[View Statistical_Measures](Result/calculation_stat_measures.csv)



**Main Results**

    Measure,     Value
    Mean,        130
    Median,      130
    Std,         44.2216638714053
    Variance,    1955.55555555556
    Min,         60
    Q1,          100
    Q2,          130
    Q3,          160
    Max,         200
    IQR,         60

[View Statistical_Summary](Result/statistical_summary.csv)



### 3. Standard Deviation Verification

The sample standard deviation is calculated using two methods:

    Method 1: 
    - MATLAB built-in function:
        std(df.Data1)

    
    Method 2: 
    - Mathematical formula:
       StD_MF = sqrt(1/(n-1) * sum((df.Data1 - mean(df.Data1)).^2))
  

**The difference between the two results is calculated to verify numerical consistency.**

[View Standard_Deviation_Verification](Result/std_verification.csv)

The project also produces a calculation table containing the original observations, the mean, deviations from the mean, and squared deviations.




### 4. Data Visualization

Four visualizations are produced:

    - Original Dataset: A line chart showing the ten observations.

    - BoxPlot: A graphical summary of the data distribution, quartiles, median, and potential outliers.

    - Theoretical Gaussian Density: A normal probability density curve using the sample mean and standard deviation.

    - Deviations from Mean: A bar chart showing how each observation differs from the sample mean.

The Gaussian curve is included as a theoretical comparison and does not establish that the ten observations follow a normal distribution.

[View Statistical_Plots](Result/statistical_plots.png)




### 5. Analysis Workflow

The project workflow is documented using a Mermaid flowchart.
The editable Mermaid source is available in Results/Flowchart.mmd

[View Flowchart mmd](Result/Flowchart.mmd)

[View Flowchart_png](Result/Flowchart.png)




### 6. Project Structure

    M_Stat_Analysis/
    │
    ├── Matlab_Statistics_Boxplot.m
    ├── README.md
    │
    ├── Data/
    │   └── sample_data.csv
    │
    └── Result/
        ├── statistical_summary.csv
        ├── calculation_stat_measures.csv
        ├── std_verification.csv
        ├── statistical_plots.png
        ├── Flowchart.png
        └── Flowchart.mmd



### 7. How to Run the Project

        - Open MATLAB.
        
        - Download or clone the repository.
        
        - Set the MATLAB Current Folder to the project directory.
        
        - Open Matlab_Statistics_Boxplot.m.
        
        - Run the script.
        
        - Review the calculated tables in the Command Window and the generated figure.
        
        - Find the exported CSV files and PNG visualization in the Data and Results folders.

The project uses MATLAB's Statistics and Machine Learning Toolbox for prctile and boxplot.




### 8. Project Outcomes

This project demonstrates practical experience in:

    - Organizing numerical observations in MATLAB tables.

    - Applying descriptive statistical functions.

    - Implementing and verifying statistical formulas.

    - Creating and interpreting statistical visualizations.

    - Exporting reproducible analytical results.

    - Documenting an analytical workflow for GitHub.


    

### 9. Limitations and Future Improvements

The dataset is small and synthetic, so the results are intended to demonstrate analytical methods rather than support real-world statistical conclusions.

Possible future improvements include analyzing larger datasets, importing real-world CSV data, and comparing distributions across groups.
