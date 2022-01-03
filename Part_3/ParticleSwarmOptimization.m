rng default
global initial_flag

% Particle Swarm Optimization: 15 Iterations
options = optimoptions('particleswarm', 'PlotFcn', 'pswplotbestf');
lowerBounds = [-100,-100];
upperBounds = [100,100];

for i = 1:15
    initial_flag = 0;
    
    % Particle Swarm Optimization for CEC function 9 (Shifted Rastrigin's  Function)
    % D = 2
    % [~, swarm_val, ~, ~] = particleswarm(@(x)benchmark_func(x,9), 2, ...
    %     lowerBounds, upperBounds, options);
    % D = 10
    % [~, swarm_val, ~, ~] = particleswarm(@(x)benchmark_func(x, 9), 10, ...
    %     lowerBounds, upperBounds, options);
    
    % Particle Swarm Optimization for CEC function 6 (Shifted Rosenbrock's Function)
    % D = 2
    % [~, swarm_val, ~, ~] = particleswarm(@(x)benchmark_func(x, 6), 2, ...
    %     lowerBounds, upperBounds, options);
    % D = 10
    [~, swarm_val(i), ~, ~] = particleswarm(@(x)benchmark_func(x, 6), 10, ...
        lowerBounds, upperBounds, options);
    
    swarm_main_val(i) = swarm_val;
end

% Particle Swarm Optimization's measures
swarm_val_max = max(swarm_main_val)
swarm_val_min = min(swarm_main_val)
swarm_val_mean = mean(swarm_main_val)
swarm_val_std = std(swarm_main_val)
