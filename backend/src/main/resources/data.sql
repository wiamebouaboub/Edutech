-- Initialisation des tables  

INSERT INTO Matiere(matiere_intitule) VALUES
    ('Mathematiques'),
   ('Francais'),
  ('Decouverte du Monde');

INSERT INTO Chapitre(chapitre_intitule, matiere_matiere_id) VALUES
('Calcul', SELECT matiere_id FROM Matiere WHERE UPPER(matiere_intitule)='MATHEMATIQUES');

INSERT INTO Cours(cours_intitule, chapitre_chapitre_id) VALUES
('Multiplications', SELECT chapitre_id FROM Chapitre WHERE UPPER(chapitre_intitule)='CALCUL');

INSERT INTO Memory(memory_intitule, coursmemory_cours_id) VALUES
('Jeu du Memory des Multiplications', SELECT cours_id FROM Cours WHERE UPPER(cours_intitule)='MULTIPLICATIONS');

INSERT INTO PartieMemory(partiememory_valeur, memory_memory_id) VALUES
(10, SELECT memory_id FROM Memory WHERE UPPER(memory_intitule)=UPPER('Jeu du Memory des Multiplications'));

INSERT INTO TableMemory(tablememory_intitule) VALUES
('Table de 1'), ('Table de 2'), ('Table de 3'), ('Table de 4'), ('Table de 5'), ('Table de 6'), ('Table de 7'), ('Table de 8'), ('Table de 9'), ('Table de 10');



INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('1x1','1', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x2','2', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x3','3', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x4','4', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x5','5', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x6','6', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x7','7', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x8','8', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x9','9', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1')),
('1x10','10', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));

INSERT INTO User (email,first_name,last_name,password) VALUES
('maitre@edutech.fr','maitre','maitre','maitre');

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('2x1','2', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x2','4', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x3','6', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x4','8', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x5','10', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x6','12', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x7','14', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x8','16', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x9','18', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2')),
('2x10','20', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 2'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('3x1','3', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x2','6', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x3','9', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x4','12', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x5','15', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x6','18', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x7','21', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x8','24', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x9','27', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3')),
('3x10','30', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 3'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('4x1','4', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x2','8', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x3','12', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x4','16', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x5','20', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x6','24', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x7','28', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x8','32', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x9','36', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4')),
('4x10','40', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 4'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('5x1','5', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x2','10', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x3','15', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x4','20', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x5','25', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x6','30', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x7','35', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x8','40', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x9','45', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5')),
('5x10','50', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 5'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('6x1','6', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x2','12', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x3','18', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x4','24', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x5','30', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x6','36', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x7','42', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x8','48', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x9','54', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6')),
('6x10','60', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 6'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('7x1','7', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x2','14', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x3','21', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x4','28', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x5','35', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x6','42', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x7','49', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x8','56', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x9','63', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7')),
('7x10','70', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 7'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('8x1','8', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x2','16', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x3','24', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x4','32', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x5','40', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x6','48', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x7','56', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x8','64', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x9','72', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8')),
('8x10','80', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 8'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('9x1','9', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x2','18', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x3','27', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x4','36', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x5','45', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x6','54', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x7','63', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x8','72', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x9','81', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9')),
('9x10','90', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 9'));

INSERT INTO PaireMemory(question, reponse, tablememory_tablememory_id) VALUES
('10x1','10', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x2','20', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x3','30', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x4','40', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x5','50', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x6','60', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x7','70', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x8','80', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x9','90', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10')),
('10x10','100', SELECT TABLEMEMORY_ID FROM TABLEMEMORY WHERE UPPER(tableMemory_intitule) =UPPER('Table de 10'));


INSERT INTO Role (name) VALUES
('maitre'),
('eleve');

INSERT INTO USER_ROLE (id_user,id_role) VALUES
(SELECT USER_ID FROM USER WHERE UPPER(first_name)= UPPER('maitre'),SELECT ROLE_ID FROM ROLE WHERE UPPER(name)= UPPER('maitre'));

