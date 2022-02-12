# Pewlett-Hackard-Analysis

### Overview of the analysis

The purpose of this analysis was to determine and create a table for the employees that would be retiring
when they were born between January 1, 1952 through December 31, 1955. This includes deteriming if that 
employee had already left the company, if they had been promoted/changed jobs within company, and count how
many employees from a specific title would be retiring.  

### Results

#### Retiring Titles Table
![](https://github.com/Kevin-C3923/Pewlett-Hackard-Analysis/tree/main/Images/retiring_titles.png)

#### Mentorship Eligibilty Table
![](https://github.com/Kevin-C3923/Pewlett-Hackard-Analysis/tree/main/Images/mentorship_eligibilty.png)

- In the Retiring Table, Senior Engineer and Senior Staff will have the biggest group of retirements
- Manger has the most suprising retirement amount being in the single digits
- The main area of retirement are from the Engineer and Staff departments
- In the Mentorship Table, there is a total of 1,549 employees that are mentorship eligibilty

### Summary

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

72,458 roles will be need to fill 
SELECT count(title) as "count"
--INTO retiring_titles
FROM unique_titles;


#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

SELECT count(title) as "count", title
--INTO retiring_mentor_titles
FROM mentorship_eligibilty
GROUP BY title
ORDER BY "count" DESC;
