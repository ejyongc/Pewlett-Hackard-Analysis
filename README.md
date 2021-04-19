# Pewlett-Hackard-Analysis

## Overview of the analysis: 
As many employees at Pewlett-Hackard turn the age of retirement, managers have started planning to backfill those positions while initialing a program to help train and prepare their new employees. This project is called "Silver Tsunami".

In this analysis we will determine the number of employees retiring by title.  From this group of people retiring, we will also identify how many of these employees are elegible to participate in a mentorship program. 

## Results: 

This analysis can be divided into four sections where we analyze the data collected from the CSV files: 

- In our fist part of the analysis we combined our *employees* and *titles* tables into a new table *retirement_title_table* in order to identify the employees by title that were at age of retiring. When retrieving the data, we identified duplicates on our data due to people switching titles during their career at PH (screenshot below). We were able to remove thos duplicates by utilizing a *DISTINCT ON* function on our script. 

![image](https://github.com/ejyongc/Pewlett-Hackard-Analysis/blob/main/Challenge%20images/Deliverable%201.1.png)

- Once we removed the duplicates from our *retirement_titles* we created a new table with unique values and we called it *unique_retirement_title_table*. In this table were able to do a count of all employees elegible for retirement by title (image below). This is the information we want to present to Bobby's manager in preparation for the 'Silver Tsunami'. 

![image](https://github.com/ejyongc/Pewlett-Hackard-Analysis/blob/main/Challenge%20images/Deliverable%201.2.png)

- In the second part of our analysis we join three tables (*empoloyees, dept_emp, and titles*) into one table in order to identify employees who'd be elegible to participate on the mentorship program. When retrieving the data, we identified some employees on the list that no longer work for PH so we decided to filter the 1940 employees out by adding an additional *AND* statement to our script. 

![image](https://github.com/ejyongc/Pewlett-Hackard-Analysis/blob/main/Challenge%20images/Deliverable%202.1.png)

- Once we removed the people who are not longer employed by PH, we identified 1549 employees who'd be eleigble to participate on the mentorship program and help transition the new employees. 

![image](https://github.com/ejyongc/Pewlett-Hackard-Analysis/blob/main/Challenge%20images/Deliverable%202.2.png)

## Summary: 
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Overall the company will have to replace a total of 90,398 positions. The majority of them are *Senior Engineers, Senior Staff, Engineers, and Staff*.
    
![image](https://github.com/ejyongc/Pewlett-Hackard-Analysis/blob/main/Challenge%20images/Deliverable%20extra.png)  
    
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Knowing that there's 90,398 who are retirement-ready employees and only 1549 people elgible for the mentorship program, we can calculate that every person would have to mentor on average 59 new employees. Although this might seem as a lot of people to mentor at once, the company could utilize additional resources liek assistants to help onboard the new employees and position them for success. 
