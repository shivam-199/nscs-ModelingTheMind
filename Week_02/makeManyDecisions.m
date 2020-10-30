function AVERAGE_ACCURACY = makeManyDecisions(D, T, f, nDecisions)
  % accuracy vector
  accuracy = [];

  for i = 1:nDecisions
    accuracy(i) = makeOneDecision(D, T, f);
  end
  AVERAGE_ACCURACY = mean(accuracy);
endfunction
