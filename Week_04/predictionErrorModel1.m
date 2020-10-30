function V = predictionErrorModel1(r)
  V(1) = r(1); 
  for t = 2:length(r)
    V(t) = V(t-1) + 1 / t * (r(t) - V(t-1));
  end
endfunction
