CREATE DATABASE JoinPracticeDB;
GO

USE JoinPracticeDB;
GO
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    City VARCHAR(50)
);
GO
INSERT INTO Students (Student_ID, Student_Name, City)
VALUES
    (1, 'Rahul', 'Hyderabad'),
    (2, 'Priya', 'Vijayawada'),
    (3, 'Arjun', 'Chennai'),
    (4, 'Sneha', 'Bengaluru'),
    (5, 'Kiran', 'Hyderabad');
GO

CREATE TABLE Marks (
    Mark_ID INT PRIMARY KEY,
    Student_ID INT,
    Subject VARCHAR(50),
    Score INT,

    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);
GO
INSERT INTO Marks (Mark_ID, Student_ID, Subject, Score)
VALUES
    (101, 1, 'Python', 90),
    (102, 2, 'SQL', 85),
    (103, 3, 'Python', 78),
    (104, 1, 'SQL', 95),
    (105, 5, 'Machine Learning', 88);
GO
SELECT * FROM Students;

SELECT * FROM Marks;

SELECT
    Students.Student_ID,
    Students.Student_Name,
    Students.City,
    Marks.Subject,
    Marks.Score
FROM Students
INNER JOIN Marks
    ON Students.Student_ID = Marks.Student_ID;