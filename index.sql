-- 1
CREATE DATABASE university_db;
-- 2
CREATE TABLE students( student_id INT PRIMARY KEY, full_name VARCHAR(100) NOT NULL, email VARCHAR(50) UNIQUE, age INT CHECK (age >= 18) , registration_date DATE DEFAULT CURRENT_DATE, registration_time TIME DEFAULT CURRENT_TIME, created_at DATETIME DEFAULT NOW() );
-- 3-1
INSERT INTO students (student_id , full_name , email , age) VALUES (1,"Abdulaziz Abdulaziz","abdulaziz@gmail.com",26);
-- 3-2
INSERT INTO students VALUES (2,"Ahmad Ali","ahmad@gmail.com",23,"2026-11-23","12:24:44","2026-11-23 12:24:44");
-- 4
DROP DATABASE university_db;
-- 5
CREATE DATABASE university_db;
-- 6 
CREATE TABLE departments ( dept_id INT PRIMARY KEY , dept_name VARCHAR(100) NOT NULL );
-- 7
CREATE TABLE courses( course_id INT PRIMARY KEY, course_name VARCHAR(100) NOT NULL, credits INT NOT NULL DEFAULT 3, dept_id INT , FOREIGN KEY (dept_id) REFERENCES departments (dept_id) ON DELETE CASCADE );
-- 8
CREATE TABLE students ( student_id INT PRIMARY KEY , student_name VARCHAR(100) NOT NULL );
-- 9
CREATE TABLE enrollments( enrollment_id INT PRIMARY KEY , student_id INT , course_id INT , FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE, FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE CASCADE );
-- 10
CREATE TABLE health_records( record_id INT PRIMARY KEY , student_id INT , blood_group VARCHAR(10), FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE );
-- 11-1
INSERT INTO departments VALUES (1,'computer science'), (2,'mathematics'), (3,'physics');
-- 11-2
INSERT INTO courses VALUES (1,'database systems', 4 , 1 ), (2,'algorithms', 3 , 1), (3,'calculus', 4 , 2), (4,'quantum mechanics', 5 , 3);
-- 11-3
INSERT INTO students VALUES (1,'alice'), (2,'bob'), (3,'charlie'), (4,'samy'), (5,'eva');
-- 11-4
INSERT INTO enrollments VALUES (1,1,1), (2,1,2), (3,2,1), (4,3,2), (5,3,3), (6,3,3), (7,4,3), (8,4,4);
-- 11-5
INSERT INTO health_records VALUES (1,1,'A+'), (2,2,'B+'), (3,3,'O-'), (4,4,'AB+'), (5,5,'A-');