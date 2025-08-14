-- Write an SQL query to calculate the number of matches played, wins, and losses for each team.

-- Team_name , match_number, win , loss

Select 
Team_name,
Count (*) from match_number,
sum(win) as wins,
sum(loss) as loss
From 
Team_details
Group by Team_name

Select 
Team_name,
Count (*) from match_number,
sum(Case when status = ‘win’ then 1 else 0) as wins,
sum(Case when status = ‘loss’ then 1 else 0) as losses
From 
Team_details
Group by Team_name

-- Write an SQL query to calculate the percentage difference between each employee’s salary and the highest salary in their department.

Select 
Employee_id,
Employee_name,
Employee_salary,
From employee


Select 
Employee_id,
Employee_name,
Employee_salary,
round(((max_salary - Employee_salary)/max_salary) * 100,2) as sal_per
from
(Select 
Employee_id,
dept_id,
Employee_name,
Employee_salary,
(select max(Employee_salary) over ( partition by dept_id) from Employee) as max_salary
From 
Employee) A

-- Identify the teams that played the most matches in a given season.

-- Team_name , season , match_number, win , loss

Select 
Team_name , 
season ,
sum( Match_number)  as total_matches
From 
Team_details
Group by Team_name, season
Order by total_matches desc , season

Calculate the percentage contribution of each employee’s salary to the total salary of their department.

Select 
Employee_id,
Employee_name,
Employee_salary,
round(((max_salary - Employee_salary)/max_salary) * 100,2) as sal_per
from
(Select 
Employee_id,
dept_id,
Employee_name,
Employee_salary,
(select max(Employee_salary) over ( partition by dept_id) from Employee) as max_salary
From 
Employee) A















