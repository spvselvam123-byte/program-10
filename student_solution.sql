

CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName VARCHAR(30)
);

INSERT INTO Department VALUES
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Physics');

CREATE TABLE Student (
    StudentID INT,
    StudentName VARCHAR(20),
    DepartmentID INT
);

INSERT INTO Student VALUES
(1001, 'Arun', 101),
(1002, 'Divya', 102),
(1003, 'Karthik', 101),
(1004, 'Nisha', 103);

-- LEFT JOIN
SELECT Student.StudentName,
       Department.DepartmentName
FROM Student
LEFT JOIN Department
ON Student.DepartmentID = Department.DepartmentID;

-- RIGHT JOIN
SELECT Student.StudentName,
       Department.DepartmentName
FROM Student
RIGHT JOIN Department
ON Student.DepartmentID = Department.DepartmentID;
