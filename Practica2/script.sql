USE [Biblioteca]
GO
/****** Object:  Index [INDX_Libro_Titulo]    Script Date: 14/09/2019 2:01:23 ******/
DROP INDEX [INDX_Libro_Titulo] ON [dbo].[Libros]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/09/2019 2:01:23 ******/
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[SalaDeLectura]    Script Date: 14/09/2019 2:01:23 ******/
DROP TABLE [dbo].[SalaDeLectura]
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 14/09/2019 2:01:23 ******/
DROP TABLE [dbo].[Prestamos]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 14/09/2019 2:01:23 ******/
DROP TABLE [dbo].[Libros]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/09/2019 2:01:23 ******/
DROP TABLE [dbo].[Empleados]
GO
USE [master]
GO
/****** Object:  Database [Biblioteca]    Script Date: 14/09/2019 2:01:23 ******/
DROP DATABASE [Biblioteca]
GO
/****** Object:  Database [Biblioteca]    Script Date: 14/09/2019 2:01:23 ******/
CREATE DATABASE [Biblioteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biblioteca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Biblioteca.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Biblioteca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Biblioteca_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Biblioteca] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblioteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblioteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblioteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Biblioteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblioteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblioteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblioteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblioteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblioteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblioteca] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Biblioteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblioteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblioteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblioteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblioteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblioteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblioteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblioteca] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Biblioteca] SET  MULTI_USER 
GO
ALTER DATABASE [Biblioteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblioteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblioteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblioteca] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Biblioteca] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Biblioteca]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/09/2019 2:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] NOT NULL,
	[NombreEm] [varchar](255) NOT NULL,
	[ApellidoEm] [varchar](255) NOT NULL,
	[Apellido2Em] [varchar](255) NOT NULL,
	[Puesto] [varchar](255) NULL,
	[Telefono] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 14/09/2019 2:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libros](
	[IdLibro] [int] NOT NULL,
	[Categoria] [varchar](255) NOT NULL,
	[Año] [varchar](255) NOT NULL,
	[Editorial] [varchar](255) NOT NULL,
	[NombreAutor] [varchar](255) NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[FichaBiblio]  AS (((((((([NombreAutor]+' ')+[Año])+' ')+[Titulo])+' ')+[Editorial])+' ')+[Categoria]),
PRIMARY KEY CLUSTERED 
(
	[IdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 14/09/2019 2:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestamos](
	[IdPrestamo] [int] NOT NULL,
	[IdUsuario] [varchar](255) NOT NULL,
	[IdLibro] [varchar](255) NOT NULL,
	[FechaPrestamo] [varchar](255) NOT NULL,
	[FechaRegreso] [varchar](255) NOT NULL,
	[DatosPrestamo]  AS (((((((([IdPrestamo]+' ')+[IdUsuario])+' ')+[IdLibro])+' ')+[FechaPrestamo])+' ')+[FechaRegreso]),
PRIMARY KEY CLUSTERED 
(
	[IdPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalaDeLectura]    Script Date: 14/09/2019 2:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalaDeLectura](
	[IdSala] [int] NOT NULL,
	[Capacidad] [varchar](255) NOT NULL,
	[Estatus] [varchar](255) NOT NULL,
	[TipoDeSala] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/09/2019 2:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] NOT NULL,
	[NombreUs] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Direccion] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[DatoUs]  AS (((((([NombreUs]+' ')+[Apellido])+' ')+[Direccion])+' ')+[Email]),
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDX_Libro_Titulo]    Script Date: 14/09/2019 2:01:23 ******/
CREATE NONCLUSTERED INDEX [INDX_Libro_Titulo] ON [dbo].[Libros]
(
	[Titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Biblioteca] SET  READ_WRITE 
GO
