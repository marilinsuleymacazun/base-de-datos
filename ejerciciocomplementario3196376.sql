
INSERT INTO Alumno VALUES
('MC129854','Mauricio Campos'),
('IP110943','Ignacio Perez'),
('MU127895','Mikel Urrutia'),
('CH132390','Carlos Hernandez'),
('HL139032','Herson Lopez')

INSERT INTO Inscripcion VALUES
('CD121515','AL01','C1-14'),
('CD121515','GE01','C1-14'),
('CD121515','HM02','C1-15'),
('GM119056','IP01','C2-14'),
('GM119056','RD02','C2-14'),
('HL130334','BD01','C1-15'),
('VN121415','BD01','C1-15'),
('VN121415','RD02','C1-15'),
('MC129854','AL01','C1-14'),
('MC129854','GE01','C1-14'),
('IP110943','GE01','C1-15'),
('IP110943','HM02','C1-15')


SELECT * INTO  MatteriaUV
FROM Materia
WHERE UV>=4


CREATE TABLE  Alumno2012
(
Carnet char(8) NOT NULL,
NombreCompleto varchar(50),
CONSTRAINT pk_alumno1 PRIMARY KEY (Carnet)
)

INSERT INTO  Alumno2012
SELECT Carnet, NombreCompleto
FROM Alumno
WHERE Carnet LIKE '%12%'


UPDATE Alumno SET NombreCompleto='Gricelda Marquez'
WHERE Carnet='GM119056'

UPDATE Alumno SET Carnet='GM119156'
WHERE NombreCompleto='Gricelda Marquez'

UPDATE Inscripcion SET Ciclo='C2-15'
WHERE Ciclo='C1-14'

UPDATE Materia SET Codigo='HM01'
WHERE Codigo='HM02'

UPDATE Materia SET Nombre='Humanistica I'
WHERE Codigo='HM01'

UPDATE Alumno SET NombreCompleto='Ignacio Pereira'
WHERE Carnet='IP110943'

DELETE FROM Alumno WHERE Carnet='IP110943'

DELETE FROM Alumno WHERE Carnet LIKE 'M%'

DELETE FROM MAteria WHERE Nombre='Introduccion a la Programacion'

DELETE FROM Alumno WHERE NombreCompleto='Oscar Hernandez'


DELETE FROM Inscripcion WHERE CodigoMateria='RD02' 
DELETE FROM Inscripcion WHERE Ciclo='C1-15'

SELECT * FROM	Inscripcion