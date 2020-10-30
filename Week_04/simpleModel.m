function V = simpleModel(r)
  % model the simple averaging model
  for t = 1:length(r)
    V(t) = mean(r(1:t));
  end
endfunction
