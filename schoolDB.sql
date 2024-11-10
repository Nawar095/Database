USE SchoolDB;
CREATE TABLE Students (
    student_id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    age INT,
    grade_level NVARCHAR(20)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY IDENTITY(1,1),
    course_name NVARCHAR(100),
    teacher NVARCHAR(50)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT FOREIGN KEY REFERENCES Students(student_id),
    course_id INT FOREIGN KEY REFERENCES Courses(course_id),
    semester NVARCHAR(20)
);
/* Insert Students */
INSERT INTO Students (first_name, last_name, age, grade_level) VALUES
('John', 'Doe', 14, '8th Grade'),
('Jane', 'Smith', 15, '9th Grade'),
('Emily', 'Johnson', 13, '7th Grade');
/* Insert Courses */
INSERT INTO Courses (course_name, teacher) VALUES
('Mathematics', 'Mr. Brown'),
('Science', 'Ms. Green'),
('History', 'Mrs. White');

/* Insert Enrollments */
INSERT INTO Enrollments (student_id, course_id, semester) VALUES
(1, 1, 'Fall 2024'),
(1, 2, 'Fall 2024'),
(2, 3, 'Fall 2024'),
(3, 1, 'Fall 2024');
