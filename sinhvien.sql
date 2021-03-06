USE [master]
GO
/****** Object:  Database [ltm]    Script Date: 11/2/2020 5:54:10 PM ******/
CREATE DATABASE [ltm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ltm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ltm.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ltm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ltm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ltm] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ltm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ltm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ltm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ltm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ltm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ltm] SET ARITHABORT OFF 
GO
ALTER DATABASE [ltm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ltm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ltm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ltm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ltm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ltm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ltm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ltm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ltm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ltm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ltm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ltm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ltm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ltm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ltm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ltm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ltm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ltm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ltm] SET  MULTI_USER 
GO
ALTER DATABASE [ltm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ltm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ltm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ltm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ltm] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ltm] SET QUERY_STORE = OFF
GO
USE [ltm]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11/2/2020 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [nchar](10) NOT NULL,
	[password] [nchar](10) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/2/2020 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[faculty] [nvarchar](50) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin01   ', N'123456    ')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin02   ', N'123456    ')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin03   ', N'123456    ')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin04   ', N'123456    ')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin05   ', N'123456    ')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'101160003 ', N'Nguyen B', 0, N'Co dien tu')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'101170001 ', N'Tran B', 1, N'Cong nghe thong tin')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'102170001 ', N'Nguyen A', 1, N'Cong nghe thong tin')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'102170006 ', N'Ngo Thi Canh', 0, N'Cong nghe thong tin')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'102170037 ', N'Bui Thi Nga', 1, N'Cong nghe thong tin')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'102170039 ', N'Pham Thi Nguyet', 0, N'Cong nghe thong tin')
INSERT [dbo].[student] ([id], [name], [gender], [faculty]) VALUES (N'107170006 ', N'Nguyen C', 0, N'Hoa')
USE [master]
GO
ALTER DATABASE [ltm] SET  READ_WRITE 
GO
