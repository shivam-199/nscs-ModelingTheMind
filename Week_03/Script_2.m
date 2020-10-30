clear

D = 10;
T = 100;
f = 0.55;

% threshold
z = 60;
for i = 1:100
  [choice(i), DT(i)] = simulate_threshold(D, f, z);
end

%%
AVERAGE_ACCURACY = mean(choice);
AVERAGE_DT = mean(DT);

figure(1);
clf
plot(DT);