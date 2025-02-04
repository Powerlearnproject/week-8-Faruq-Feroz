--  Data Retrieval Queries

-- Query 1: Get all students
SELECT * FROM Students;

-- Query 2: Get all tutors
SELECT * FROM Tutors;

-- Query 3: Get all subjects
SELECT * FROM Subjects;

-- Query 4: Get all courses
SELECT * FROM Courses;

-- Query 5: Get all enrollments
SELECT * FROM Enrollments;

-- Query 6: Get all performance records
SELECT * FROM Performance;

-- Query 7: Get all tutor performance records
SELECT * FROM TutorPerformance;

-- Data Analysis Queries

-- Query 8: Get all students enrolled in a specific course (e.g., CourseID = 1)
SELECT Students.FirstName, Students.LastName
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
WHERE Enrollments.CourseID = 1;

-- Query 9: Get all courses taught by a specific tutor (e.g., TutorID = 1)
SELECT Courses.CourseName
FROM Courses
WHERE Courses.TutorID = 1;

-- Query 10: Get the average score of students in a specific course (e.g., CourseID = 1)
SELECT AVG(Score) AS AverageScore
FROM Performance
WHERE CourseID = 1;

-- Query 11: Get the top-performing student in a specific course (e.g., CourseID = 1)
SELECT Students.FirstName, Students.LastName, Performance.Score
FROM Students
JOIN Performance ON Students.StudentID = Performance.StudentID
WHERE Performance.CourseID = 1
ORDER BY Performance.Score DESC
LIMIT 1;

-- Query 12: Get the average rating of a specific tutor (e.g., TutorID = 1)
SELECT AVG(Rating) AS AverageRating
FROM TutorPerformance
WHERE TutorID = 1;

-- Query 13: Get the total number of enrollments per course
SELECT Courses.CourseName, COUNT(Enrollments.EnrollmentID) AS TotalEnrollments
FROM Courses
JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseName;

-- Query 14: Get the total revenue generated from paid courses
SELECT SUM(Price) AS TotalRevenue
FROM Courses
WHERE Price > 0;

-- Query 15: Get the average attendance percentage of students in a specific course (e.g., CourseID = 1)
SELECT AVG(AttendancePercentage) AS AverageAttendance
FROM Performance
WHERE CourseID = 1;

-- Database Management Queries

-- Query 16: Add a new student
INSERT INTO Students (FirstName, LastName, Email, PhoneNumber, DateOfBirth, GradeLevel, County, SchoolName)
VALUES ('Jane', 'Doe', 'jane.doe@example.com', '0755555555', '2011-04-20', 7, 'Nairobi', 'Nairobi Primary');

-- Query 17: Update a student's email (e.g., StudentID = 1)
UPDATE Students
SET Email = 'new.email@example.com'
WHERE StudentID = 1;

-- Query 18: Delete a student (e.g., StudentID = 1)
DELETE FROM Students
WHERE StudentID = 1;

-- Query 19: Add a new course
INSERT INTO Courses (CourseName, SubjectID, TutorID, Price, GradeLevel, StartDate, EndDate)
VALUES ('Advanced Mathematics', 1, 1, 1500, 10, '2023-11-01', '2024-01-31');

-- Query 20: Update a course's price (e.g., CourseID = 1)
UPDATE Courses
SET Price = 500
WHERE CourseID = 1;

-- Query 21: Delete a course (e.g., CourseID = 1)
DELETE FROM Courses
WHERE CourseID = 1;