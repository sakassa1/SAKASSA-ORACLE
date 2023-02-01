select * from projet.student;
select * from projet.notes;
-- si on teste d'inserer comme suite on obtiendra une erreue de privileges insuffisants
INSERT INTO notes (note_id, student_id, subject, grade) VALUES (3, 2, 'math', 90);
INSERT INTO student (student_id, name, email) VALUES (1, 'John Doe', 'johndoe@example.com');
