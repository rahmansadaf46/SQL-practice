-- Active: 1747563587031@@127.0.0.1@5433@test_db
SELECT * FROM person2; 

ALTER TABLE person2
    ADD COLUMN email VARCHAR(25) DEFAULT('default@mail.com') NOT NULL;

INSERT into person2  (id, user_name, age, email) VALUES(6, 'sadaf1', 33, 'hello@gmail.com');

ALTER TABLE person2
    DROP COLUMN email

ALTER Table person2
    RENAME COLUMN age to user_age; 

ALTER TABLE person2
    ALTER COLUMN user_name type VARCHAR(50); 

ALTER TABLE person2
    ALTER COLUMN user_age set NOT NULL;

ALTER TABLE person2
    ALTER COLUMN user_age drop NOT NULL;

ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2
    ADD constraint pk_person2_id PRIMARY KEY(id);

ALTER TABLE person2
    DROP constraint unique_person2_user_age;


TRUNCATE TABLE person2;


-- SELECT * from person2 WHERE user_age BETWEEN 20 AND 30;

-- SELECT * from person2;

-- SELECT * from person2 LIMIT 3 OFFSET 0*1;

-- SELECT * from person2 LIMIT 2 OFFSET 1*2;