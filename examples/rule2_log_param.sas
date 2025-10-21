/* Rule 2: Log-transformed parameter */
data adlb2;
  set adlb1;
  output; /* original rows */

  PARAMCD = 'LDL_LOG';
  AVAL = log(AVAL);
  BASE = log(BASE);
  PARAM = 'Log(LDL Cholesterol)';
  PARAMTYP = 'DERIVED';
  output;
run;