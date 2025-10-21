/* Rule 3: Average of Week24 & Week48 for ALT */
proc sql;
  create table avg as
    select USUBJID, PARAMCD, "Avg24-48" as AVISIT length=10,
           . as AVISITN, . as VISITNUM,
           '' as ABLFL length=1,
           mean(AVAL) as AVAL,
           max(BASE) as BASE,
           'AVERAGE' as DTYPE length=8
    from adlb1
    where PARAMCD='ALT' and AVISIT in('Week 24','Week 48')
    group by USUBJID, PARAMCD;
quit;

data adlb2;
  set adlb1 avg;
run;