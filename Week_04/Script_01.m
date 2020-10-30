clear

% model the slot machine
p_win = 0.4;

% number of plays
T = 10;

% simulate one play of the machine
r = playSlotMachine(p_win, T);

% V = simpleModel(r);


figure(1); clf;
plot(r, ".", "markersize", 50);
hold on;
plot(V, "linewidth", 5);