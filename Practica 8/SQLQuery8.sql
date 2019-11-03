--Vistas
CREATE VIEW [Vista_Titulo] AS
SELECT l.Titulo, f.IdFisico
FROM Libros l inner join LibrosFis f
ON l.IdLibro = f.IdLibro
select * from Vista_Titulo

CREATE VIEW [Vista_TransicionesLibro] AS
SELECT f.IdFisico, h.idTransicion
FROM LibrosFis f inner join Historial h
ON f.IdFisico = h.IdFisico
select * from Vista_TransicionesLibro

CREATE VIEW [Vista_NombreTransicion] AS
SELECT h.IdTransicion, t.NombreTr
FROM Historial h inner join Transiciones t
ON h.IdTransicion = t.IdTransicion
select * from Vista_NombreTransicion

CREATE VIEW [Vista_Donador] AS
SELECT d.IdLibro, n.NombreDon
FROM Donaciones d inner join Donadores n
ON d.IdDona = n.IdDona
select * from Vista_Donador

CREATE VIEW [Vista_Estado] AS
SELECT l.IdLibro, e.IdEstado
FROM LibrosFis l inner join Estado e
ON l.IdFisico = e.IdFisico
select * from Vista_Estado

--Select Into
SELECT NombreUsu, ApellidoUsu, ApellidoUsu2 
INTO DatosUsuarios
FROM Usuarios
WHERE IdUsuario < 10
select * from DatosUsuarios

--Subconsulta
SELECT Titulo, NombreAutor
FROM Libros
WHERE NombreAutor = (SELECT NombreAutor
FROM Libros
WHERE IdLibro = 2)

--Subconsulta empleando sentencia With
WITH Prestamos_empleado AS (
SELECT IdPrestamo, IdEmpleado as 'Presta'
FROM Prestamos
GROUP BY IdEmpleado, IdPrestamo
HAVING IdEmpleado = '2'
)
select * from Prestamos_empleado