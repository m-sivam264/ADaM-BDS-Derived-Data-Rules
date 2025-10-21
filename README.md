# ADaM-BDS-Derived-Data-Rules
# ADaM BDS Derived Data Rules (CDISC ADaM IG 4.2)

This repository summarizes the rules for adding **derived data** in ADaM Basic Data Structure (BDS) datasets, based on the CDISC ADaM Implementation Guide (v4.2). Derived data can be added as **new columns** or **new rows**, depending on the type of derivation.

## Table of Contents
- [Rule 1: Add a New Column](#rule-1-add-a-new-column)
- [Rule 2: New Parameter for an AVAL Transformation](#rule-2-new-parameter-for-an-aval-transformation)
- [Rule 3: New Row(s) Within Same Parameter](#rule-3-new-rows-within-same-parameter)
- [Rule 4: New Parameter for Function of Multiple Rows](#rule-4-new-parameter-for-function-of-multiple-rows)
- [Rule 5: New Parameter for Functions of Multiple Parameters](#rule-5-new-parameter-for-functions-of-multiple-parameters)
- [Rule 6: Multiple Baseline Definitions](#rule-6-multiple-baseline-definitions)
- [Summary Table](#summary-table)

## Examples

- [Rule 1: Same-row calculation → new column](examples/rule1_chg_column.sas)
- [Rule 2: AVAL transformation → new parameter](examples/rule2_log_param.sas)
- [Rule 3: Derived from same parameter → new row](examples/rule3_avg_row.sas)
- [Rule 4: Multiple rows same parameter → new parameter](examples/rule4_cumsum_param.sas)
- [Rule 5: Multiple parameters → new parameter](examples/rule5_ratio_param.sas)
- [Rule 6: Multiple baseline definitions](examples/rule6_multibaseline.sas)

---

## Summary Table

See [tables/summary_table.md](tables/summary_table.md) for a quick reference of all rules.

---

## Key Takeaways

- **Columns:** Same-row transformations (Rule 1)
- **Rows:** New parameters or derived timepoints (Rules 2–6)
- Preserves vertical structure and traceability in BDS datasets.
