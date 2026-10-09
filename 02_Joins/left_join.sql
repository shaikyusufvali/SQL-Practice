USE JoinPracticeDB;
GO

SELECT
    Students.Student_ID,
    Students.Student_Name,
    Marks.Subject,
    Marks.Score
FROM Students
LEFT JOIN Marks
    ON Students.Student_ID = Marks.Student_ID;

    SELECT
    Students.Student_Name,
    Marks.Subject,
    Marks.Score
FROM Students
LEFT JOIN Marks
    ON Students.Student_ID = Marks.Student_ID;