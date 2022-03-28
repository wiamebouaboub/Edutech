-- Initialisation des tables  

INSERT INTO Matiere(matiere_intitule) VALUES
    ('Mathematiques'),
   ('Francais'),
  ('Decouverte du Monde');

--INSERT INTO Chapitre(chapitre_intitule, matiere_id) VALUES
--('Calcul', 1);

-- INSERT INTO Cours(cours_intitule, chapitre) VALUES
--     ('Multiplications', SELECT id FROM Chapitre WHERE UPPER(chapitre_intitule)='CALCUL');

-- INSERT INTO Memory(memory_intitule, cours) VALUES
--    ('Jeu du Memory des Multiplications', SELECT id FROM Cours WHERE UPPER(cours_intitule)='MULTIPLICATIONS');

-- INSERT INTO PartieMemory(partiememory_valeur, memory) VALUES
--     (10, SELECT id FROM Memory WHERE UPPER(memory_intitule)=UPPER('Jeu du Memory des Multiplications'));

-- INSERT INTO TableMemory(tablememory_intitule) VALUES
--     ('Table de 1');

-- INSERT INTO PaireMemory(pairememory_question, pairememory_reponse, tableMemory) VALUES
--     ('1x1','1', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x2','2', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x3','3', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x4','4', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x5','5', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x6','6', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x7','7', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x8','8', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x9','9', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
--     ('1x10','10', SELECT TableMemory WHERE UPPER(tableMemory_intitule) =UPPER('Table de 1'));
