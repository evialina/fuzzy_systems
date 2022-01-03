rng('default')

% Load predefined Fuzzy Logic Controller
load('Home_Air_Filtration_System_FLC.mat');
flc = Home_Air_Filtration_System_FLC;

% Generate training data
trainingData = readtable('trainingData.xlsx');
trainingDataX = trainingData{1:end, 1:6};
trainingDataY = trainingData{1:end, 7:10};

% Set options
options = tunefisOptions('Method','ga');
options.MethodOptions.MaxGenerations = 100;

[inSettings, outSettings,ruleSettings] = getTunableSettings(flc);
inSettings = setTunable(inSettings,false);

[flcout, optimout] = tunefis(flc, [inSettings; outSettings; ruleSettings], ...
    trainingDataX, trainingDataY, options);