
USE CursoBD; -- selecciona la base de datos
GO

CREATE TABLE Estudiantes (
    Id INT PRIMARY KEY IDENTITY(1,1), -- identificador único autoincremental
    Nombre NVARCHAR(100) NOT NULL,
    Edad INT CHECK (Edad > 0), -- restricción para que no pongan edad negativa
    Correo NVARCHAR(100) UNIQUE -- no se repiten correos
);
SELECT * FROM Estudiantes;