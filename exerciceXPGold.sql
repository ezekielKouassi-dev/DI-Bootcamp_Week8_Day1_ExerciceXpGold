--- 1. Create a database called bootcamp.

CREATE DATABASE bootcamp;

--- 2. 

CREATE TABLE students(
	lg_stuid SERIAL PRIMARY KEY,
	str_stulast_name VARCHAR(100),
	str_stufirst_name VARCHAR(100),
	dt_stubirth_date TIMESTAMP
);

--- 3.

--- ALTER TABLE students
--- ADD COLUMN lg_stuid SERIAL PRIMARY KEY,
--- ADD COLUMN str_stulast@_name VARCHAR(100),
--- ADD COLUMN str_stufirst_name VARCHAR(100),
--- ADD COLUMN dt_stubirth_date TIMESTAMP;

--- INSERT ------------->>>>>>>>>

--- 1. 

INSERT INTO students(str_stufirst_name, str_stulast_name, dt_stubirth_date)
VALUES ('Marc', 'Benichou', '02-11-1998'), ('Yoan', 'Cohen', '03-12-2010'),
('Lea', 'Benichou', '12-07-1987'), ('Amelia', 'Dux', '07-04-1996'),
('David', 'Grez', '10-06-2003'), ('Omer', 'Simpson', '03-10-1980');

--- 2. 

INSERT INTO students(str_stulast_name, str_stufirst_name, dt_stubirth_date)
VALUES ('Kouassi', 'Ezekiel', '12-03-1997');

--- SELECT -------------->>>>>>>>>

--- 1. Fetch all of the data from the table.

SELECT * FROM students;

--- 2. Fetch all of the students first_names and last_names.

SELECT str_stulast_name, str_stufirst_name FROM students;

--- 3.1. Fetch the student which id is equal to 2.

SELECT * FROM students WHERE lg_stuid = 2;

--- 3.2. Fetch the student whose last_name is Benichou AND first_name is Marc.

SELECT * FROM students WHERE str_stulast_name = 'Benichou' AND str_stufirst_name = 'Marc';

--- 3.3. Fetch the students whose last_names are Benichou OR first_names are Marc.

SELECT * FROM students WHERE str_stulast_name = 'Benichou' OR str_stufirst_name = 'Marc';

--- 3.4. Fetch the students whose first_names contain the letter a.

SELECT * FROM students WHERE str_stufirst_name LIKE '%a%';

--- 3.5. Fetch the students whose first_names start with the letter a.

SELECT * FROM students WHERE str_stufirst_name LIKE 'a%';

--- 3.6. Fetch the students whose first_names end with the letter a.

SELECT * FROM students WHERE str_stufirst_name LIKE '%a';

--- 3.7. Fetch the students whose second to last letter of their first_names are a (Example: Leah).

SELECT * FROM students WHERE str_stufirst_name LIKE '__a_';

--- 3.8. Fetch the students whose id’s are equal to 1 AND 3 .

SELECT * FROM students WHERE lg_stuid = 1 OR lg_stuid = 3;

--- 4. Fetch the students whose birth_dates are equal to or come after 1/01/2000. (show all their info).

SELECT * FROM students WHERE dt_stubirth_date >= '1-01-2000';



--- Exercice XP Gold--------->>>>>>>>>>>

--- 1. 

SELECT * FROM students ORDER BY str_stulast_name LIMIT 4;

--- 2. 

SELECT * FROM students ORDER BY dt_stubirth_date LIMIT 1;

--- 3.

SELECT * FROM students OFFSET 2;