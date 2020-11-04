function [r, A, B] = inhibition(T)
  for i = 1:T
    if binornd(1, 0.5) == 1
      % A -> R trial
      r(i) = 1;
      A(i) = 1;
      B(i) = 0;  
     else
      % A, B -> R trial
      r(i) = 0;
      A(i) = 1;
      B(i) = 1;  
    endif
  endfor
endfunction
