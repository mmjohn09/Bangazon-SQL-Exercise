SELECT e.FirstName, e.LastName, e.IsSupervisor, d.Name AS DeptName FROM Employee e
LEFT JOIN Department d ON d.Id = e.DepartmentId
ORDER BY d.Name, e.LastName, e.FirstName;