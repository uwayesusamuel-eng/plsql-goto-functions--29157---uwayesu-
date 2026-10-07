# Assignment Reflection: PL/SQL GOTO Statements & Functions

## 1. GOTO Statements vs Structured Logic
While the `GOTO` statement allows unconditional jumps within a block, overusing it can lead to unstructured and hard-to-maintain "spaghetti code." Unconditional jumps also come with strict PL/SQL rules (e.g., you cannot jump into an `IF` statement or loop from outside). Replacing `GOTO` with structured constructs like `IF-ELSIF-ELSE` improves readability, debugging, and code maintainability.

## 2. Benefits of PL/SQL Stored Functions
- **Reusability:** Functions can be declared once and reused across multiple SQL statements and PL/SQL blocks.
- **Modularity:** Encapsulating specific business logic (such as tax calculation or annual salary computation) simplifies code updates.
- **SQL Integration:** Stored functions returning valid types can be called directly inside `SELECT` queries, enabling powerful dynamic data transformation.

## 3. Key Learnings & Exception Handling
- Learned how to manage runtime errors using PL/SQL exception blocks (e.g., `NO_DATA_FOUND` and `OTHERS`).
- Understood how to chain user-defined functions inside master validator functions (`fn_validate_payroll`).
