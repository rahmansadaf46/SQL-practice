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