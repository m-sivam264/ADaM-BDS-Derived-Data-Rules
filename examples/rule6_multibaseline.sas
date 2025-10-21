/* Rule 6: Multiple baseline definitions */
data adlb2;
  set adlb1;
  if PARAMCD='ALT' then do;
    BASETYPE='SCREEN'; output;

    if AVISIT='Week 2' then do;
      ABLFL='Y'; BASE=AVAL; AVISIT='Baseline'; BASETYPE='RUN-IN'; output;
    end;

    if AVISIT='Week 4' then do;
      BASE=75; BASETYPE='RUN-IN'; output;
    end;
  end;
run;