# Pewlett-Hackard-Analysis

### Overview of the analysis

The purpose of this analysis was to determine and create a table for the employees that would be retiring when they were born between January 1, 1952 through December 31, 1955. This includes deteriming if that employee had already left the company, if they had been promoted/changed jobs within company, and count how many employees from a specific title would be retiring.  

### Results

#### Retiring Titles Table
![](https://github.com/Kevin-C3923/Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles.png)

#### Mentorship Eligibilty Table
![](https://github.com/Kevin-C3923/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibilty.png)

- In the Retiring Table, Senior Engineer and Senior Staff will have the biggest group of retirements
- Manger has the most suprising retirement amount being in the single digits
- The main area of retirement are from the Engineer and Staff departments
- In the Mentorship Table, there is a total of 1,549 employees that are mentorship eligibilty

### Summary

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

72,458 roles will be needed to be filled up. With the table below we can add up the total amount.

SELECT count(title) as "count" FROM unique_titles;


#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

By using the query below to create a table, we can see the amount of retirement-ready to mentor employees is greatly low and would require a mentor to train about 8 to 11 next generation emploemployees each in order to be ready for the "silver tsunami".

SELECT count(title) as "count", title

FROM mentorship_eligibilty

GROUP BY title

ORDER BY "count" DESC;
