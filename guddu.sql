

USE [guddu]
GO
/****** Object:  Database [guddu]    Script Date: 08/29/2018 22:08:28 ******/
CREATE DATABASE [guddu] ON  PRIMARY 
( NAME = N'guddu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\guddu.mdf' , SIZE = 13312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'guddu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\guddu_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [guddu] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [guddu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [guddu] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [guddu] SET ANSI_NULLS OFF
GO
ALTER DATABASE [guddu] SET ANSI_PADDING OFF
GO
ALTER DATABASE [guddu] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [guddu] SET ARITHABORT OFF
GO
ALTER DATABASE [guddu] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [guddu] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [guddu] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [guddu] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [guddu] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [guddu] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [guddu] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [guddu] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [guddu] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [guddu] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [guddu] SET  DISABLE_BROKER
GO
ALTER DATABASE [guddu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [guddu] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [guddu] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [guddu] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [guddu] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [guddu] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [guddu] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [guddu] SET  READ_WRITE
GO
ALTER DATABASE [guddu] SET RECOVERY FULL
GO
ALTER DATABASE [guddu] SET  MULTI_USER
GO
ALTER DATABASE [guddu] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [guddu] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'guddu', N'ON'
GO
USE [guddu]
GO
/****** Object:  Table [dbo].[tempbill]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tempbill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Address] [varchar](300) NULL,
	[date] [date] NULL,
	[OrderNo] [nvarchar](50) NULL,
	[HSN] [varchar](50) NULL,
	[Ltr] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Shape] [varchar](50) NULL,
	[Weight] [nchar](10) NULL,
	[qty] [float] NULL,
	[amt] [float] NULL,
	[Total] [float] NULL,
	[Nettotal] [float] NULL,
	[dis] [float] NULL,
	[disa] [float] NULL,
	[GrandTotal] [float] NULL,
	[word] [varchar](500) NULL,
 CONSTRAINT [PK_tempbill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Contact] [varchar](50) NULL,
	[GSTIN] [varchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Name] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Salary] [float] NULL,
	[Date] [date] NULL,
	[Advance] [int] NULL,
	[Payment] [int] NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rn]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[Ltr] [varchar](50) NULL,
	[Shape] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[OrderNO] [varchar](50) NULL,
	[Date] [date] NULL,
	[Resion] [varchar](50) NULL,
	[Unit] [float] NULL,
 CONSTRAINT [PK_Return] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[registration]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[dob] [date] NULL,
	[pwd] [varchar](50) NULL,
	[cnf_pwd] [varchar](50) NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Purchase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[ContactNo] [varchar](50) NULL,
	[GSTIN] [varchar](50) NULL,
	[Date] [date] NULL,
	[ProductName] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Qty] [float] NULL,
	[Amount] [float] NULL,
	[SGSTR] [float] NULL,
	[CGSTR] [float] NULL,
	[IGSTR] [float] NULL,
	[SGSTA] [float] NULL,
	[CGSTA] [float] NULL,
	[IGSTA] [float] NULL,
	[Total] [float] NULL,
	[Net] [float] NULL,
	[GrandTotal] [float] NULL,
	[Ptotal] [float] NULL,
	[DisR] [float] NULL,
	[Dsblns] [float] NULL,
 CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductForm]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_ProductForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OT]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hours] [float] NULL,
	[Amt] [float] NULL,
	[Total] [float] NULL,
	[OT] [float] NULL,
	[EmployeeName] [varchar](50) NULL,
 CONSTRAINT [PK_OT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderNo]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderNo](
	[Id] [int] NOT NULL,
	[Prv] [int] NULL,
	[Nex] [int] NULL,
 CONSTRAINT [PK_OrderNo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyOrder]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](50) NULL,
	[CustomerName] [varchar](50) NULL,
	[Date] [date] NULL,
	[Contact] [varchar](255) NULL,
	[ProductName] [varchar](50) NULL,
	[Can] [varchar](50) NULL,
	[Qty] [float] NULL,
	[Amount] [float] NULL,
	[Total] [float] NULL,
	[Nettotal] [float] NULL,
	[Sgstr] [float] NULL,
	[sgsta] [float] NULL,
	[cgstr] [float] NULL,
	[cgsta] [float] NULL,
	[igstr] [float] NULL,
	[igsta] [float] NULL,
	[GrandTotal] [float] NULL,
	[Advance] [float] NULL,
	[Balance] [float] NULL,
	[GSTIN] [varchar](50) NULL,
	[HSN] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Shape] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[Paid] [float] NULL,
	[Bal] [float] NULL,
	[OD] [date] NULL,
	[rcvDate] [date] NULL,
	[Word] [varchar](250) NULL,
	[NewT] [float] NULL,
	[Dis] [float] NULL,
	[DisR] [float] NULL,
	[MachStock] [float] NULL,
	[SaleDate] [date] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[machineInfo]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[machineInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [varchar](50) NULL,
	[MachineNo] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Time] [time](7) NULL,
	[Date] [date] NULL,
	[Ltr] [nvarchar](50) NULL,
	[Unit] [float] NULL,
	[ctotal] [float] NULL,
	[ActualStock] [float] NULL,
	[LabourName] [varchar](50) NULL,
	[AvaliableStock] [float] NULL,
	[Color] [varchar](50) NULL,
	[Shape] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[MachineStock] [float] NULL,
 CONSTRAINT [PK_machineInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[machine]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[machine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Machine] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[MachineNo] [varchar](50) NULL,
	[Image] [varbinary](max) NULL,
	[Description] [varchar](max) NULL,
	[Stock] [float] NULL,
	[Inltr] [varchar](50) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_machine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ltr]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ltr](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Ltr] [varchar](50) NULL,
	[Color] [nchar](10) NULL,
 CONSTRAINT [PK_Ltr] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inrupt]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inrupt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [varchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Resion] [varchar](50) NULL,
 CONSTRAINT [PK_inrupt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grm]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[grm] [varchar](50) NULL,
 CONSTRAINT [PK_grm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[expences]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[expences](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[exptype] [varchar](50) NULL,
	[amount] [float] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_expences] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_profile]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](250) NULL,
	[dob] [date] NULL,
	[idproof] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[position] [varchar](50) NULL,
	[cursal] [int] NULL,
	[picupload] [varbinary](max) NULL,
	[idupload] [varbinary](max) NULL,
 CONSTRAINT [PK_employee_profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_attendance]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_attendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empname] [varchar](50) NULL,
	[position] [varchar](50) NULL,
	[date] [date] NULL,
	[uploadpic] [varbinary](max) NULL,
	[intime] [time](7) NULL,
	[OutTime] [time](7) NULL,
 CONSTRAINT [PK_employee_attendance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Damage]    Script Date: 08/29/2018 22:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Damage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ltr] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Shape] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[DUnit] [nchar](10) NULL,
 CONSTRAINT [PK_Damage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
