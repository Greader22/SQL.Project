CREATE TABLE Departamenti (
    DepartamentiID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Emri_Departamentit VARCHAR2(50) NOT NULL
);

CREATE TABLE Student (
    StudentID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Emri VARCHAR2(50) NOT NULL,
    Mbiemri VARCHAR2(50) NOT NULL,
    DepartamentiID NUMBER NOT NULL,
    FOREIGN KEY (DepartamentiID) REFERENCES Departamenti(DepartamentiID)
);

CREATE TABLE Lenda (
    LendaID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Emri_Lendes VARCHAR2(50) NOT NULL
);

CREATE TABLE Notat (
    NotaID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    StudentID NUMBER NOT NULL,
    LendaID NUMBER NOT NULL,
    Nota NUMBER CHECK (Nota BETWEEN 4 AND 10),
    Data_Vleresimi DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (LendaID) REFERENCES Lenda(LendaID)
);

ALTER TABLE Notat ADD CONSTRAINT CheckNotaRange CHECK (Nota BETWEEN 4 AND 10);

CREATE SEQUENCE StudentID_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE NotaID_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE Profesori (
    ProfesoriID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Emri VARCHAR2(50) NOT NULL,
    Mbiemri VARCHAR2(50) NOT NULL,
    DepartamentiID NUMBER NOT NULL,
    FOREIGN KEY (DepartamentiID) REFERENCES Departamenti(DepartamentiID)
);


-- Shtimi i tabelave
 
-- Tabela Departamenti
 
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Elektronike');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Informatike');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Telekomunikacioni');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Elektrike');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Mekanike');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Mekatronike');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Ndertimi');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Arkitektura');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Hidroteknike');
INSERT INTO Departamenti (Emri_Departamentit) VALUES ('Inxhinieri Miniere');
 

INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Greader', 'Xhetani', 1);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Erigert', 'Zaimi', 2);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Edion', 'Pelari', 3);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Kristi', 'Biba', 1);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Geri', 'Meko', 2);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Frans', 'Tumani', 3);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Mario', 'Muco', 1);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Haki', 'hoxha', 2);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Xhoni', 'Tinaj', 3);
INSERT INTO Student (Emri, Mbiemri, DepartamentiID) VALUES ('Sherlock', 'Holmes', 1);
 
 
-- Tabela Lenda
 
INSERT INTO Lenda (Emri_Lendes) VALUES ('Elektroteknika');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Analize Numerike');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Bazat e Telekomunikacionit');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Teori sinjali');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Arkitektura e kompjuterave');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Komunikim Inxhinierik');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Elementet e Elektronikes');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Fizika');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Probabiliteti');
INSERT INTO Lenda (Emri_Lendes) VALUES ('Sensoret');
 

-- Tabela Notat
 
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (1, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (1, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (1, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (1, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (1, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (2, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (2, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (2, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (2, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (2, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (3, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (3, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (3, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (3, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (3, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (4, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (4, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (4, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (4, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (4, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (5, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (5, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (5, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (5, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (5, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (6, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (6, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (6, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (6, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (6, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (7, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (7, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (7, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (7, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (7, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (8, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (8, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (8, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (8, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (8, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (9, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (9, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (9, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (9, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (9, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (10, 1, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (10, 2, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (10, 3, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (10, 4, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
INSERT INTO Notat (StudentID, LendaID, Nota) VALUES (10, 5, FLOOR(DBMS_RANDOM.VALUE(4, 11)));
 
 

--Tabela Profesori
 
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorA', 'MbiemriA', 1);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorB', 'MbiemriB', 2);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorC', 'MbiemriC', 3);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorD', 'MbiemriD', 1);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorE', 'MbiemriE', 2);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorF', 'MbiemriF', 3);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorG', 'MbiemriG', 1);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorH', 'MbiemriH', 2);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorL', 'MbiemriL', 3);
INSERT INTO Profesori (Emri, Mbiemri, DepartamentiID) VALUES ('ProfesorM', 'MbiemriM', 1);
 

-- Studentet dhe departamentet perkatese
 
SELECT Student.Emri, Student.Mbiemri, Departamenti.Emri_Departamentit
FROM Student
JOIN Departamenti ON Student.DepartamentiID = Departamenti.DepartamentiID;

-- Listo studentet me me shume nota siper 8
 
SELECT Student.StudentID, Student.Emri, Student.Mbiemri
FROM Student
JOIN Notat ON Student.StudentID = Notat.StudentID
WHERE Notat.Nota > 8
GROUP BY Student.StudentID, Student.Emri, Student.Mbiemri
HAVING COUNT(Notat.Nota) >= 2;
 
-- Mesatarja e cdo lende mbi 7
 
SELECT Lenda.Emri_Lendes, AVG(Notat.Nota) AS Mesatarja
FROM Notat
JOIN Lenda ON Notat.LendaID = Lenda.LendaID
GROUP BY Lenda.LendaID, Lenda.Emri_Lendes
HAVING AVG(Notat.Nota) > 7;

-- Studentet dhe notat per cdo lende

SELECT Student.Emri AS Emri_Studentit, Lenda.Emri_Lendes AS Lenda, Notat.Nota AS Nota
FROM Student
JOIN Notat ON Student.StudentID = Notat.StudentID
JOIN Lenda ON Notat.LendaID = Lenda.LendaID;

-- Rankimi i studenteve sipas mesatares (create view)

CREATE VIEW Rankimi AS
SELECT StudentID, AVG(Nota) AS Mesatarja, RANK() OVER (ORDER BY AVG(Nota) DESC) AS Rendi
FROM Notat
GROUP BY StudentID;

-- Mesatarja sipas Departamentit per dy muajt e fundit (create view)
 
UPDATE Notat
SET Data_Vleresimi = TO_DATE('2023-01-01', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, SYSDATE - TO_DATE('2023-01-01', 'YYYY-MM-DD'));
 
 
CREATE VIEW MesatarjaSipasDepartmentit AS
SELECT D.DepartamentiID, AVG(N.Nota) AS NotaMesatare
FROM Departamenti D
JOIN Student S ON D.DepartamentiID = S.DepartamentiID
JOIN Notat N ON S.StudentID = N.StudentID
WHERE N.Data_Vleresimi > SYSDATE - INTERVAL '2' MONTH
GROUP BY D.DepartamentiID;

DROP TABLE Notat;
DROP TABLE Lenda;
DROP TABLE Profesori;
DROP TABLE Student;
DROP TABLE Departamenti;
DROP SEQUENCE StudentID_seq;
DROP SEQUENCE NotaID_seq;

SELECT * FROM Departamenti;
SELECT * FROM Lenda;
SELECT * FROM Notat;
SELECT * FROM Profesori;
SELECT * FROM Student;
SELECT * FROM MesatarjaSipasDepartmentit;
SELECT * FROM Rankimi;

