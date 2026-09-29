
CREATE TABLE Course70(
CourseID INT,
CourseName VARCHAR(30),
Credits INT
);

INSERT INTO Course70 VALUES
(201,'Database Systems',4),
(202,'Data Structures',3),
(203,'Mathematics',4);

CREATE TABLE Enrollment(
EnrollmentID INT,
StudentID INT,
CourseID INT
);

INSERT INTO Enrollment VALUES
(1,1001,201),
(2,1001,202),
(3,1002,203),
(4,1003,201);

SELECT Course70.CourseID,
Course70.CourseName,
Enrollment.StudentID
FROM Course70
LEFT JOIN Enrollment
ON Course70.CourseID = Enrollment.CourseID;


SELECT Course70.CourseID,
Course70.CourseName,
Enrollment.StudentID
FROM Course70
RIGHT JOIN Enrollment
ON Course70.CourseID = Enrollment.CourseID;
