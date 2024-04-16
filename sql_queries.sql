--list employees
SELECT 
	"employees"."emp_no",
	"employees"."last_name",
	"employees"."first_name",
	"employees"."sex",
	"salaries"."salary"
From
	"employees"
INNER JOIN 
	"salaries" ON
	"employees"."emp_no" = "salaries"."emp_no";
    
-- List first, last, and hire date for 1986 employees
SELECT
	"employees"."first_name",
	"employees"."last_name",
	"employees"."hire_date"
FROM
	"employees"
WHERE EXTRACT(YEAR FROM "hire_date") = 1986;

--list managers for each department
SELECT
	"dept_manager"."emp_no",
	"dept_manager"."dept_no",
	"departments"."dept_name",
	"employees"."first_name",
	"employees"."last_name"
FROM
	"employees"
INNER JOIN
	"dept_manager" ON
	"employees"."emp_no" = "dept_manager"."emp_no"
INNER JOIN
	"departments" ON
	"dept_manager"."dept_no" = "departments"."dept_no"

--list department number for each employees with number, last name, first name, and department name
SELECT
	"dept_emp"."emp_no",
	"dept_emp"."dept_no",
	"departments"."dept_name",
	"employees"."first_name",
	"employees"."last_name"
	
FROM
	"employees"
INNER JOIN
	"dept_emp" ON
	"employees"."emp_no" = "dept_emp"."emp_no"
INNER JOIN
	"departments" ON
	"dept_emp"."dept_no" = "departments"."dept_no"

-- Hercules employees
SELECT
	"employees"."first_name",
	"employees"."last_name",
	"employees"."sex"
FROM
	"employees"
WHERE "employees"."first_name" = 'Hercules' AND "employees"."last_name" LIKE 'B%';

