SELECT * FROM students;

SELECT country, COUNT(*) FROM students
    GROUP BY country;

SELECT country, COUNT(*), AVG(age) FROM students
    GROUP BY country;

SELECT country, COUNT(*), AVG(age) FROM students
    GROUP BY country
    HAVING AVG(age) > 20.60;

SELECT country, COUNT(*), AVG(age) FROM students
    GROUP BY country
    HAVING AVG(age) > 20.60;

SELECT extract(year from dob) as birth_year, COUNT(*) 
    FROM students
    GROUP BY birth_year;


SELECT course, COUNT(*) ,AVG(age)
    FROM students
    GROUP BY course
    HAVING AVG(age) > 20.60;