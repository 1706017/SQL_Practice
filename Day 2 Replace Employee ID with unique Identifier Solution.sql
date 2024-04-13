SELECT 
      EmployeeUNI.unique_id as unique_id,Employees.name as name
FROM 
    Employees LEFT JOIN EmployeeUNI
ON 
   Employees.unique_id = EmployeeUNI.unique_id;

