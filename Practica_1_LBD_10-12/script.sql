USE [master]
GO
/****** Object:  Database [LBD10]    Script Date: 31/08/2019 11:23:37 a.m. ******/
DROP DATABASE [LBD10]
GO
/****** Object:  Database [LBD10]    Script Date: 31/08/2019 11:23:37 a.m. ******/
CREATE DATABASE [LBD10]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD10', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LBD10.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LBD10_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LBD10_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LBD10] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD10].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD10] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD10] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD10] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD10] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD10] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD10] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LBD10] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LBD10] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD10] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD10] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD10] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD10] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD10] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD10] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD10] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD10] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LBD10] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD10] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD10] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD10] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD10] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD10] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD10] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD10] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD10] SET  MULTI_USER 
GO
ALTER DATABASE [LBD10] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD10] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD10] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD10] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LBD10] SET  READ_WRITE 
GO
