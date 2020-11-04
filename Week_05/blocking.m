function [r, A, B] = blocking(T)
  T1 = round(T / 2);  % number of trials in phase 1
  % Phase 1 A -> R
  for i = 1: T1
    r(i) = 1;
    A(i) = 1;
    B(i) = 0;  
  endfor

  % Phase 2 A, B -> R
  for i = T1 + 1: T
    r(i) = 1;
    A(i) = 1;
    B(i) = 1;  
  endfor
endfunction
