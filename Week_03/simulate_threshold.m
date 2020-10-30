function [choice, DT, Delta] = simulate_threshold(D, f, z)

  % initialize count variables
  N_correct = 0;
  N_wrong = 0;
  
  % while loop over all dots
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
  % choice depends on sign of Delta
  choice = Delta(i) > 0;
  
  % decision time depends on how many time steps
  DT = i;
 end
  