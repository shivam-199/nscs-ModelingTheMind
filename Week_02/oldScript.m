clear

% Number of dots participants pay attention to
D = 100;

% viewing time in frames
T_vals = [1 6 11 16 21];

% fraction of dots moving in the preferred direction
COH = [3.2 6.4 12.8 25.6 51.2]/100;
f_vals = (COH + 1) / 2

% number of decisions
nDecisions = 100;

for i = 1:length(T_vals)
  for j = 1:length(f_vals)
    AVERAGE_ACCURACY(i, j) = makeManyDecisions(D, T_vals(i), f_vals(j), nDecisions);
  end
end

% code cell
%% plot
l = plot(T_vals/30*1000, AVERAGE_ACCURACY);
xlabel("Viewing time")
ylabel("Accuracy")
set(gca, 'fontsize', 18)
set(l, 'linewidth', 5)