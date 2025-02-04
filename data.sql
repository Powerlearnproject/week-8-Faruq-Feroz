-- Add sample students
INSERT INTO Students (FirstName, LastName, Email, PhoneNumber, DateOfBirth, GradeLevel, County, SchoolName)
VALUES 
('Wanjiku', 'Njoroge', 'wanjiku@example.com', '0712345678', '2010-05-15', 7, 'Nakuru', 'Nakuru Primary'),
('Kipchoge', 'Kiptoo', 'kipchoge@example.com', '0723456789', '2009-08-22', 8, 'Eldoret', 'Eldoret Academy'),
('Amina', 'Mohamed', 'amina@example.com', '0734567890', '2007-03-10', 11, 'Mombasa', 'Mombasa High'),
('Juma', 'Omondi', 'juma@example.com', '0745678901', '2006-11-25', 12, 'Kisumu', 'Kisumu School'),
('Mary', 'Wambui', 'mary@example.com', '0756789012', '2011-02-14', 7, 'Nairobi', 'Nairobi Primary'),
('Peter', 'Kamau', 'peter@example.com', '0767890123', '2010-07-30', 8, 'Kiambu', 'Kiambu Academy');

-- Add sample tutors
INSERT INTO Tutors (FirstName, LastName, Email, PhoneNumber, Qualification, County, YearsOfExperience)
VALUES 
('Otieno', 'Ochieng', 'otieno@example.com', '0756789012', 'B.Ed Mathematics', 'Nairobi', 5),
('Atieno', 'Achieng', 'atieno@example.com', '0767890123', 'M.A English', 'Kisumu', 8),
('James', 'Mwangi', 'james@example.com', '0778901234', 'B.Sc Physics', 'Nakuru', 6),
('Grace', 'Wanjiru', 'grace@example.com', '0789012345', 'B.Ed Chemistry', 'Eldoret', 7);

-- Add sample subjects
INSERT INTO Subjects (SubjectName)
VALUES 
('Mathematics'),
('English'),
('Kiswahili'),
('Science'),
('Social Studies'),
('Physics'),
('Chemistry'),
('Biology');

-- Add sample courses
INSERT INTO Courses (CourseName, SubjectID, TutorID, Price, GradeLevel, StartDate, EndDate)
VALUES 
('Introduction to Algebra', 1, 1, 0, 7, '2023-10-01', '2023-12-15'),
('KCSE English Revision', 2, 2, 1000, 12, '2023-10-01', '2023-11-30'),
('Basic Kiswahili', 3, 3, 500, 7, '2023-10-01', '2023-12-31'),
('Physics for Beginners', 6, 4, 800, 10, '2023-10-01', '2023-12-20');

-- Add sample enrollments
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, PaymentStatus)
VALUES 
(1, 1, '2023-10-01', 'Paid'),  -- Wanjiku enrolled in Introduction to Algebra
(2, 1, '2023-10-03', 'Paid'),  -- Kipchoge enrolled in Introduction to Algebra
(3, 2, '2023-10-04', 'Paid'),  -- Amina enrolled in KCSE English Revision
(4, 2, '2023-10-02', 'Unpaid'), -- Juma enrolled in KCSE English Revision
(5, 3, '2023-10-05', 'Paid'),  -- Mary enrolled in Basic Kiswahili
(6, 4, '2023-10-06', 'Paid');  -- Peter enrolled in Physics for Beginners

-- Add sample performance data
INSERT INTO Performance (StudentID, CourseID, Score, AttendancePercentage, Feedback)
VALUES 
(1, 1, 85, 90, 'Good understanding of algebra basics.'),
(2, 1, 78, 85, 'Needs more practice with equations.'),
(3, 2, 90, 95, 'Excellent grasp of grammar rules.'),
(4, 2, 82, 88, 'Good effort, but needs improvement in essay writing.'),
(5, 3, 88, 92, 'Very good Kiswahili skills.'),
(6, 4, 75, 80, 'Needs more practice with physics concepts.');

-- Add sample tutor performance data
INSERT INTO TutorPerformance (TutorID, CourseID, Rating, HoursTaught, Feedback)
VALUES 
(1, 1, 5, 20, 'Otieno is a great tutor!'),
(2, 2, 4, 25, 'Atieno explains concepts clearly.'),
(3, 3, 5, 15, 'James is very patient and knowledgeable.'),
(4, 4, 4, 18, 'Grace is excellent at simplifying complex topics.');