/* Rule 1: Change from baseline (CHG) as new column */
data adlb2;
  set adlb1;
  if ABLFL='Y' then CHG = 0;  
  else CHG = AVAL - BASE;
run;