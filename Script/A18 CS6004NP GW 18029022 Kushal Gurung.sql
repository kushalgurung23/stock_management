USE [master]
GO
/****** Object:  Database [coursework]    Script Date: 5/5/2021 3:39:16 PM ******/
CREATE DATABASE [coursework]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'coursework', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\coursework.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'coursework_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\coursework_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [coursework] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [coursework].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [coursework] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [coursework] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [coursework] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [coursework] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [coursework] SET ARITHABORT OFF 
GO
ALTER DATABASE [coursework] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [coursework] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [coursework] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [coursework] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [coursework] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [coursework] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [coursework] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [coursework] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [coursework] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [coursework] SET  DISABLE_BROKER 
GO
ALTER DATABASE [coursework] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [coursework] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [coursework] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [coursework] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [coursework] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [coursework] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [coursework] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [coursework] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [coursework] SET  MULTI_USER 
GO
ALTER DATABASE [coursework] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [coursework] SET DB_CHAINING OFF 
GO
ALTER DATABASE [coursework] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [coursework] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [coursework] SET DELAYED_DURABILITY = DISABLED 
GO
USE [coursework]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 5/5/2021 3:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [int] IDENTITY(500,1) NOT NULL,
	[member_number] [int] NULL,
	[item_id] [int] NULL,
	[quantity] [int] NULL,
	[line_total] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 5/5/2021 3:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(100,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customer]    Script Date: 5/5/2021 3:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[member_number] [int] IDENTITY(1000,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[age] [int] NULL,
	[address] [nvarchar](100) NULL,
	[contact_number] [nvarchar](10) NULL,
	[email_address] [nvarchar](100) NULL,
	[member_type] [nvarchar](10) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[member_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[item]    Script Date: 5/5/2021 3:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
	[price] [int] NULL,
	[purchase_date] [date] NULL,
	[manufactured_date] [date] NULL,
	[expiry_date] [date] NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_items] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sales]    Script Date: 5/5/2021 3:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sales_id] [int] IDENTITY(330,1) NOT NULL,
	[member_number] [int] NULL,
	[item_id] [int] NULL,
	[total_quantity] [int] NULL,
	[total_amount] [int] NULL,
	[billing_date] [date] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[sales_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 5/5/2021 3:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[contact] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[is_admin] [tinyint] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_customer] FOREIGN KEY([member_number])
REFERENCES [dbo].[customer] ([member_number])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_customer]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[item] ([item_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_item]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_items_items] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_items_items]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_customer] FOREIGN KEY([member_number])
REFERENCES [dbo].[customer] ([member_number])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_customer]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[item] ([item_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_item]
GO
USE [master]
GO
ALTER DATABASE [coursework] SET  READ_WRITE 
GO
