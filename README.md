# PL/SQL GOTO Statements and Functions — Individual Assignment III

**Course:** Database Development with PL/SQL (INSY 8311)  
**Student:** UWAYESU Samuel  
**Student ID:** 29157  
**Assignment Date:** October 5, 2026  


## Overview

This repository contains my practical work on:

1. PL/SQL GOTO statements
2. Stored functions
3. Exception handling
4. Functions used in SQL
5. Payroll validation
6. GitHub documentation

## Repository Structure

```text
plsql-goto-functions-29157-samuel/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
├── screenshots/
└── docs/
    └── REFLECTION.md
```

## Database Setup

Run:

```text
00_setup/create_tables.sql
```

It creates:
- `departments`
- `employees`

The employee table contains:
- `emp_id`
- `emp_name`
- `emp_salary`
- `hire_date`
- `department_id`

## How to Run

1. Open Oracle SQL Developer.
2. Connect to the correct Oracle schema/PDB.
3. Open `00_setup/create_tables.sql`.
4. Run the script.
5. Run all files in `02_functions/`.
6. Run the programs in `01_goto/`.
7. Run the files in `03_tests/`.
8. Check the output.
9. Take screenshots of the required outputs.
10. Put screenshots in the `screenshots/` folder.

## Task Summary

### Part A — GOTO

**A1:** Classify a number as positive, negative, or zero using GOTO.

**A2:** Read an employee salary and classify it as high, medium, or low.

**A3:** Demonstrate an illegal GOTO and provide a corrected version.

**A4:** Rewrite the number-classifier logic without GOTO using IF/ELSIF/ELSE.

### Part B — Functions

**B1:** `fn_annual_salary` calculates annual salary from monthly salary.

**B2:** `fn_years_of_service` calculates completed years of service from hire date.

**B3:** `fn_calculate_tax` calculates tax using the rates documented inside the SQL file.

**B4:** `fn_dept_name` returns the department name for an employee.

**B5:** Demonstrates calling stored functions from a SQL SELECT statement.

### Part C — Combined Task

**C1:** `fn_validate_payroll` checks whether an employee's payroll information is valid.

**C2:** Reflection is provided in `docs/REFLECTION.md`.

## Exception Handling

The functions handle relevant errors such as:
- `NO_DATA_FOUND`
- invalid input
- future hire dates
- other unexpected errors where appropriate

## Important Assumption

The assignment text provided for preparation contained the task headings but did not include the detailed formulas, salary thresholds, or tax-rate table that may appear in the instructor's full assignment document.

Therefore, the tax rates and salary classification thresholds used here are documented inside the relevant files. If the instructor's full pages 2–4 specify different values, those values must replace the assumptions before submission.

## GitHub Commit Plan

Make at least five meaningful commits. For example:

```text
1. Add project structure and README
2. Add database setup and sample data
3. Add GOTO tasks
4. Add stored functions
5. Add tests and reflection
6. Add screenshots
```

## Final Submission Checklist

- [ ] Repository is public
- [ ] Correct repository name
- [ ] README.md completed
- [ ] `.gitignore` included
- [ ] `00_setup/create_tables.sql` works
- [ ] All GOTO files included
- [ ] All function files included
- [ ] Test files included
- [ ] Required screenshots included
- [ ] `docs/REFLECTION.md` completed
- [ ] At least 5 meaningful commits
- [ ] GitHub repository link submitted through the required Google Form before the deadline
