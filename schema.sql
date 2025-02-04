-- Table 1: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each student
    FirstName VARCHAR(50) NOT NULL,           -- Student's first name
    LastName VARCHAR(50) NOT NULL,            -- Student's last name
    Email VARCHAR(100) NOT NULL UNIQUE,       -- Student's email (must be unique)
    PhoneNumber VARCHAR(15),                  -- Student's phone number
    DateOfBirth DATE NOT NULL,                -- Student's date of birth
    GradeLevel INT NOT NULL,                  -- Student's grade level (7-12)
    County VARCHAR(50),                       -- County where the student lives
    SchoolName VARCHAR(100)                   -- Name of the student's school
);

-- Table 2: Tutors
CREATE TABLE Tutors (
    TutorID INT PRIMARY KEY AUTO_INCREMENT,   -- Unique ID for each tutor
    FirstName VARCHAR(50) NOT NULL,           -- Tutor's first name
    LastName VARCHAR(50) NOT NULL,            -- Tutor's last name
    Email VARCHAR(100) NOT NULL UNIQUE,       -- Tutor's email (must be unique)
    PhoneNumber VARCHAR(15),                  -- Tutor's phone number
    Qualification VARCHAR(100) NOT NULL,      -- Tutor's qualifications (e.g., B.Ed, M.A)
    County VARCHAR(50),                       -- County where the tutor lives
    YearsOfExperience INT                     -- Tutor's years of experience
);

-- Table 3: Subjects
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each subject
    SubjectName VARCHAR(100) NOT NULL         -- Name of the subject (e.g., Math, English)
);

-- Table 4: Courses
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each course
    CourseName VARCHAR(100) NOT NULL,         -- Name of the course (e.g., Algebra Basics)
    SubjectID INT NOT NULL,                   -- ID of the subject the course belongs to
    TutorID INT NOT NULL,                     -- ID of the tutor teaching the course
    Price DECIMAL(10, 2) NOT NULL,            -- Price of the course (0 for free courses)
    GradeLevel INT NOT NULL,                  -- Grade level the course is for (7-12)
    StartDate DATE,                           -- Start date of the course
    EndDate DATE,                             -- End date of the course
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID), -- Links to Subjects table
    FOREIGN KEY (TutorID) REFERENCES Tutors(TutorID)        -- Links to Tutors table
);

-- Table 5: Enrollments
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each enrollment
    StudentID INT NOT NULL,                      -- ID of the enrolled student
    CourseID INT NOT NULL,                       -- ID of the course they enrolled in
    EnrollmentDate DATE NOT NULL,                -- Date they enrolled
    PaymentStatus VARCHAR(20),                   -- Payment status (e.g., 'Paid', 'Unpaid')
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), -- Links to Students table
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)     -- Links to Courses table
);

-- Table 6: Performance
CREATE TABLE Performance (
    PerformanceID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each performance record
    StudentID INT NOT NULL,                       -- ID of the student
    CourseID INT NOT NULL,                        -- ID of the course
    Score INT NOT NULL,                           -- Score the student got (e.g., 85 out of 100)
    AttendancePercentage INT,                     -- Attendance percentage (e.g., 90%)
    Feedback TEXT,                                 -- Feedback on their performance
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), -- Links to Students table
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)     -- Links to Courses table
);

-- Table 7: TutorPerformance
CREATE TABLE TutorPerformance (
    TutorPerformanceID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each tutor performance record
    TutorID INT NOT NULL,                              -- ID of the tutor
    CourseID INT NOT NULL,                             -- ID of the course they taught
    Rating INT NOT NULL,                               -- Rating out of 5 (e.g., 4 stars)
    HoursTaught INT,                                   -- Hours taught by the tutor
    Feedback TEXT,                                     -- Feedback on their teaching
    FOREIGN KEY (TutorID) REFERENCES Tutors(TutorID),  -- Links to Tutors table
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) -- Links to Courses table
);