-- ******************Challenge******************

-- *******Deliverable 1:  The Number of Retiring Employees by Title

SELECT e.emp_no,
    e.first_name,
	e.last_name,
	titles.title, 
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles
on(e.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Distinct On with Orderby to remove duplicate rows
SELECT DISTINCT ON (r_t.emp_no) r_t.emp_no,
r_t.first_name,
r_t.last_name,
r_t.title
INTO unique_titles
FROM retirement_titles AS r_t
ORDER BY r_t.emp_no, r_t.to_date DESC;


-- Retrieve the number of employees by their most recent 
-- job title who are about to retire.

SELECT COUNT(emp_no), 
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;



-- *******Deliverable 2:  The Employees Eligible for the Mentorship Program

SELECT DISTINCT ON (titles.emp_no) e.emp_no,
    e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles
        ON (e.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY titles.emp_no;
