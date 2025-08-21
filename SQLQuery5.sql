CREATE DATABASE UniversidadDB;
GO

USE UniversidadDB;
GO

CREATE TABLE Profesores (
    id_profesor INT PRIMARY KEY,
    nombre_profesor VARCHAR(100) NOT NULL
);

CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    id_profesor INT NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor)
);

CREATE TABLE Estudiantes (
    id_estudiante INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);


INSERT INTO Profesores (id_profesor, nombre_profesor) VALUES
(1, 'Profesor1'),
(2, 'Profesor2'),
(3, 'Profesor3'),
(4, 'Profesor4'),
(5, 'Profesor5');


INSERT INTO Cursos (id_curso, nombre_curso, id_profesor) VALUES
(101, 'Curso1', 1),
(102, 'Curso2', 2),
(103, 'Curso3', 3),
(104, 'Curso4', 4),
(105, 'Curso5', 5);


INSERT INTO Estudiantes (id_estudiante, nombre, id_curso) VALUES
(1001, 'Estudiante1', 101),
(1002, 'Estudiante2', 102),
(1003, 'Estudiante3', 103),
(1004, 'Estudiante4', 104),
(1005, 'Estudiante5', 105);
