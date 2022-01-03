rng default
global initial_flag

% Genetic Algotithm Optimization: 15 iterations
options = optimoptions('ga', 'PlotFcn', {'gaplotbestf', 'gaplotdistance'});
for i = 1:15
    initial_flag = 0;
    
    fprintf(['Iteration: ', num2str(i), '\n'])
    % Genetic Algorithm for CEC function 9 (Shifted Rastrigin's  Function), D=2
    % [~, ga_val, ~, ~] = ga(@(x)benchmark_func(x, 9),2,options)
    % Genetic Algorithm for CEC function 9 (Shifted Rastrigin's  Function), D=10
    % [~, ga_val, ~, ~] = ga(@(x)benchmark_func(x, 9), 10,options)
    
    % Genetic Algorithm for CEC function 6 (Shifted Rosenbrock's Function), D=2
    % [~, ga_val, ~, ~] = ga(@(x)benchmark_func(x, 6), 2, options)
    % Genetic Algorithm for CEC function 6 (Shifted Rosenbrock's Function), D=10
    [~, ga_val, ~, ~] = ga(@(x)benchmark_func(x, 6), 10, options);
    
    ga_main_val(i) = ga_val;
end

% Genetic Algorithm's measures
ga_val_max = max(ga_main_val);
ga_val_min = min(ga_main_val);
ga_val_mean = mean(ga_main_val);
ga_val_std = std(ga_main_val);