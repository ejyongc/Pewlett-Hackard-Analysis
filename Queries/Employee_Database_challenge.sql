--DELIVERABLE 1 
-- Retrieve columns (Step 1-7)
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date 
--INTO retirement_title_table
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--TEST--Review retirement_title_table 
SELECT * FROM retirement_title_table;

-- Use Dictinct with Orderby to remove duplicate rows (Step 8-14)
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title
--INTO unique_retirement_title_table
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, to_date DESC;

--TEST--Review unique_retirement_title_table 
SELECT * FROM unique_retirement_title_table

--Retrieve the number of titles from the Unique Titles table (Step 15-21)
SELECT COUNT(emp_no),title
--INTO retiring_titles_table
FROM unique_retirement_title_table
GROUP BY title
ORDER BY count DESC;

--TEST-- Review retiring_titles
SELECT * FROM retiring_titles_table;

--TEST-- Total count from unique_retiring_titles_table
SELECT COUNT(emp_no)
FROM unique_retirement_title_table;

--DELIVERABLE 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--INTO mentorship_elegibility_table
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no=de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

--TEST-- Count current employees elegible for the mentorship program
SELECT COUNT (emp_no) 
FROM mentorship_elegibility_table;
