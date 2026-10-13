


%% 1. Introduction
% Descriptive statistical analysis of a sample dataset.
% The project calculates statistical measures,
% verifies standard deviation using two methods,
% and visualizes the results.

%% 2. Organizing the dataset

data = [60; 80; 100; 110; 120; 140; 150; 160; 180; 200];

k = (1:length(data))';

df = table(k,data,'VariableNames',{'Index','Data1'});

format long g

fprintf('\nDataset:\n')
disp(df)

%% 3. Descriptive statistical measures

Mean   = mean(df.Data1);
Median = median(df.Data1);
StD    = std(df.Data1);
Variance = var(df.Data1);

Min = min(df.Data1);
Max = max(df.Data1);

Q1 = prctile(df.Data1,25);
Q2 = prctile(df.Data1,50);
Q3 = prctile(df.Data1,75);

IQR_R = Q3-Q1;

%% 4. Standard deviation: two methods

% 4.1 Built-in MATLAB calculation
builtInStd = std(df.Data1);

% 4.2 Mathematical formula
n = length(df.Data1);

Deviation = df.Data1 - Mean;
SquaredDeviation = Deviation.^2;
SumSquared = sum(SquaredDeviation);

Variance_MF = SumSquared/(n-1);
StD_MF = sqrt(Variance_MF);

% 4.3 Verification
difference = abs(builtInStd-StD_MF);

StdComparison = table(builtInStd,StD_MF,difference,'VariableNames',{'MATLAB_Std','Formula_Std','Difference'});

fprintf('\nStandard deviation verification:\n')
disp(StdComparison)

% 4.4 Calculation table
Calculation = table(df.Index,df.Data1,repmat(Mean,n,1),Deviation,SquaredDeviation,'VariableNames',{'Index','Data','Mean','Deviation','SquaredDeviation'});

fprintf('\nCalculation details:\n')
disp(Calculation)

%% 5. Statistical summary

Measure = ["Mean";"Median";"Std";"Variance";"Min";"Q1";"Q2";"Q3";"Max";"IQR"];

Value = [Mean;Median;StD;Variance;Min;Q1;Q2;Q3;Max;IQR_R];

Summary = table(Measure,Value);

fprintf('\nStatistical summary:\n')
disp(Summary)

%% 6. Gaussian probability density function

x = linspace(Mean-4*StD,Mean+4*StD,500);

y = exp(-0.5*((x-Mean)/StD).^2)/(StD*sqrt(2*pi));

%% 7. Data visualization

fig = figure('Color','w','Position',[100 100 1100 750]);

% Plot 1: Original data
subplot(2,2,1)
plot(df.Index,df.Data1,'-o','LineWidth',1.5)
title('Original Dataset')
xlabel('Index')
ylabel('Value')
grid on

% Plot 2: BoxPlot
subplot(2,2,2)
boxplot(df.Data1)
title('BoxPlot')
ylabel('Value')
grid on

% Plot 3: Gaussian curve
subplot(2,2,3)
plot(x,y,'b','LineWidth',2)
hold on
xline(Mean,'--r','Mean')
title('Theoretical Gaussian Density')
xlabel('Value')
ylabel('Probability Density')
grid on
hold off

% Plot 4: Deviations from mean
subplot(2,2,4)
bar(df.Index,Deviation)
yline(0,'--k')
title('Deviations from Mean')
xlabel('Index')
ylabel('Deviation')
grid on

%% 8. Export Results

%% Project Folder

%% Project Directory

projectFolder = 'C:\Users\User\OneDrive\Desktop\matlab\work_matlab\M_Stat_Analysis';

dataFolder = fullfile(projectFolder,'Data');
resultsFolder = fullfile(projectFolder,'Result');

if ~isfolder(dataFolder)
    mkdir(dataFolder);
end

if ~isfolder(resultsFolder)
    mkdir(resultsFolder);
end


%% Export Statistical Results

writetable(df,fullfile(dataFolder,'sample_data.csv'));

writetable(Summary,fullfile(resultsFolder,'statistical_summary.csv'));

writetable(Calculation,fullfile(resultsFolder,'calculation_stat_measures.csv'));

writetable(StdComparison,fullfile(resultsFolder,'std_verification.csv'));

exportgraphics(fig,fullfile(resultsFolder,'statistical_plots.png'),'Resolution',300);

%% Display Flowchart

%% Open and Zoom Flowchart

flowchartFile = 'C:\Users\User\OneDrive\Desktop\matlab\work_matlab\M_Stat_Analysis\Result\Flowchart.png';


winopen(fullfile(resultsFolder,'Flowchart.png'))

