-- Drop tables if they already exist
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE departments CASCADE CONSTRAINTS;

-- Create Departments Table
CREATE TABLE departments (
    department_id NUMBER(4) PRIMARY KEY,
    department_name VARCHAR2(30) NOT NULL
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id NUMBER(6) PRIMARY KEY,
    first_name VARCHAR2(20),
    last_name VARCHAR2(25) NOT NULL,
    salary NUMBER(8, 2),
    hire_date DATE DEFAULT SYSDATE,
    department_id NUMBER(4),
    CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert Sample Data
INSERT INTO departments VALUES (10, 'Administration');
INSERT INTO departments VALUES (20, 'IT Support');
INSERT INTO departments VALUES (30, 'Finance');

INSERT INTO employees VALUES (101, 'John', 'Doe', 5000, TO_DATE('2018-05-15', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (102, 'Jane', 'Smith', 12000, TO_DATE('2021-01-10', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (103, 'Eric', 'M', 3500, TO_DATE('2023-08-01', 'YYYY-MM-DD'), 30);

COMMIT;
