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
/****** Object:  Index [INDX_Usuario_NombreCompletoUsu]    Script Date: 24/10/2019 14:46:29 ******/
DROP INDEX [INDX_Usuario_NombreCompletoUsu] ON [dbo].[Usuarios]
GO
/****** Object:  Index [INDX_Empleado_NombreCompletoEmp]    Script Date: 24/10/2019 14:46:29 ******/
DROP INDEX [INDX_Empleado_NombreCompletoEmp] ON [dbo].[Empleados]
GO
/****** Object:  Index [INDX_Donador_NombreCompletoDon]    Script Date: 24/10/2019 14:46:29 ******/
DROP INDEX [INDX_Donador_NombreCompletoDon] ON [dbo].[Donadores]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[Transiciones]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Transiciones]
GO
/****** Object:  Table [dbo].[Salidas]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Salidas]
GO
/****** Object:  Table [dbo].[Regresos]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Regresos]
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Prestamos]
GO
/****** Object:  Table [dbo].[LibrosFis]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[LibrosFis]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Libros]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Historial]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Donadores]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Donadores]
GO
/****** Object:  Table [dbo].[Donaciones]    Script Date: 24/10/2019 14:46:29 ******/
DROP TABLE [dbo].[Donaciones]
GO
USE [master]
GO
/****** Object:  Database [Biblio]    Script Date: 24/10/2019 14:46:29 ******/
DROP DATABASE [Biblio]
GO
/****** Object:  Database [Biblio]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Donaciones]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Donadores]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Historial]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Libros]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[LibrosFis]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Prestamos]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Regresos]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Salidas]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Transiciones]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 24/10/2019 14:46:29 ******/
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
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (1, N'RAQUEL', N'AVILA ', N'MASJUAN')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (2, N'ENRIC', N'PARRAMON ', N'FLORES')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (3, N'MARTA', N'AGUILAR ', N'RAMOS')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (4, N'CARLA', N'AYALA ', N'ALSINA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (5, N'MARIA NOELIA', N'ALVAREZ ', N'TROYANO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (6, N'CRISTINA', N'ALINS ', N'GONZÁLEZ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (7, N'CARLOS', N'ACUÑA ', N'TORT')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (8, N'DAVID', N'ALGUÉ ', N'TRANCHO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (9, N'CRISTIAN', N'BADIA ', N'CASTILLO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (10, N'JULIO ALBERTO', N'BENITEZ ', N'FLORES')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (11, N'SERGI', N'TORRUELLA ', N'GARCIA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (12, N'ALEIX', N'ALBERICH ', N'GARCIA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (13, N'VERÒNICA', N'ARMENCOT ', N'PUIG')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (14, N'MARIONA', N'ALIGUÉ ', N'RIVERA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (15, N'MARC', N'BARRIGA ', N'RIU')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (16, N'GEMMA', N'PORTELLA ', N'GISPETS')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (17, N'RICARD', N'AGUILERA ', N'BAENA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (18, N'JUAN', N'RODRIGUEZ ', N'GARCÍA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (19, N'MARTA', N'AGUILAR ', N'SUNYÉ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (20, N'NATÀLIA', N'BARRIGA ', N'TARDÀ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (21, N'MARTA', N'BARCONS ', N'LARA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (22, N'LAURA', N'AGUILERA ', N'TATJÉ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (23, N'JOAN', N'ALEU ', N'PRAT')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (24, N'ALEXIA', N'VALLÉS ', N'GIRVENT')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (25, N'FERRAN', N'MOLINA ', N'GARRIDO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (26, N'CRISTINA', N'ARISSA ', N'HERMOSO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (27, N'JOSÉ ANTONIO', N'BARALDÉS ', N'PARDO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (28, N'JORDI', N'SUAREZ ', N'GARZÓN')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (29, N'BEGONYA', N'ARPA ', N'MORENO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (30, N'INGRID', N'ALOY ', N'FARRANDO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (31, N'MIQUEL', N'LUQUE ', N'GARRIGASAIT')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (32, N'AGUSTÍ', N'RIDÓ ', N'GÓMEZ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (33, N'ANTONI', N'SANTAMARIA ', N'FLOTATS')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (34, N'JOAN', N'HERMS ', N'GÓMEZ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (35, N'MÒNICA', N'ARTIGAS ', N'MATURANO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (36, N'GERARD', N'AGUILAR ', N'MASANA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (37, N'GEMMA', N'ALTIMIRAS ', N'SERAROLS')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (38, N'MARIA', N'TORRESCASANA ', N'GARCIA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (39, N'ORIOL', N'ARIZA ', N'PUIGBÓ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (40, N'VIRGINIA', N'ALVAREZ ', N'ARMENTEROS')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (41, N'DAMIÀ', N'BARALDÉS ', N'TARRAGÓ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (42, N'VALENTÍ', N'GARCIA ', N'GARCÍA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (43, N'AINA', N'AROCA ', N'GÓMEZ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (44, N'DAVID', N'ALONSO ', N'RODRIGUEZ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (45, N'GERARD', N'CANO ', N'GÓMEZ')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (46, N'MARTA', N'ALCAIDE ', N'MOLINA')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (47, N'MIREIA', N'AGUILERA ', N'PRAT')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (48, N'ELOI', N'ALAPONT ', N'ICART')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (49, N'ANNA', N'RIVERO ', N'FLORIDO')
INSERT [dbo].[Donadores] ([IdDona], [NombreDon], [ApellidoDon], [ApellidoDon2]) VALUES (50, N'ALBA', N'AVILA ', N'MASJUAN')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (1, N'Gloria', N'AROCAS ', N'PASADAS', N'PADRÓ , 109', N'africa@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (2, N'QUERALT', N'Sandoval', N'GÓMEZ', N'CASA CORDELLAS , ', N'agata@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (3, N'JOAN', N'AYALA ', N'Rodriguez', N'DOCTOR FLEMING , 11', N'yeye@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (4, N'JOAN', N'BAEZ ', N'TEJADO', N'Via Lactea', N'albatros@wandoo.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (5, N'MARC', N'BASTARDES ', N'SOTO', N'CARRIÓ , 12, 5È A', N'joncenamacarrones@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (6, N'JOSEP', N'ANGUERA ', N'VILAFRANCA', N'PIRINEUS , 10', N'alien@intercom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (7, N'ESTHER', N'PASCUAL ', N'ALOY', N'JACINT VERDAGUER , 43', N'amores@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (8, N'LAURA', N'VALLÉS ', N'GIRVENT', N'NOU , 9, 2N.', N'anabel@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (9, N'RAQUEL', N'RAYA ', N'GARCIA', N'JACINT VERDAGUER , 52, 3R, 1A.', N'antiga@minorisa.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (10, N'JOAN', N'ANDREU ', N'CRUZ', N'JOAN MIRÓ , 10', N'ballador@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (11, N'MARIA ISABEL', N'BARALDÉS ', N'COMAS', N'JAUME GALOBART , 12', N'balladora@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (12, N'ADRIÀ', N'BERENGUERAS ', N'CULLERÉS', N'PINTOR SERT , 12, 1R., 1A.', N'barbilla@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (13, N'GERARD', N'LÓPEZ', N'GARCIA', N'BELLAVISTA , 30', N'besugo@minorisa.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (14, N'ELIOT', N'ARNAU ', N'MORENO', N'MONTURIOL , 10, 1R.', N'bogart@terra.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (15, N'JORDI', N'RAYA ', N'GAVILAN', N'JACINT VERDAGUER , 52, 2N., 4A.', N'bond@terra.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (16, N'LLUÍS', N'ZAMBUDIO ', N'FIGULS', N'CASA NOVA , ', N'heyhey@terra.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (17, N'LAURA', N'BIDAULT ', N'CULLERÉS', N'DE LA CAÇA , 12, 1R., C', N'cabeza larga@cataloniamail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (18, N'JORDI', N'BIOSCA ', N'FONTANET', N'PINTOR SERT , 12, 2N., 1A.', N'pini@rock.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (19, N'DOUNYA', N'ZAFRA ', N'FIGULS', N'CASA SARA , ', N'sandoval@radio.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (20, N'JULIO', N'ALEU ', N'ICART', N'ARTÈS , 1, 1R, 1A.', N'cangur@intercom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (21, N'ANDREU', N'BADIA ', N'TORNÉ', N'GENERAL PRIM , 11, 2N.', N'cangurrrrr@gmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (22, N'RAMON', N'MORALES ', N'GESE', N'CAU DE LA GUINEU , 4', N'rodrigo@lewinsky.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (23, N'DAVID-JESE', N'BLANCO ', N'FONTANET', N'JOAN SANMARTÍ , 12, 2N., 2A.', N'caparranas@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (24, N'ARAN', N'ALVAREZ ', N'FERNÁNDEZ', N'PROL. PADRÓ , 1, 3R. 1A.', N'alcaparra@dragon.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (25, N'GEMMA', N'GARCIA ', N'ALMOGUERA', N'SALLENT , 22, 2N.', N'marisol@gmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (26, N'IVAN', N'LIBORI ', N'FIGUERAS', N'JOAN MIRÓ , 3', N'carretero@intercom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (27, N'DAVID', N'BIDAULT ', N'PUEYO', N'LLUÍS CASTELLS , 12, 2N.', N'cela@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (28, N'XAVIER', N'BENITEZ ', N'JOSE', N'SANT VALENTÍ , 12, 1R.', N'coco@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (29, N'MARIO', N'PASCUAL ', N'FLORES', N'ÀNGEL GUIMERÀ , 43, 2N', N'conejo@minorisa.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (30, N'JESUS', N'AYALA ', N'TORNÉ', N'JAUME GALOBART , 11', N'corcel@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (31, N'GEMMA', N'LISTAN ', N'FIGUERAS', N'AVINGUDA TRES , 3, 1R., 1A.', N'corral@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (32, N'SILVIA', N'RASERO ', N'GAVILAN', N'JACINT VERDAGUER , 52, 2N., 1A.', N'curie@minorisa.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (33, N'ALBERT', N'ARNALOT ', N'PUIG', N'DIPUTACIÓ , 10', N'dalí@wandoo.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (34, N'MARIA', N'MOLINER ', N'GARRIDO', N'VIC , 39, 1R., 2A.', N'sandwich@dragon.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (35, N'BERTA', N'GALOBART ', N'GARCIA', N'GERMAN DURAN , 21', N'dolça@cidet.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (36, N'BERTA', N'LÓPEZ ', N'GARRIGASSAIT', N'BELLAVISTA , 30', N'dorada@intercom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (37, N'MIREIA', N'SÁNCHEZ ', N'GÓMEZ', N'NOU , 7, 2N.', N'elisa@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (38, N'GEMMA', N'ALAVEDRA ', N'SUNYÉ', N'MANELIC , 1', N'encarna@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (39, N'MARIA ISABEL', N'ALIGUÉ ', N'BONVEHÍ', N'DE LA PESCA , 1, 1R., 1A.', N'entesa@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (40, N'TONI', N'MAS ', N'FRANCH', N'PIRINEUS , 34', N'adela@rock.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (41, N'ALEJANDRO', N'ALOY ', N'COMPTE', N'PROL. JACINT VERDAGUER , 1, 2N., 2A.', N'diego@dora.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (42, N'JOAN MARTÍ', N'ASENSIO ', N'VEGA', N'MALLORCA , 11', N'et@altecom.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (43, N'INGRID', N'BIDAULT ', N'PÉREZ', N'SANT BENET , 12, 2N.', N'finanzas@fintech.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (44, N'OLIVER', N'ALOY ', N'CODINACHS', N'PROL. PADRÓ , 1, 2N., 2A.', N'chologastelum@rock.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (45, N'SANDRA', N'ALTIMIRAS ', N'ARMENTEROS', N'ARTÈS , 1, 2N., 2A.', N'experta@wandoo.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (46, N'JORDI', N'BELMONTE ', N'SÁNCHEZ', N'JOAN XXIII , 12, 1R, 2A.', N'f5@wandoo.es')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (47, N'MARC', N'BAJONA ', N'GARCIA', N'BERTRAND I SERRA , 11, 3R.', N'tadamichisan@rock.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (48, N'JORDINA', N'AGUILAR ', N'RODRIGUEZ', N'LA SARDANA , 1', N'miguelgarza@gmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (49, N'MARIA JOSÉ', N'BARRIGA ', N'SOTO', N'GALILEU , 12', N'fina@hotmail.com')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsu], [ApellidoUsu], [ApellidoUsu2], [Direccion], [Email]) VALUES (50, N'Javier', N'Lopez', N'Escamilla', N'SANT VALENTÍ , 11', N'fuego@altecom.es')
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Donador_NombreCompletoDon]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Index [INDX_Empleado_NombreCompletoEmp]    Script Date: 24/10/2019 14:46:29 ******/
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
/****** Object:  Index [INDX_Usuario_NombreCompletoUsu]    Script Date: 24/10/2019 14:46:29 ******/
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
