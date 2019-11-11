--SELECT e.FirstName, e.LastName, e.IsSupervisor, d.Name AS DeptName FROM Employee e
--LEFT JOIN Department d ON d.Id = e.DepartmentId
--ORDER BY d.Name, e.LastName, e.FirstName;

--SELECT * FROM Department ORDER BY Budget DESC;

--SELECT e.FirstName, e.LastName, e.isSupervisor, d.Name AS DeptName FROM Employee e
--INNER JOIN Department d ON d.Id = e.DepartmentId
--WHERE e.IsSupervisor = 1;

--SELECT e.DepartmentId, d.Name AS DepartmentName, COUNT(e.DepartmentId) AS NumberOfEmployees FROM Employee e
--JOIN Department d ON e.DepartmentId = d.Id
--GROUP BY d.Name, e.DepartmentId;

--UPDATE Department SET Budget = (Budget * 1.20);

--SELECT e.Id, e.FirstName, e.LastName FROM Employee e WHERE e.Id NOT IN (SELECT EmployeeId FROM EmployeeTraining);

--List the employee full names for employees who are signed up for at least one training program
--and include the number of training programs they are signed up for.

 --SELECT e.FirstName, e.LastName, COUNT(et.EmployeeId) AS NumberOfTrainingPrograms FROM Employee e
 --JOIN EmployeeTraining et ON et.EmployeeId = e.Id
 --GROUP BY et.EmployeeId, e.FirstName, e.LastName;

 --SELECT tp.Name AS ProgramName, tp.StartDate, tp.EndDate, tp.MaxAttendees, COUNT(et.EmployeeId) AS NumberOfAttendees FROM TrainingProgram tp
 --JOIN EmployeeTraining et ON et.TrainingProgramId = tp.Id
 --GROUP BY tp.Name, tp.StartDate, tp.EndDate, tp.MaxAttendees;

 --SELECT tp.Name AS ProgramName FROM TrainingProgram tp
 --JOIN EmployeeTraining et ON et.TrainingProgramId = tp.Id
 --GROUP BY tp.MaxAttendees, tp.Name
 --HAVING tp.MaxAttendees = COUNT(et.EmployeeId);

 --SELECT * FROM TrainingProgram
 --WHERE EndDate > SYSDATETIME();

 --INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId) VALUES (14, 10);
 --INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId) VALUES (15, 11);
 --INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId) VALUES (16, 12);
 --INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId) VALUES (17, 13);
 --INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId) VALUES (18, 14);

--SELECT TOP 3 t.Name AS MOST_POPULAR, COUNT(et.TrainingProgramId) AS NUM_OF_ATTENDEES, t.StartDate, t.EndDate
--FROM EmployeeTraining et
--JOIN TrainingProgram t ON et.TrainingProgramId = t.Id
--GROUP BY et.TrainingProgramId, t.Name, t.StartDate, t.EndDate
--ORDER BY COUNT(et.TrainingProgramId) DESC

 
