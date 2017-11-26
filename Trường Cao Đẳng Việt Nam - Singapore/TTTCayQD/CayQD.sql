USE [master]
GO
/****** Object:  Database [CAYQD]    Script Date: 11/26/2017 10:33:35 PM ******/
CREATE DATABASE [CAYQD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CAYQD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CAYQD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CAYQD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CAYQD_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CAYQD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CAYQD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CAYQD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CAYQD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CAYQD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CAYQD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CAYQD] SET ARITHABORT OFF 
GO
ALTER DATABASE [CAYQD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CAYQD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CAYQD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CAYQD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CAYQD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CAYQD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CAYQD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CAYQD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CAYQD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CAYQD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CAYQD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CAYQD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CAYQD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CAYQD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CAYQD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CAYQD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CAYQD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CAYQD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CAYQD] SET  MULTI_USER 
GO
ALTER DATABASE [CAYQD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CAYQD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CAYQD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CAYQD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CAYQD] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CAYQD]
GO
/****** Object:  Table [dbo].[CAUHOI]    Script Date: 11/26/2017 10:33:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUHOI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAUHOI] [nvarchar](500) NOT NULL,
	[LANUTGOC] [bit] NULL CONSTRAINT [DF_CAUHOI_LANUTGOC]  DEFAULT ((0)),
	[ID_CAUTRALOI] [int] NULL,
 CONSTRAINT [PK_CAUHOI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAUTRALOI]    Script Date: 11/26/2017 10:33:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUTRALOI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAUTRALOI] [nvarchar](500) NOT NULL,
	[ID_CAUHOI] [int] NOT NULL,
	[IS_NUTLA] [bit] NOT NULL CONSTRAINT [DF_CAUTRALOI_IS_NUTLA]  DEFAULT ((0)),
	[ID_NGANHHOC] [int] NULL,
 CONSTRAINT [PK_CAUTRALOI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOG]    Script Date: 11/26/2017 10:33:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG](
	[ID] [int] NOT NULL,
	[NGAYGIO] [date] NULL,
	[NGUOITHAMGIA] [nvarchar](500) NULL,
	[DIACHI] [nvarchar](500) NULL,
	[GHICHU] [nvarchar](500) NULL,
	[TENDN] [nvarchar](500) NULL,
	[MATKHAU] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGANHHOC]    Script Date: 11/26/2017 10:33:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGANHHOC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TENNGANH] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_NGANHHOC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CAUHOI] ON 

INSERT [dbo].[CAUHOI] ([ID], [CAUHOI], [LANUTGOC], [ID_CAUTRALOI]) VALUES (1, N'Bạn có tính cách như thế nào ?', 1, NULL)
INSERT [dbo].[CAUHOI] ([ID], [CAUHOI], [LANUTGOC], [ID_CAUTRALOI]) VALUES (2, N'Trong môi trường làm việc áp lực bạn muốn là ?', 0, 1)
INSERT [dbo].[CAUHOI] ([ID], [CAUHOI], [LANUTGOC], [ID_CAUTRALOI]) VALUES (3, N'Bạn muốn chọn ngành nghề theo hướng nào ?', 0, 3)
INSERT [dbo].[CAUHOI] ([ID], [CAUHOI], [LANUTGOC], [ID_CAUTRALOI]) VALUES (4, N'Bạn thích chọn công việc như thế nào ?', 0, 4)
INSERT [dbo].[CAUHOI] ([ID], [CAUHOI], [LANUTGOC], [ID_CAUTRALOI]) VALUES (5, N'Bạn thích đọc sách về lĩnh vực nào ?', 0, 2)
INSERT [dbo].[CAUHOI] ([ID], [CAUHOI], [LANUTGOC], [ID_CAUTRALOI]) VALUES (7, N'Ban có tìm hiểu vê công nghệ thông tin ', 0, 5)
SET IDENTITY_INSERT [dbo].[CAUHOI] OFF
SET IDENTITY_INSERT [dbo].[CAUTRALOI] ON 

INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (1, N'Nhạy bén , có tính sáng tạo ', 1, 0, NULL)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (2, N'Không thích cầu kỳ , phức tạp ', 1, 0, NULL)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (3, N'Làm việc theo nhóm', 2, 0, NULL)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (4, N'Làm việc độc lập ', 2, 0, NULL)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (5, N'Tư duy cao', 3, 1, NULL)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (6, N'Lao động tay chân chủ yếu ', 3, 1, 2)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (7, N'Công việc không cần phải suy nghĩ nhiều, chủ yếu vận dụng kiến thức đã học ', 4, 1, 3)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (8, N'Công việc có tính thử thách để nâng cao trình độ chuyên môn ', 4, 1, 4)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (9, N'Nghiên cứu phần mềm ', 5, 1, 5)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (10, N'Đọc sách kinh tế', 5, 1, 6)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (11, N'Đọc sách ôtô', 5, 1, 7)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (17, N'Có ', 7, 1, 4)
INSERT [dbo].[CAUTRALOI] ([ID], [CAUTRALOI], [ID_CAUHOI], [IS_NUTLA], [ID_NGANHHOC]) VALUES (18, N'Không', 7, 1, 1)
SET IDENTITY_INSERT [dbo].[CAUTRALOI] OFF
SET IDENTITY_INSERT [dbo].[NGANHHOC] ON 

INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (1, N'<a href="tttnsuachua.aspx">Sửa chữa máy tính</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (2, N'<a href="tttncokhichetao.aspx">Cơ khí chế tạo</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (3, N'<a href="tttnsuachua.aspx">Sửa chữa máy tính</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (4, N'<a href="tttnqtm.aspx">Quản trị mạng</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (5, N'<a href="tttnthvp.aspx">Tin học văn phòng</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (6, N'<a href="tttnktdn.aspx">Kế toán doanh nghiệp</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (7, N'<a href="tttncnoto.aspx">Công nghệ ôtô</a>')
INSERT [dbo].[NGANHHOC] ([ID], [TENNGANH]) VALUES (9, N'<a href="tttnqtm.aspx">Quản trị mạng</a>')
SET IDENTITY_INSERT [dbo].[NGANHHOC] OFF
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUHOI_VTRI] FOREIGN KEY([ID_CAUTRALOI])
REFERENCES [dbo].[CAUTRALOI] ([ID])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_CAUHOI_VTRI]
GO
ALTER TABLE [dbo].[CAUTRALOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUTRALOI_NGANHHOC] FOREIGN KEY([ID_NGANHHOC])
REFERENCES [dbo].[NGANHHOC] ([ID])
GO
ALTER TABLE [dbo].[CAUTRALOI] CHECK CONSTRAINT [FK_CAUTRALOI_NGANHHOC]
GO
USE [master]
GO
ALTER DATABASE [CAYQD] SET  READ_WRITE 
GO
