function V = fixedLearningRate(r, alpha)
  V(1) = r(1); 
  for t = 2:length(r)
    V(t) = V(t-1) + alpha * (r(t) - V(t-1));
  end
endfunction