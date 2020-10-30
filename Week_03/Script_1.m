clear

D = 10;
T = 100;
f = 0.55;

% threshold
z = 60;

% initialize count variables
N_correct = 0;
N_wrong = 0;

% for loop over all dots
Delta(1) = N_correct - N_wrong;
i = 1;
while abs(Delta(i)) < z
  i = i + 1;
  for j = 1:D    
    % determine direction of one dot
    dot_direction = binornd(1, f);
    % update counts
    N_correct = N_correct + dot_direction;
    N_wrong = N_wrong + (1 - dot_direction);
  end
  Delta(i) = N_correct - N_wrong;
end

figure(1)
clf;
l = plot(Delta);
set(l, "linewidth", 5)
hold on;
plot([0 i], [z z], "k--")
plot([0 i], -[z z], "k--")
ylim([-70 70])
xlabel("Time step [frames]")
ylabel("Delta = N_correct - N_wrong", "interpreter", "none")
set(gca, 'fontsize', 18)
 