SELECT e.id_estudiante, e.nombre AS Estudiante,
       c.nombre_curso AS Curso,
       p.nombre_profesor AS Profesor
FROM Estudiantes e
JOIN Cursos c ON e.id_curso = c.id_curso
JOIN Profesores p ON c.id_profesor = p.id_profesor;
