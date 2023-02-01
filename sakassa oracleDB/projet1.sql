
-- creation des tables
CREATE TABLE student (
  student_id number(10) PRIMARY KEY,
  name varchar2(50) NOT NULL,
  email varchar2(50) NOT NULL
);
drop table student;
drop table notes;
CREATE TABLE notes (
  note_id int PRIMARY KEY,
  student_id int NOT NULL,
  subject varchar2(50) NOT NULL,
  grade int NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student(student_id)
);
--CREATION DES UTILISATEURS
create user ad identified by ad default tablespace users;
create user u1 identified by u1 default tablespace users;

--concession des privileges
grant all privileges to ad;
grant create session to u1;
grant select on notes  to u1;
grant select on notes to u1;
revoke select on notes  from u1;

--Remplissage
INSERT INTO student (student_id, name, email) VALUES (1, 'John Doe', 'johndoe@example.com');
INSERT INTO student (student_id, name, email) VALUES (2, 'Jane Doe', 'janedoe@example.com');
INSERT INTO notes (note_id, student_id, subject, grade) VALUES (1, 1, 'History', 89);
INSERT INTO notes (note_id, student_id, subject, grade) VALUES (3, 2, 'math', 90);