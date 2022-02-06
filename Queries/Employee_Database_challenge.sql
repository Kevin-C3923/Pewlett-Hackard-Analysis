
Select E.emp_no, E.first_name, E.last_name, T.title, T.from_date, T.to_date 
-- INTO retirement_titles
From employees as E
Left Join titles as T
On E.emp_no = T.emp_no
Where E.birth_date Between '1952-01-01 ' AND '1955-12-31' 
Order By E.emp_no ;

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) emp_no,  first_name, last_name, title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

SELECT count(title) as "count", title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

SELECT DISTINCT ON (emp_no)  E.emp_no, E.first_name, E.last_name, E.birth_date,	
		DE.from_date, DE.to_date,
		T.title
--INTO mentorship_eligibilty
FROM employees AS E 
JOIN dept_employees AS DE
ON E.emp_no = DE.emp_no
JOIN titles AS T
ON E.emp_no = T.emp_no
WHERE (DE.to_date = '9999-01-01') AND (E.birth_date Between '1965-01-01 ' AND '1965-12-31')
ORDER BY emp_no ;


