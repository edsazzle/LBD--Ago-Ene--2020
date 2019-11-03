use Biblio

--Consultas con Join

SELECT l.Titulo, i.IdFisico
FROM Libros l inner join LibrosFis i
ON l.IdLibro = i.IdLibro
ORDER BY l.Titulo

SELECT i.IdFisico, t.IdTransicion
FROM LibrosFis i inner join Historial t
ON i.IdFisico = t.IdFisico
ORDER BY t.IdTransicion

SELECT t.IdTransicion, n.NombreTr
FROM Historial t inner join Transiciones n
ON t.IdTransicion = n.IdTransicion
ORDER BY t.IdTransicion

SELECT d.IdLibro, n.NombreDon
FROM Donaciones d inner join Donadores n
ON d.IdDona = n.IdDona
ORDER BY NombreDon

SELECT l.IdLibro, e.IdEstado
FROM LibrosFis l inner join Estado e
ON	l.IdFisico = e.IdFisico
ORDER BY e.IdFisico

SELECT e.NombreEmp, m.EmailEmp
FROM Empleados e inner join Empleados m
ON e.IdEmpleado = m.IdEmpleado
ORDER BY e.NombreEmp

SELECT f.IdFisico, s.Seccion
FROM LibrosFis f inner join LibrosFis s
ON f.IdFisico = s.IdFisico
ORDER BY s.Seccion

SELECT l.IdLibro, n.IdUsuario
FROM Prestamos l inner join Prestamos n
ON l.IdPrestamo = n.IdPrestamo
ORDER BY l.IdLibro

SELECT i.IdUsuario, n.NombreUsu
FROM Usuarios i inner join Usuarios n
ON i.IdUsuario = n.IdUsuario
ORDER BY n.NombreUsu

SELECT i.IdDona, n.NombreCompDon
FROM Donadores i inner join Donadores n
ON i.IdDona = n.IdDona
ORDER BY n.NombreCompDon

--Consultas avanzadas

SELECT l.IdFisico, e.Editorial
FROM LibrosFis l inner join Libros e
ON l.IdLibro = e.IdLibro
GROUP BY l.IdFisico, e.Editorial
HAVING e.Editorial = 'Salamandra'

SELECT i.IdDona, n.NombreCompDon
FROM Donaciones i inner join Donadores n
ON i.IdDona = n.IdDona
GROUP BY n.NombreCompDon, i.IdDona
HAVING i.IdDona > 2

SELECT p.IdLibro, u.NombreUsu
FROM Prestamos p inner join Usuarios u
ON p.IdUsuario = u.IdUsuario
GROUP BY u.NombreUsu, p.IdLibro
HAVING p.IdLibro >6

SELECT c.NombreCompEmp, d.DireccionEmp
FROM Empleados c inner join Empleados d
ON c.IdEmpleado = d.IdEmpleado
GROUP BY c.NombreCompEmp, d.DireccionEmp
HAVING c.NombreCompEmp = 'Jorge Leyva Mota'

SELECT i.IdPrestamo, n.NombreEmp
FROM Prestamos i inner join Empleados n
ON I.IdEmpleado = n.IdEmpleado
GROUP BY n.NombreEmp, i.IdPrestamo
HAVING n.NombreEmp = 'Rogelio'

SELECT h.IdHistorial, t.NombreTr
FROM Historial h inner join Transiciones t
ON h.IdTransicion = t.IdTransicion
GROUP BY t.NombreTr, h.IdHistorial
HAVING h.IdHistorial > 5

SELECT e.IdEmpleado, e.NombreEmp, s.IdSalida
FROM Empleados e inner join Salidas s
ON e.IdEmpleado = s.IdEmpleado
GROUP BY e.IdEmpleado, e.NombreEmp, s.IdSalida
HAVING e.IdEmpleado > 1

SELECT u.IdUsuario, u.NombreUsu, p.IdPrestamo
FROM Usuarios u inner join Prestamos p
ON u.IdUsuario = p.IdUsuario
GROUP BY u.IdUsuario, u.NombreUsu, p.IdPrestamo
HAVING p.IdPrestamo > 3

SELECT f.idFisico, n.Titulo
FROM LibrosFis f inner join Libros n
ON f.IdLibro = n.IdLibro
GROUP BY n.Titulo, f.IdFisico
HAVING f.IdFisico > 5

SELECT r.IdRegreso, e.NombreEmp
FROM Regresos r inner join Empleados e
ON r.IdEmpleado = e.IdEmpleado
GROUP BY e.NombreEmp, r.IdRegreso
HAVING r.IdRegreso = 6