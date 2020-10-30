clear

% model the slot machine
p_win = 0.4;

% number of plays
T = 100;

% simulate one play of the machine
r = playSlotMachine(p_win, T);

% simple model
V_simple = simpleModel(r);

% predictionErrorModel1
V_predictionError = predictionErrorModel1(r);

% fixed learning rate model
alpha = 0.1;
V_fixedLearningRate = fixedLearningRate(r, alpha);
 
figure(1); clf;
plot(r, ".", "markersize", 50);
hold on;
plot(V_simple, "linewidth", 10);
hold on;
plot(V_predictionError, "linewidth", 5);
hold on;
plot(V_fixedLearningRate, "linewidth", 5);
legend({"reward", "V_simple", "V_predictionError", "V_fixedLearningRate"}, "interpreter", "none")