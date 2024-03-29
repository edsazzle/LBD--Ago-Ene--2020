USE [Biblio]
GO
ALTER TABLE [dbo].[Salidas] DROP CONSTRAINT [LFF_Fisico]
GO
ALTER TABLE [dbo].[Salidas] DROP CONSTRAINT [LFF_Empleado]
GO
ALTER TABLE [dbo].[Regresos] DROP CONSTRAINT [LFFF_Fisico]
GO
ALTER TABLE [dbo].[Regresos] DROP CONSTRAINT [LFFF_Empleado]
GO
ALTER TABLE [dbo].[Prestamos] DROP CONSTRAINT [LFFFF_Fisico]
GO
ALTER TABLE [dbo].[Prestamos] DROP CONSTRAINT [LFF_Libro]
GO
ALTER TABLE [dbo].[Prestamos] DROP CONSTRAINT [LF_Usuario]
GO
ALTER TABLE [dbo].[Prestamos] DROP CONSTRAINT [LF_Empleado]
GO
ALTER TABLE [dbo].[LibrosFis] DROP CONSTRAINT [FK_Libro]
GO
ALTER TABLE [dbo].[Historial] DROP CONSTRAINT [FK_Transicion]
GO
ALTER TABLE [dbo].[Historial] DROP CONSTRAINT [FK_Fisico]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [LF_Transicion]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [LF_Fisico]
GO
ALTER TABLE [dbo].[Donaciones] DROP CONSTRAINT [LF_Libro]
GO
ALTER TABLE [dbo].[Donaciones] DROP CONSTRAINT [LF_Dona]
GO
/****** Object:  Index [INDX_Usuario_NombreCompletoUsu]    Script Date: 05/10/2019 1:38:10 ******/
DROP INDEX [INDX_Usuario_NombreCompletoUsu] ON [dbo].[Usuarios]
GO
/****** Object:  Index [INDX_Empleado_NombreCompletoEmp]    Script Date: 05/10/2019 1:38:11 ******/
DROP INDEX [INDX_Empleado_NombreCompletoEmp] ON [dbo].[Empleados]
GO
/****** Object:  Index [INDX_Donador_NombreCompletoDon]    Script Date: 05/10/2019 1:38:11 ******/
DROP INDEX [INDX_Donador_NombreCompletoDon] ON [dbo].[Donadores]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[Transiciones]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Transiciones]
GO
/****** Object:  Table [dbo].[Salidas]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Salidas]
GO
/****** Object:  Table [dbo].[Regresos]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Regresos]
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Prestamos]
GO
/****** Object:  Table [dbo].[LibrosFis]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[LibrosFis]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Libros]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Historial]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Donadores]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Donadores]
GO
/****** Object:  Table [dbo].[Donaciones]    Script Date: 05/10/2019 1:38:11 ******/
DROP TABLE [dbo].[Donaciones]
GO
USE [master]
GO
/****** Object:  Database [Biblio]    Script Date: 05/10/2019 1:38:11 ******/
DROP DATABASE [Biblio]
GO
/****** Object:  Database [Biblio]    Script Date: 05/10/2019 1:38:11 ******/
CREATE DATABASE [Biblio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biblio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Biblio.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Biblio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Biblio_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Biblio] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblio] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblio] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Biblio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Biblio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Biblio] SET  MULTI_USER 
GO
ALTER DATABASE [Biblio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblio] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Biblio] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Biblio]
GO
/****** Object:  Table [dbo].[Donaciones]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donaciones](
	[IdDonacion] [int] NOT NULL,
	[IdDona] [int] NOT NULL,
	[IdLibro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDonacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Donadores]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Donadores](
	[IdDona] [int] NOT NULL,
	[NombreDon] [varchar](255) NOT NULL,
	[ApellidoDon] [varchar](255) NOT NULL,
	[ApellidoDon2] [varchar](255) NULL,
	[NombreCompDon]  AS (((([NombreDon]+' ')+[ApellidoDon])+' ')+[ApellidoDon2]),
PRIMARY KEY CLUSTERED 
(
	[IdDona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] NOT NULL,
	[NombreEmp] [varchar](255) NOT NULL,
	[ApellidoEmp] [varchar](255) NOT NULL,
	[ApellidoEmp2] [varchar](255) NOT NULL,
	[DireccionEmp] [varchar](255) NOT NULL,
	[EmailEmp] [varchar](255) NOT NULL,
	[NombreCompEmp]  AS (((([NombreEmp]+' ')+[ApellidoEmp])+' ')+[ApellidoEmp2]),
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] NOT NULL,
	[IdFisico] [int] NOT NULL,
	[IdTransicion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Historial]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[IdHistorial] [int] NOT NULL,
	[IdFisico] [int] NOT NULL,
	[IdTransicion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Libros]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libros](
	[IdLibro] [int] NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[NombreAutor] [varchar](255) NOT NULL,
	[AñoPubli] [tinyint] NOT NULL,
	[Editorial] [varchar](255) NOT NULL,
	[FichaBiblio]  AS (((((([Titulo]+' ')+[NombreAutor])+' ')+[AñoPubli])+' ')+[Editorial]),
PRIMARY KEY CLUSTERED 
(
	[IdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LibrosFis]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LibrosFis](
	[IdFisico] [int] NOT NULL,
	[IdLibro] [int] NOT NULL,
	[Librero] [tinyint] NULL,
	[Fila] [varchar](1) NULL,
	[Seccion] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFisico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamos](
	[IdPrestamo] [int] NOT NULL,
	[IdFisico] [int] NOT NULL,
	[IdLibro] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[FechaSalida] [date] NOT NULL,
	[FechaRegreso] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regresos]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regresos](
	[IdRegreso] [int] NOT NULL,
	[IdFisico] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRegreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salidas]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salidas](
	[IdSalida] [int] NOT NULL,
	[IdFisico] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transiciones]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transiciones](
	[IdTransicion] [int] NOT NULL,
	[Disponible] [int] NOT NULL,
	[Prestado] [int] NOT NULL,
	[Extraviado] [int] NOT NULL,
	[Dañado] [int] NOT NULL,
	[Regrasado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTransicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 05/10/2019 1:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] NOT NULL,
	[NombreUsu] [varchar](255) NOT NULL,
	[ApellidoUsu] [varchar](255) NOT NULL,
	[ApellidoUsu2] [varchar](255) NOT NULL,
	[Direccion] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[NombreCompUsu]  AS (((([NombreUsu]+' ')+[ApellidoUsu])+' ')+[ApellidoUsu2]),
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Donador_NombreCompletoDon]    Script Date: 05/10/2019 1:38:13 ******/
CREATE NONCLUSTERED INDEX [INDX_Donador_NombreCompletoDon] ON [dbo].[Donadores]
(
	[NombreCompDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Empleado_NombreCompletoEmp]    Script Date: 05/10/2019 1:38:13 ******/
CREATE NONCLUSTERED INDEX [INDX_Empleado_NombreCompletoEmp] ON [dbo].[Empleados]
(
	[NombreCompEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Usuario_NombreCompletoUsu]    Script Date: 05/10/2019 1:38:13 ******/
CREATE NONCLUSTERED INDEX [INDX_Usuario_NombreCompletoUsu] ON [dbo].[Usuarios]
(
	[NombreCompUsu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Donaciones]  WITH CHECK ADD  CONSTRAINT [LF_Dona] FOREIGN KEY([IdDona])
REFERENCES [dbo].[Donadores] ([IdDona])
GO
ALTER TABLE [dbo].[Donaciones] CHECK CONSTRAINT [LF_Dona]
GO
ALTER TABLE [dbo].[Donaciones]  WITH CHECK ADD  CONSTRAINT [LF_Libro] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Libros] ([IdLibro])
GO
ALTER TABLE [dbo].[Donaciones] CHECK CONSTRAINT [LF_Libro]
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [LF_Fisico] FOREIGN KEY([IdFisico])
REFERENCES [dbo].[LibrosFis] ([IdFisico])
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [LF_Fisico]
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [LF_Transicion] FOREIGN KEY([IdTransicion])
REFERENCES [dbo].[Transiciones] ([IdTransicion])
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [LF_Transicion]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [FK_Fisico] FOREIGN KEY([IdFisico])
REFERENCES [dbo].[LibrosFis] ([IdFisico])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [FK_Fisico]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [FK_Transicion] FOREIGN KEY([IdTransicion])
REFERENCES [dbo].[Transiciones] ([IdTransicion])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [FK_Transicion]
GO
ALTER TABLE [dbo].[LibrosFis]  WITH CHECK ADD  CONSTRAINT [FK_Libro] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Libros] ([IdLibro])
GO
ALTER TABLE [dbo].[LibrosFis] CHECK CONSTRAINT [FK_Libro]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [LF_Empleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [LF_Empleado]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [LF_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [LF_Usuario]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [LFF_Libro] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Libros] ([IdLibro])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [LFF_Libro]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [LFFFF_Fisico] FOREIGN KEY([IdFisico])
REFERENCES [dbo].[LibrosFis] ([IdFisico])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [LFFFF_Fisico]
GO
ALTER TABLE [dbo].[Regresos]  WITH CHECK ADD  CONSTRAINT [LFFF_Empleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Regresos] CHECK CONSTRAINT [LFFF_Empleado]
GO
ALTER TABLE [dbo].[Regresos]  WITH CHECK ADD  CONSTRAINT [LFFF_Fisico] FOREIGN KEY([IdFisico])
REFERENCES [dbo].[LibrosFis] ([IdFisico])
GO
ALTER TABLE [dbo].[Regresos] CHECK CONSTRAINT [LFFF_Fisico]
GO
ALTER TABLE [dbo].[Salidas]  WITH CHECK ADD  CONSTRAINT [LFF_Empleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Salidas] CHECK CONSTRAINT [LFF_Empleado]
GO
ALTER TABLE [dbo].[Salidas]  WITH CHECK ADD  CONSTRAINT [LFF_Fisico] FOREIGN KEY([IdFisico])
REFERENCES [dbo].[LibrosFis] ([IdFisico])
GO
ALTER TABLE [dbo].[Salidas] CHECK CONSTRAINT [LFF_Fisico]
GO
USE [master]
GO
ALTER DATABASE [Biblio] SET  READ_WRITE 
GO
