SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ (ts, tsz) VALUES ('2020-01-01 10:45:00', '2020-01-01 10:45:00');

SELECT * FROM timeZ;

TRUNCATE TABLE timeZ;

SELECT now();

SELECT CURRENT_DATE;;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'DD/MM/YYYY');

SELECT to_char(now(), 'MONTH');

SELECT to_char(now(), 'Month');


SELECT CURRENT_DATE - INTERVAL '1 month';

SELECT CURRENT_DATE - INTERVAL '2 year 1 month';

SELECT age(CURRENT_DATE, '2000-01-01');

SELECT * FROM students;

SELECT *,age(CURRENT_DATE, dob) as age_details FROM students;

SELECT extract(year from '2020-01-01'::date);

SELECT extract(month from '2020-01-01'::date);

SELECT 1::BOOLEAN;
SELECT 0::BOOLEAN;

SELECT 'true'::BOOLEAN;
SELECT 'false'::BOOLEAN;


SELECT 'y'::BOOLEAN;
SELECT 'n'::BOOLEAN;

SELECT '1'::BOOLEAN;
SELECT '0'::BOOLEAN;


