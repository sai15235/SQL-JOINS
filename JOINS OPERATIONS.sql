#  SQL Joins Operations

A beginner-friendly SQL practice project demonstrating different types of **JOIN operations** using a fictional *Parks and Recreation* employee dataset.

---

##  Files

| File | Description |
|------|-------------|
| `JOINS_OPERATIONS.sql` | Main SQL file with table creation, data insertion, and join queries |

---

##  Database Structure

### `employees`
| Column | Type | Description |
|--------|------|-------------|
| employee_id | INT (PK) | Unique employee identifier |
| first_name | VARCHAR | First name |
| last_name | VARCHAR | Last name |
| occupation | VARCHAR | Job title |
| salary | INT | Annual salary |
| dept_id | INT | Department ID |

### `employee_details`
| Column | Type | Description |
|--------|------|-------------|
| employee_id | INT (PK) | Unique employee identifier |
| first_name | VARCHAR | First name |
| last_name | VARCHAR | Last name |
| age | INT | Age |
| gender | VARCHAR | Gender |
| birth_date | DATE | Date of birth |

---

## 🔗 JOIN Types Covered

### INNER JOIN
Returns only the rows that have **matching values in both tables**.
```sql
SELECT emp.employee_id, age, occupation
FROM employees AS emp
INNER JOIN employee_details AS emp_det
  ON emp.employee_id = emp_det.employee_id;
```

### LEFT JOIN
Returns **all rows from the left table**, and matched rows from the right table. Unmatched rows return NULL.
```sql
SELECT * FROM employees AS emp
LEFT JOIN employee_details AS emp_det
  ON emp.employee_id = emp_det.employee_id;
```

### RIGHT JOIN
Returns **all rows from the right table**, and matched rows from the left table. Unmatched rows return NULL.
```sql
SELECT * FROM employees AS emp
RIGHT JOIN employee_details AS emp_det
  ON emp.employee_id = emp_det.employee_id;
```

### SELF JOIN
Joins a **table with itself**, useful for comparing rows within the same table.
```sql
SELECT * FROM employees emp1
JOIN employees emp2
  ON emp1.employee_id = emp2.employee_id;
```

---

##  How to Run

1. Make sure you have **MySQL** installed
2. Open your MySQL client (MySQL Workbench, DBeaver, or terminal)
3. Run the SQL file:
```bash
mysql -u your_username -p < JOINS_OPERATIONS.sql
```
Or paste the contents directly into your SQL editor and execute.

---

##  Requirements

- MySQL 5.7+ or compatible SQL database

---

##  Concepts Practiced

- Creating databases and tables
- Inserting data
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- SELF JOIN
