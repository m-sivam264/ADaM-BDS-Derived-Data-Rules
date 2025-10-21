/* Rule 5: CHOL/HDL ratio */
proc sql;
  create table ratio as
    select a.USUBJID, 'CHOLH' as PARAMCD, a.AVISIT,
           case when HDL>0 then CHOL/HDL else . end as AVAL,
           case when HDL>0 and a.ABLFL='Y' then CHOL/HDL else . end as BASE
    from adlb1 as a
    join adlb1 as b
      on a.USUBJID=b.USUBJID and a.AVISIT=b.AVISIT
    where a.PARAMCD='CHOL' and b.PARAMCD='HDL';
quit;

data adlb2;
  set adlb1 ratio;
run;