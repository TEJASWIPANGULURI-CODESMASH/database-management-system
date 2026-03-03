-- Insert Students
INSERT INTO Students VALUES (1, 'Rahul', 20, 'CSE');
INSERT INTO Students VALUES (2, 'Anjali', 21, 'ECE');
INSERT INTO Students VALUES (3, 'Kiran', 19, 'IT');

-- Insert Courses
INSERT INTO Courses VALUES (101, 'Database Systems', 4);
INSERT INTO Courses VALUES (102, 'Data Structures', 3);

-- Insert Enrollment Data
INSERT INTO Enrollment VALUES (1, 1, 101, '2024-01-10');
INSERT INTO Enrollment VALUES (2, 2, 101, '2024-01-11');
INSERT INTO Enrollment VALUES (3, 3, 102, '2024-01-12');

-- View All Students
SELECT * FROM Students;

-- Join Query: Students and Courses
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Added data and join query

-- Count number of students in each department
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department;

-- Find total enrollments per course
SELECT c.course_name, COUNT(e.enrollment_id) AS total_enrollments
FROM Courses c
JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Courses having more than 1 student enrolled
SELECT c.course_name, COUNT(e.enrollment_id) AS student_count
FROM Courses c
JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name
HAVING COUNT(e.enrollment_id) > 1;

--Added advanced SQL queries with GROUP BY and HAVING
