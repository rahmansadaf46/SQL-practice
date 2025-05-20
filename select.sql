-- Active: 1747563587031@@127.0.0.1@5432@ph

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VAlUES
('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');

Select * FROM students;

SELECT email FROM students;


SELECT * FROM students
     WHERE email != 'NULL';

SELECT * FROM students
     WHERE email IS NOT NULL;

SELECT * FROM students ORDER BY age ASC;

SELECT * FROM students ORDER BY age DESC;

SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group FROM students;

SELECT * FROM students 
    WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students 
    WHERE (country = 'USA' OR country = 'Australia') AND age > 20;

SELECT * FROM students 
    WHERE age <> 19;

-- @Scalar functions
-- UPPER() Converts a string to uppercase.
-- LOWER() Converts a string to lowercase.
-- CONCAT() Concatenates two or more strings.
-- LENGTH() Returns the number of characters in a string.


-- @Aggregate functions
-- AVG() Calculate the average of a set of values.
-- MAX() Returns the max value in a set.
-- MIN() Returns the minimum value in a setrarklordsadaf@gmail.com
-- SUM() Calculates the sum of values in a set.
-- COUNT() Counts the number of rows in a set.

SELECT UPPER(first_name), * FROM students;

SELECT UPPER(first_name) as first_name_upper, * FROM students;

SELECT concat(first_name, ' ', last_name) as full_name FROM students;

SELECT COUNT(*) FROM students;

SELECT AVG(age) FROM students;

SELECT MAX(length(first_name)) FROM students;

SELECT length(first_name) FROM students;

SELECT email as user_email, student_id as id, * FROM students 
    WHERE email = 'bob.williams@example.com';

SELECT * FROM students
    WHERE NOT country = 'USA';

SELECT COALESCE(email, 'N/A') as "Email", "age", blood_group FROM students;

SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students
    WHERE country IN('USA', 'Australia');

SELECT * FROM students
    WHERE age BETWEEN 19 AND 21;

SELECT * FROM students
    WHERE dob BETWEEN '2000-01-01' AND '2002-01-01' ORDER BY dob;

SELECT * FROM students
    WHERE first_name LIKE '%ma';

SELECT * FROM students
    WHERE first_name LIKE '__a';

SELECT * FROM students
    WHERE first_name LIKE 'A%';

SELECT * FROM students
    WHERE first_name ILIKE 'a%';

SELECT * FROM students;

SELECT * FROM students LIMIT 10 OFFSET 10 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;
SELECT * FROM students LIMIT 5 OFFSET 5 * 3;

--here *0, *1, *2, *3 are the page numbers

DELETE FROM students;

DELETE FROM students
    WHERE grade = 'B';
    
DELETE FROM students
    WHERE grade = 'C' AND country = 'USA';

UPDATE students
    SET email = 'default@mail.com'
    WHERE student_id = 47;

TRUNCATE TABLE students;