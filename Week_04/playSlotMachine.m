function r = playSlotMachine(p_win, T)
  %simulate one play of the machine
  for i = 1:T
    r(i) = binornd(1, p_win);
  end
endfunction
