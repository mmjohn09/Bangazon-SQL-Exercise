--SELECT e.FirstName, e.LastName, e.IsSupervisor, d.Name AS DeptName FROM Employee e
--LEFT JOIN Department d ON d.Id = e.DepartmentId
--ORDER BY d.Name, e.LastName, e.FirstName;

--SELECT * FROM Department ORDER BY Budget DESC;

--SELECT e.FirstName, e.LastName, e.isSupervisor, d.Name AS DeptName FROM Employee e
--INNER JOIN Department d ON d.Id = e.DepartmentId
--WHERE e.IsSupervisor = 1;
