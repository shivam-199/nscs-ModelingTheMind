function accuracy = makeOneDecision(D, T, f)
  % initialize count variables
  N_correct = 0;
  N_wrong = 0;
  % for loop over all dots
  for i = 1:D*T
    % determine direction of one dot
    dot_direction = binornd(1, f);
    % update counts
    N_correct = N_correct + dot_direction;
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
     accuracy = binornd(1, 0.5);
   end

endfunction
