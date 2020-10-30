clear

% Number of dots participants pay attention to
D = 100;

% viewing time in frames
T = 1;

% fraction of dots moving in the preferred direction
f = 0.6;

% count for correct direction
N_correct = 0;

% count for wrong direction
N_wrong = 0;

% determine the direction of one dot
for i = 1:D*T
  % determine direction of one dot
  dot_direction = binornd(1, f);
  
  % update count of dots moving in correct direction
  N_correct = N_correct + dot_direction;
  
  % update count of dots moving in wrong direction
  N_wrong = N_wrong + (1 - dot_direction);
 end
 
 if N_correct > N_wrong
   % correct answer
   accuracy = 1;
 end
 
 if N_correct < N_wrong
   % wrong answer
   accuracy = 0;
 end
 
 if N_correct == N_wrong
   % guess
   accuracy = binornd(1, 0.5)'
 endif
