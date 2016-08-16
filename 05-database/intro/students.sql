CREATE DATABASE ga;

\c ga

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  firstname VARCHAR(50),
  lastname VARCHAR(50),
  gpa FLOAT8
);

\dt

INSERT INTO students (firstname, lastname, gpa) VALUES ('iter', 'm8s', 1.5);
INSERT INTO students (firstname, lastname, gpa) VALUES ('l', 'j', 5.5);
INSERT INTO students (firstname, lastname, gpa) VALUES ('ali', 'mein', 9001);

UPDATE students SET gpa = 0.3 where id = 3;

DELETE FROM students where firstname = 'l';
