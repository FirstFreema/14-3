--start
CREATE TABLE Students
             (Id INTEGER PRIMARY KEY,
              Name TEXT,
              Surname TEXT,
              Email TEXT,
              BirthdayData TEXT,
              Phone TEXT,
              GroupName TEXT,
              AverageScore REAL,
              SubjectWithMinimumGrade TEXT,
              SubjectWithMaximumGrade TEXT)

--database
INSERT INTO Students VALUES (1, 'John', 'Doe', 'john.doe@example.com', '1990-05-15', '+1 (123) 456-7890', 'Group A', 3.8, 'Math', 'English')
INSERT INTO Students VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '1992-11-20', '+1 (987) 654-3210', 'Group B', 4.2, 'History', 'Science')
INSERT INTO Students VALUES (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '1995-03-01', '+1 (456) 789-0123', 'Group A', 3.5, 'Physics', 'Chemistry')
INSERT INTO Students VALUES (4, 'Emily', 'Davis', 'emily.davis@example.com', '1993-08-12', '+1 (321) 654-9870', 'Group C', 4.0, 'Biology', 'Math')
INSERT INTO Students VALUES (5, 'David', 'Wilson', 'david.wilson@example.com', '1991-06-30', '+1 (789) 012-3456', 'Group B', 3.9, 'English', 'History')

--1
SELECT * FROM Students
SELECT Name, Surname FROM Students
SELECT Name, Surname FROM Students
SELECT Name, Surname FROM Students WHERE SubjectWithMinimumGrade > [оценка]
SELECT DISTINCT Country FROM Students
SELECT DISTINCT City FROM Students
SELECT DISTINCT GroupName FROM Students
SELECT DISTINCT SubjectWithMinimumGrade FROM Students

--2
SELECT Name, Surname
FROM Students
WHERE AverageScore BETWEEN <минимальная_оценка> AND <максимальная_оценка>
ORDER BY AverageScore ASC
LIMIT 1

SELECT *
FROM Students
WHERE TIMESTAMPDIFF(YEAR, BirthdayData, CURDATE()) = 20

SELECT *
FROM Students
WHERE TIMESTAMPDIFF(YEAR, BirthdayData, CURDATE()) BETWEEN <минимальный_возраст> AND <максимальный_возраст>

SELECT *
FROM Students
WHERE Name = '<имя_студента>'

SELECT *
FROM Students
WHERE phone LIKE '%777%'

SELECT e-mail
FROM Students
WHERE e-mail LIKE '<буква>%'

--3
SELECT MIN(AverageScore) AS MinimumAverageScore
FROM Students

SELECT MAX(AverageScore) AS MaximumAverageScore
FROM Students

SELECT City, COUNT(*) AS StudentCount
FROM Students
GROUP BY City

SELECT Country, COUNT(*) AS StudentCount
FROM Students
GROUP BY Country

SELECT COUNT(*) AS StudentCount
FROM Students
WHERE SubjectWithMinimumGrade = 'Mathematics'

SELECT COUNT(*) AS StudentCount
FROM Students
WHERE SubjectWithMaximumGrade = 'Mathematics'

SELECT GroupName, COUNT(*) AS StudentCount
FROM Students
GROUP BY GroupName

SELECT GroupName, AVG(AverageScore) AS AverageScore
FROM Students
GROUP BY GroupName