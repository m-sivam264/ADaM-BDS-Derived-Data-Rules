/* Rule 4: Cumulative sum (CUMGLU) */
proc sql;
  create table cum as
    select USUBJID, 'CUMGLU' as PARAMCD, AVISIT,
           min(AVAL) as BASE length=8,
           sum(AVAL) as AVAL
    from adlb1
    where PARAMCD='GLU'
    group by USUBJID, AVISIT;
quit;

data adlb2;
  set adlb1 cum;
run;