select * from projet.student;
select * from projet.notes;
--  au niveau d'utilisateur (ADMIN)
--on va pas renconter de probleme car il possede toute les privileges
INSERT INTO notes (note_id, student_id, subject, grade) VALUES (3, 2, 'math', 90);
INSERT INTO student (student_id, name, email) VALUES (1, 'John Doe', 'johndoe@example.com');
