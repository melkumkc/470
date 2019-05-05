USE [master]
GO

/****** Object:  Database [MeetingRoom]    Script Date: 5/5/2019 3:28:45 PM ******/
CREATE DATABASE [MeetingRoom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MeetingRoom', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MeetingRoom.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MeetingRoom_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MeetingRoom_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [MeetingRoom] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MeetingRoom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MeetingRoom] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MeetingRoom] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MeetingRoom] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MeetingRoom] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MeetingRoom] SET ARITHABORT OFF 
GO

ALTER DATABASE [MeetingRoom] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MeetingRoom] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MeetingRoom] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MeetingRoom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MeetingRoom] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MeetingRoom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MeetingRoom] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MeetingRoom] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MeetingRoom] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MeetingRoom] SET  DISABLE_BROKER 
GO

ALTER DATABASE [MeetingRoom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MeetingRoom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MeetingRoom] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MeetingRoom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MeetingRoom] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MeetingRoom] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MeetingRoom] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MeetingRoom] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MeetingRoom] SET  MULTI_USER 
GO

ALTER DATABASE [MeetingRoom] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MeetingRoom] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MeetingRoom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MeetingRoom] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [MeetingRoom] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MeetingRoom] SET  READ_WRITE 
GO
