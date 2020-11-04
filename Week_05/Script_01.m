clear

T = 100;

% overshadowing
[r, A, B] = overshadowing(T);

% blocking
% [r, A, B] = blocking(T);

% inhibition
% [r, A, B] = inhibition(T);

% learning rate
alpha = 0.1;

% [VA, VB] = naiveModel(alpha, r, A, B);

[VA, VB] = rescolarWagner(alpha, r, A, B);

figure(1); clf;
plot(r, ".", "markersize", 50)
hold on;
plot(VA, "linewidth", 10)
plot(VB, "linewidth", 3)
legend({"rewards", "VA", "VB"}, "location", "southeast")
xlabel("trial number")
ylabel("reward/value")
set(gca, "fontsize", 18)
