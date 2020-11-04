function [VA, VB] = naiveModel(alpha, r, A, B)
  T = length(r);
  for t = 1:T
    if t == 1
      % initialize
      VA(t) = A(t) * alpha * r(t);
      VB(t) = B(t) * alpha * r(t);
    else
      VA(t) = VA(t-1) + A(t) * alpha * (r(t) - VA(t-1));
      VB(t) = VB(t-1) + B(t) * alpha * (r(t) - VB(t-1));
    end
  end
endfunction
