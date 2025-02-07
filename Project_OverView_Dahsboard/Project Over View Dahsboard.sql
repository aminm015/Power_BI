with project_status as(
SELECT 
project_id,
project_name,
project_budget,
'upcoming' as status
FROM upcoming_projects
UNION ALL
SELECT
project_id,
project_name,
project_budget,
'completed' as status
FROM completed_projects)

--big table 
SELECT 
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.Department_Name,
pa.project_id,
p.project_name,
p.status
FROM employees e
join departments d
on e.department_id=d.Department_ID
join project_assignments pa 
on pa.employee_id=e.employee_id
join project_status p
ON p.project_id=pa.project_id