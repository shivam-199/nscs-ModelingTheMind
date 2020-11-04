function [VA, VB] = rescolarWagner(alpha, r, A, B)
  T = length(r)
  for t = 1:T
    if t == 1
      % first trial
      delta = r(t);
      VA(t) = A(t) * alpha * delta;
      VB(t) = B(t) * alpha * delta;
    else
      delta = r(t) - (A(t) * VA(t-1) + B(t) * VB(t-1));
      VA(t) = VA(t-1) + A(t) * alpha * delta;
      VB(t) = VB(t-1) + B(t) * alpha * delta;
    end 
  end
endfunction
