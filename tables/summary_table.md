# ADaM BDS Rules Summary

| Rule | Type of Derivation | Output Format |
|------|-----------------|---------------|
| 1    | Same-row calculation (parameter-invariant) | New column |
| 2    | Transform of `AVAL` / units change | New parameter (rows) |
| 3    | Derived from other rows of same PARAM | New row(s) |
| 4    | Function of multiple rows (same PARAM) | New parameter (rows) |
| 5    | Function of multiple parameters | New parameter (rows) |
| 6    | Multiple baseline definitions | Duplicate rows with `BASETYPE` |