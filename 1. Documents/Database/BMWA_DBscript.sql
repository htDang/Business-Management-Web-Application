USE [master]
GO
/****** Object:  Database [ISC_Student_Management]    Script Date: 2/18/2020 4:38:24 PM ******/
CREATE DATABASE [ISC_Student_Management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ISC_Student_Management', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ISC_Student_Management.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ISC_Student_Management_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ISC_Student_Management_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ISC_Student_Management] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ISC_Student_Management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ISC_Student_Management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET ARITHABORT OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ISC_Student_Management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ISC_Student_Management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ISC_Student_Management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ISC_Student_Management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET RECOVERY FULL 
GO
ALTER DATABASE [ISC_Student_Management] SET  MULTI_USER 
GO
ALTER DATABASE [ISC_Student_Management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ISC_Student_Management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ISC_Student_Management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ISC_Student_Management] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ISC_Student_Management] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ISC_Student_Management', N'ON'
GO
USE [ISC_Student_Management]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[PersonContact] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EducationProgram]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EducationProgram](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[WeekQuantity] [int] NULL,
	[IntakeID] [varchar](20) NULL,
 CONSTRAINT [PK_EducationProgram] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EducationProgramDetail]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EducationProgramDetail](
	[Id] [varchar](20) NOT NULL,
	[EduProgramID] [varchar](20) NULL,
	[SubjectID] [varchar](20) NULL,
 CONSTRAINT [PK_EducationProgramDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamContent]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamContent](
	[Id] [varchar](20) NOT NULL,
	[UserID] [varchar](20) NULL,
	[ExamSubjectID] [varchar](20) NULL,
 CONSTRAINT [PK_ExamContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamResult]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamResult](
	[Id] [varchar](20) NOT NULL,
	[UserID] [varchar](20) NULL,
	[ExamSessionID] [varchar](20) NULL,
	[Score] [float] NULL,
	[Passed] [bit] NULL,
 CONSTRAINT [PK_ExamResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamSession]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamSession](
	[Id] [varchar](20) NOT NULL,
	[Name] [varchar](50) NULL,
	[ExamDate] [date] NULL,
	[IntakeID] [varchar](20) NULL,
 CONSTRAINT [PK_ExamSession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamSessionDetail]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamSessionDetail](
	[Id] [varchar](20) NOT NULL,
	[ExamSessionID] [varchar](20) NULL,
	[ExamSubjectID] [varchar](20) NULL,
 CONSTRAINT [PK_ExamSessionDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamSubject]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamSubject](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MinScore] [float] NULL,
 CONSTRAINT [PK_ExamSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Intake]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Intake](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[DateBegin] [date] NULL,
	[DateEnd] [date] NULL,
 CONSTRAINT [PK_Intake] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lecturer](
	[Id] [varchar](20) NOT NULL,
	[UserID] [varchar](20) NULL,
	[WorkDateBegin] [date] NULL,
	[Password] [varchar](1000) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[Id] [varchar](20) NOT NULL,
	[DateBegin] [date] NULL,
	[DateEnd] [date] NULL,
	[WeekQuantity] [int] NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduleDetail](
	[Id] [varchar](20) NOT NULL,
	[SubjectID] [varchar](20) NULL,
	[ScheduleID] [varchar](20) NULL,
	[RoomID] [varchar](20) NULL,
	[DayInWeek] [varchar](15) NULL,
	[LessionBegin] [int] NULL,
	[TimeBegin] [time](7) NULL,
	[LessionTime] [int] NULL,
 CONSTRAINT [PK_ScheduleDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Score]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Score](
	[Id] [varchar](20) NOT NULL,
	[StudentID] [varchar](20) NULL,
	[SubjectID] [varchar](20) NULL,
	[Score15] [float] NULL,
	[Scoer45] [float] NULL,
	[EndScore] [float] NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [varchar](20) NOT NULL,
	[UserID] [varchar](20) NULL,
	[UniversityID] [varchar](20) NULL,
	[IdentityNumber] [varchar](10) NULL,
	[Certification] [bit] NULL,
	[Deposit] [bit] NULL,
	[IntakeID] [varchar](20) NULL,
	[Password] [varchar](1000) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LessionTime] [int] NULL,
	[MinScore] [float] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supporter]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supporter](
	[Id] [varchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [nvarchar](10) NULL,
	[Dob] [date] NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](1000) NULL,
 CONSTRAINT [PK_Supporter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[University]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[University](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[PersonContact] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [varchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NULL,
	[LastName] [nvarchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Dob] [date] NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[Major] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkTrack]    Script Date: 2/18/2020 4:38:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkTrack](
	[Id] [varchar](20) NOT NULL,
	[StudentID] [varchar](20) NULL,
	[CompanyID] [varchar](20) NULL,
	[WorkDateBegin] [date] NULL,
	[ContractDateSign] [date] NULL,
	[Status] [bit] NULL,
	[Note] [nvarchar](200) NULL,
 CONSTRAINT [PK_WorkTrack] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM001', N'FPT Telecom', NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM002', N'Zalo', NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM003', N'FPT Software', NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM004', N'VNG', NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM005', N'Fujinet', NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM006', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM007', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM008', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM009', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Company] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'COM010', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EducationProgram] ([Id], [Name], [WeekQuantity], [IntakeID]) VALUES (N'EDUP001', N'Building Web Application using .NET', NULL, NULL)
INSERT [dbo].[EducationProgram] ([Id], [Name], [WeekQuantity], [IntakeID]) VALUES (N'EDUP002', N'Building Web Application using Java', NULL, NULL)
INSERT [dbo].[EducationProgram] ([Id], [Name], [WeekQuantity], [IntakeID]) VALUES (N'EDUP003', N'Building Web Application using Swift', NULL, NULL)
INSERT [dbo].[EducationProgram] ([Id], [Name], [WeekQuantity], [IntakeID]) VALUES (N'EDUP004', N'Building Web Application using PHP', NULL, NULL)
INSERT [dbo].[EducationProgram] ([Id], [Name], [WeekQuantity], [IntakeID]) VALUES (N'EDUP005', N'Building Web Application using Ruby', NULL, NULL)
INSERT [dbo].[EducationProgram] ([Id], [Name], [WeekQuantity], [IntakeID]) VALUES (N'EDUP006', N'Building Web Application using NodeJs', NULL, NULL)
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL001', N'EDUP001', N'SUB001')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL002', N'EDUP001', N'SUB002')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL003', N'EDUP001', N'SUB003')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL004', N'EDUP001', N'SUB004')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL005', N'EDUP001', N'SUB005')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL006', N'EDUP001', N'SUB006')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL007', N'EDUP001', N'SUB007')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL008', N'EDUP001', N'SUB008')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL009', N'EDUP002', N'SUB001')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL010', N'EDUP002', N'SUB002')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL011', N'EDUP002', N'SUB003')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL012', N'EDUP002', N'SUB004')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL013', N'EDUP002', N'SUB005')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL014', N'EDUP002', N'SUB006')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL015', N'EDUP003', N'SUB001')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL016', N'EDUP003', N'SUB002')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL017', N'EDUP003', N'SUB003')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL018', N'EDUP003', N'SUB004')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL019', N'EDUP003', N'SUB005')
INSERT [dbo].[EducationProgramDetail] ([Id], [EduProgramID], [SubjectID]) VALUES (N'EPDETAIL020', N'EDUP003', N'SUB006')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000001', N'USER000001', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000002', N'USER000001', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000003', N'USER000001', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000004', N'USER000002', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000005', N'USER000002', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000006', N'USER000002', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000007', N'USER000003', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000008', N'USER000003', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000009', N'USER000004', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000010', N'USER000004', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000011', N'USER000004', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000012', N'USER000005', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000013', N'USER000005', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000014', N'USER000005', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000015', N'USER000006', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000016', N'USER000006', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000017', N'USER000006', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000018', N'USER000007', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000019', N'USER000007', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000020', N'USER000007', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000021', N'USER000008', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000022', N'USER000008', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000023', N'USER000009', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000024', N'USER000009', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000025', N'USER000009', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000026', N'USER000010', N'EXSUB001')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000027', N'USER000010', N'EXSUB002')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000028', N'USER000010', N'EXSUB003')
INSERT [dbo].[ExamContent] ([Id], [UserID], [ExamSubjectID]) VALUES (N'EXCO000029', N'USER000011', N'EXSUB001')
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0001', N'USER000001', N'EXSE001', 10, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0002', N'USER000002', N'EXSE001', 9, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0003', N'USER000003', N'EXSE001', 10, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0004', N'USER000004', N'EXSE001', 8, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0005', N'USER000005', N'EXSE001', 8.5, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0006', N'USER000006', N'EXSE002', 7.5, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0007', N'USER000007', N'EXSE002', 8, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0008', N'USER000008', N'EXSE002', 9.5, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0009', N'USER000009', N'EXSE002', 10, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0010', N'USER000010', N'EXSE001', 4, 0)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0011', N'USER000011', N'EXSE001', 4, 0)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0012', N'USER000012', N'EXSE001', 6.5, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0013', N'USER000013', N'EXSE001', 8.5, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0014', N'USER000014', N'EXSE003', 8, 1)
INSERT [dbo].[ExamResult] ([Id], [UserID], [ExamSessionID], [Score], [Passed]) VALUES (N'EXRE0015', N'USER000015', N'EXSE003', 9, 1)
INSERT [dbo].[ExamSession] ([Id], [Name], [ExamDate], [IntakeID]) VALUES (N'EXSE001', N'Dot thi 1', CAST(N'2019-08-10' AS Date), N'IK007')
INSERT [dbo].[ExamSession] ([Id], [Name], [ExamDate], [IntakeID]) VALUES (N'EXSE002', N'Dot thi 2', CAST(N'2019-08-15' AS Date), N'IK007')
INSERT [dbo].[ExamSession] ([Id], [Name], [ExamDate], [IntakeID]) VALUES (N'EXSE003', N'Dot thi 3', CAST(N'2019-08-20' AS Date), N'IK007')
INSERT [dbo].[ExamSubject] ([Id], [Name], [MinScore]) VALUES (N'EXSUB001', N'Mon 1', 5)
INSERT [dbo].[ExamSubject] ([Id], [Name], [MinScore]) VALUES (N'EXSUB002', N'Mon 2', 5)
INSERT [dbo].[ExamSubject] ([Id], [Name], [MinScore]) VALUES (N'EXSUB003', N'Mon 3', 5)
INSERT [dbo].[ExamSubject] ([Id], [Name], [MinScore]) VALUES (N'EXSUB004', N'Mon 4', 5)
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK001', N'Intake 1', CAST(N'2018-03-01' AS Date), CAST(N'2018-06-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK002', N'Intake 2', CAST(N'2018-06-01' AS Date), CAST(N'2018-09-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK003', N'Intake 3', CAST(N'2018-09-01' AS Date), CAST(N'2018-12-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK004', N'Intake 4', CAST(N'2018-12-01' AS Date), CAST(N'2019-03-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK005', N'Intake 5', CAST(N'2019-03-01' AS Date), CAST(N'2019-06-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK006', N'Intake 6', CAST(N'2019-06-01' AS Date), CAST(N'2019-09-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK007', N'Intake 7', CAST(N'2019-09-01' AS Date), CAST(N'2019-12-01' AS Date))
INSERT [dbo].[Intake] ([Id], [Name], [DateBegin], [DateEnd]) VALUES (N'IK008', N'Intake 8', CAST(N'2019-12-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Lecturer] ([Id], [UserID], [WorkDateBegin], [Password]) VALUES (N'LEC001', N'USER000016', CAST(N'2008-05-05' AS Date), NULL)
INSERT [dbo].[Lecturer] ([Id], [UserID], [WorkDateBegin], [Password]) VALUES (N'LEC002', N'USER000017', CAST(N'2015-04-04' AS Date), NULL)
INSERT [dbo].[Lecturer] ([Id], [UserID], [WorkDateBegin], [Password]) VALUES (N'LEC003', N'USER000018', CAST(N'2010-09-01' AS Date), NULL)
INSERT [dbo].[Lecturer] ([Id], [UserID], [WorkDateBegin], [Password]) VALUES (N'LEC004', N'USER000019', CAST(N'2011-02-02' AS Date), NULL)
INSERT [dbo].[Lecturer] ([Id], [UserID], [WorkDateBegin], [Password]) VALUES (N'LEC005', N'USER000020', CAST(N'2009-06-06' AS Date), NULL)
INSERT [dbo].[Lecturer] ([Id], [UserID], [WorkDateBegin], [Password]) VALUES (N'LEC006', N'USER000021', CAST(N'2012-01-01' AS Date), NULL)
INSERT [dbo].[Room] ([Id], [Name], [Quantity], [Status]) VALUES (N'RO001', N'Phong 001', 30, 1)
INSERT [dbo].[Room] ([Id], [Name], [Quantity], [Status]) VALUES (N'RO002', N'Phong 002', 30, 1)
INSERT [dbo].[Room] ([Id], [Name], [Quantity], [Status]) VALUES (N'RO003', N'Phong 003', 50, 1)
INSERT [dbo].[Room] ([Id], [Name], [Quantity], [Status]) VALUES (N'RO004', N'Phong 004', 50, 1)
INSERT [dbo].[Room] ([Id], [Name], [Quantity], [Status]) VALUES (N'RO005', N'Phong 005', 50, 1)
INSERT [dbo].[Room] ([Id], [Name], [Quantity], [Status]) VALUES (N'RO006', N'Phong 006', 30, 1)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0001', NULL, NULL, 1)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0002', NULL, NULL, 2)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0003', NULL, NULL, 3)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0004', NULL, NULL, 4)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0005', NULL, NULL, 5)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0006', NULL, NULL, 6)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0007', NULL, NULL, 7)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0008', NULL, NULL, 8)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0009', NULL, NULL, 9)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0010', NULL, NULL, 10)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0011', NULL, NULL, 11)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0012', NULL, NULL, 12)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0013', NULL, NULL, 13)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0014', NULL, NULL, 14)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0015', NULL, NULL, 15)
INSERT [dbo].[Schedule] ([Id], [DateBegin], [DateEnd], [WeekQuantity]) VALUES (N'SCH0016', NULL, NULL, 16)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000001', N'SUB001', N'SCH0001', N'RO001', N'Tuesday', 1, CAST(N'08:30:00' AS Time), 90)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000002', N'SUB002', N'SCH0001', N'RO002', N'Thursday', 1, CAST(N'08:30:00' AS Time), 90)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000003', N'SUB003', N'SCH0001', N'RO003', N'Saturday', 1, CAST(N'08:30:00' AS Time), 90)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000004', N'SUB004', N'SCH0001', N'RO004', N'Tuesday', 1, CAST(N'08:30:00' AS Time), 90)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000005', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000006', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000007', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000008', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000009', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000010', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([Id], [SubjectID], [ScheduleID], [RoomID], [DayInWeek], [LessionBegin], [TimeBegin], [LessionTime]) VALUES (N'SCHD000011', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000001', N'STU000001', N'SUB001', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000002', N'STU000001', N'SUB002', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000003', N'STU000001', N'SUB003', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000004', N'STU000001', N'SUB004', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000005', N'STU000001', N'SUB005', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000006', N'STU000001', N'SUB006', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000007', N'STU000001', N'SUB007', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000008', N'STU000001', N'SUB008', NULL, NULL, NULL)
INSERT [dbo].[Score] ([Id], [StudentID], [SubjectID], [Score15], [Scoer45], [EndScore]) VALUES (N'SCO000009', N'STU000001', N'SUB009', NULL, NULL, NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000001', N'USER000001', N'UNI001', N'371821821', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000002', N'USER000002', N'UNI001', N'371821822', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000003', N'USER000003', N'UNI002', N'371821823', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000004', N'USER000004', N'UNI002', N'371821824', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000005', N'USER000005', N'UNI001', N'371821825', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000006', N'USER000006', N'UNI005', N'371821826', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000007', N'USER000007', N'UNI001', N'371821827', 0, 0, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000008', N'USER000008', N'UNI004', N'371821828', 0, 0, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000009', N'USER000009', N'UNI001', N'371821829', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000010', N'USER000010', N'UNI004', N'371821830', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000011', N'USER000011', N'UNI006', N'371821831', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000012', N'USER000012', N'UNI003', N'371821832', 0, 1, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000013', N'USER000013', N'UNI001', N'371821833', 0, 0, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000014', N'USER000014', N'UNI006', N'371821834', 0, 0, N'IK007', NULL)
INSERT [dbo].[Student] ([Id], [UserID], [UniversityID], [IdentityNumber], [Certification], [Deposit], [IntakeID], [Password]) VALUES (N'STU000015', N'USER000015', N'UNI006', N'371821835', 0, 1, N'IK007', NULL)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB001', N'Critical Thinking', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB002', N'On Job Training', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB003', N'English Speaking', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB004', N'English Writing', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB005', N'Database', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB006', N'Front End with Angular', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB007', N'Back End with .NET', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB008', N'Front End with VueJS', NULL, 5)
INSERT [dbo].[Subject] ([Id], [Name], [LessionTime], [MinScore]) VALUES (N'SUB009', N'Back End with PHP', NULL, 5)
INSERT [dbo].[Supporter] ([Id], [FirstName], [LastName], [Gender], [Dob], [Email], [Phone], [Address], [Username], [Password]) VALUES (N'SUPP0001', N'A', N'Admin', N'Female', NULL, NULL, NULL, NULL, N'admin001', NULL)
INSERT [dbo].[Supporter] ([Id], [FirstName], [LastName], [Gender], [Dob], [Email], [Phone], [Address], [Username], [Password]) VALUES (N'SUPP0002', N'B', N'Admin', N'Male', NULL, NULL, NULL, NULL, N'admin002', NULL)
INSERT [dbo].[Supporter] ([Id], [FirstName], [LastName], [Gender], [Dob], [Email], [Phone], [Address], [Username], [Password]) VALUES (N'SUPP0003', N'C', N'Admin', N'Female', NULL, NULL, NULL, NULL, N'admin003', NULL)
INSERT [dbo].[University] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'UNI001', N'Dai Hoc Khoa Hoc Tu Nhien', N'127 Nguyen Van Cu, Phuong 2, Quan 5, TPHCM', NULL, NULL, NULL)
INSERT [dbo].[University] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'UNI002', N'Dai Hoc Ton Duc Thang', NULL, NULL, NULL, NULL)
INSERT [dbo].[University] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'UNI003', N'Dai Hoc Sai Gon', NULL, NULL, NULL, NULL)
INSERT [dbo].[University] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'UNI004', N'Dai Hoc Hoa Sen', NULL, NULL, NULL, NULL)
INSERT [dbo].[University] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'UNI005', N'Dai Hoc FPT', NULL, NULL, NULL, NULL)
INSERT [dbo].[University] ([Id], [Name], [Address], [PersonContact], [Phone], [Email]) VALUES (N'UNI006', N'Dai Hoc Kinh Te', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000001', N'A', N'Huynh Van', N'Nam', NULL, N'0327590960', N'a@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000002', N'B', N'Huynh Van', N'Nam', NULL, N'0327590961', N'b@gmail.com', NULL, N'Cong Nghe Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000003', N'C', N'Huynh Van', N'Nam', NULL, N'0327590962', N'c@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000004', N'D', N'Huynh Van', N'Nam', NULL, N'0327590963', N'd@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000005', N'E', N'Huynh Van', N'Nam', NULL, N'0327590964', N'e@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000006', N'F', N'Huynh Van', N'Nam', NULL, N'0327590965', N'f@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000007', N'G', N'Huynh Van', N'Nam', NULL, N'0327590966', N'g@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000008', N'H', N'Huynh Van', N'Nu', NULL, N'0327590967', N'h@gmail.com', NULL, N'He Thong Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000009', N'I', N'Huynh Van', N'Nu', NULL, N'0327590968', N'i@gmail.com', NULL, N'Cong Nghe Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000010', N'J', N'Nguyen Thanh', N'Nu', NULL, N'0327590969', N'j@gmail.com', NULL, N'Cong Nghe Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000011', N'K', N'Nguyen Thanh', N'Nu', NULL, N'0327590970', N'k@gmail.com', NULL, N'Cong Nghe Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000012', N'L', N'Nguyen Thanh', N'Nu', NULL, N'0327590971', N'l@gmail.com', NULL, N'Cong Nghe Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000013', N'M', N'Nguyen Thanh', N'Nu', NULL, N'0327590972', N'm@gmail.com', NULL, N'Cong Nghe Thong Tin')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000014', N'N', N'Nguyen Thanh', N'Nu', NULL, N'0327590973', N'n@gmail.com', NULL, N'Ky Thuat Phan Mem')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000015', N'O', N'Nguyen Thanh', N'Nam', NULL, N'0327590974', N'o@gmail.com', NULL, N'Ky Thuat Phan Mem')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000016', N'P', N'Ly Tan', N'Nam', NULL, N'0327590975', N'p@gmail.com', NULL, N'Ky Thuat Phan Mem')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000017', N'Q', N'Ly Tan', N'Nam', NULL, N'0327590976', N'q@gmail.com', NULL, N'Ky Thuat Phan Mem')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000018', N'R', N'Ly Tan', N'Nam', NULL, N'0327590977', N'r@gmail.com', NULL, N'Khoa Hoc May Tinh')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000019', N'S', N'Ly Tan', N'Nam', NULL, N'0327590978', N's@gmail.com', NULL, N'Khoa Hoc May Tinh')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000020', N'T', N'Nguyen Tan', N'Nam', NULL, N'0327590979', N't@gmail.com', NULL, N'Khoa Hoc May Tinh')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000021', N'W', N'Nguyen Tan', N'Nu', NULL, N'0327590980', N'w@gmail.com', NULL, N'Khoa Hoc May Tinh')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000022', N'X', N'Nguyen Tan', N'Nu', NULL, N'0327590981', N'x@gmail.com', NULL, N'Cong Nghe Tri Thuc')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000023', N'Y', N'Nguyen Tan', N'Nu', NULL, N'0327590982', N'q@gmail.com', NULL, N'Cong Nghe Tri Thuc')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Gender], [Dob], [Phone], [Email], [Address], [Major]) VALUES (N'USER000024', N'Z', N'Nguyen Tan', N'Nu', NULL, N'0327590983', N'z@gmail.com', NULL, N'Cong Nghe Tri Thuc')
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000001', N'STU000001', N'COM001', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000002', N'STU000002', N'COM001', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000003', N'STU000003', N'COM002', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000004', N'STU000004', N'COM005', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000005', N'STU000005', N'COM004', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000006', N'STU000006', N'COM003', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000007', N'STU000007', N'COM007', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000008', N'STU000008', N'COM010', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000009', N'STU000009', N'COM003', NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTrack] ([Id], [StudentID], [CompanyID], [WorkDateBegin], [ContractDateSign], [Status], [Note]) VALUES (N'WT000010', N'STU000010', N'COM009', NULL, NULL, NULL, NULL)
ALTER TABLE [dbo].[EducationProgram]  WITH CHECK ADD  CONSTRAINT [FK_EducationProgram_Intake] FOREIGN KEY([IntakeID])
REFERENCES [dbo].[Intake] ([Id])
GO
ALTER TABLE [dbo].[EducationProgram] CHECK CONSTRAINT [FK_EducationProgram_Intake]
GO
ALTER TABLE [dbo].[EducationProgramDetail]  WITH CHECK ADD  CONSTRAINT [FK_EducationProgramDetail_EducationProgram] FOREIGN KEY([EduProgramID])
REFERENCES [dbo].[EducationProgram] ([Id])
GO
ALTER TABLE [dbo].[EducationProgramDetail] CHECK CONSTRAINT [FK_EducationProgramDetail_EducationProgram]
GO
ALTER TABLE [dbo].[EducationProgramDetail]  WITH CHECK ADD  CONSTRAINT [FK_EducationProgramDetail_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[EducationProgramDetail] CHECK CONSTRAINT [FK_EducationProgramDetail_Subject]
GO
ALTER TABLE [dbo].[ExamContent]  WITH CHECK ADD  CONSTRAINT [FK_ExamContent_ExamSubject] FOREIGN KEY([ExamSubjectID])
REFERENCES [dbo].[ExamSubject] ([Id])
GO
ALTER TABLE [dbo].[ExamContent] CHECK CONSTRAINT [FK_ExamContent_ExamSubject]
GO
ALTER TABLE [dbo].[ExamContent]  WITH CHECK ADD  CONSTRAINT [FK_ExamContent_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ExamContent] CHECK CONSTRAINT [FK_ExamContent_User]
GO
ALTER TABLE [dbo].[ExamResult]  WITH CHECK ADD  CONSTRAINT [FK_ExamResult_ExamSession] FOREIGN KEY([ExamSessionID])
REFERENCES [dbo].[ExamSession] ([Id])
GO
ALTER TABLE [dbo].[ExamResult] CHECK CONSTRAINT [FK_ExamResult_ExamSession]
GO
ALTER TABLE [dbo].[ExamResult]  WITH CHECK ADD  CONSTRAINT [FK_ExamResult_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ExamResult] CHECK CONSTRAINT [FK_ExamResult_User]
GO
ALTER TABLE [dbo].[ExamSession]  WITH CHECK ADD  CONSTRAINT [FK_ExamSession_Intake] FOREIGN KEY([IntakeID])
REFERENCES [dbo].[Intake] ([Id])
GO
ALTER TABLE [dbo].[ExamSession] CHECK CONSTRAINT [FK_ExamSession_Intake]
GO
ALTER TABLE [dbo].[ExamSessionDetail]  WITH CHECK ADD  CONSTRAINT [FK_ExamSessionDetail_ExamSession] FOREIGN KEY([ExamSessionID])
REFERENCES [dbo].[ExamSession] ([Id])
GO
ALTER TABLE [dbo].[ExamSessionDetail] CHECK CONSTRAINT [FK_ExamSessionDetail_ExamSession]
GO
ALTER TABLE [dbo].[ExamSessionDetail]  WITH CHECK ADD  CONSTRAINT [FK_ExamSessionDetail_ExamSubject] FOREIGN KEY([ExamSubjectID])
REFERENCES [dbo].[ExamSubject] ([Id])
GO
ALTER TABLE [dbo].[ExamSessionDetail] CHECK CONSTRAINT [FK_ExamSessionDetail_ExamSubject]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_User]
GO
ALTER TABLE [dbo].[ScheduleDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDetail_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[ScheduleDetail] CHECK CONSTRAINT [FK_ScheduleDetail_Room]
GO
ALTER TABLE [dbo].[ScheduleDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDetail_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([Id])
GO
ALTER TABLE [dbo].[ScheduleDetail] CHECK CONSTRAINT [FK_ScheduleDetail_Schedule]
GO
ALTER TABLE [dbo].[ScheduleDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDetail_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[ScheduleDetail] CHECK CONSTRAINT [FK_ScheduleDetail_Subject]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Student]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Intake] FOREIGN KEY([IntakeID])
REFERENCES [dbo].[Intake] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Intake]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_University] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[University] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_University]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[WorkTrack]  WITH CHECK ADD  CONSTRAINT [FK_WorkTrack_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[WorkTrack] CHECK CONSTRAINT [FK_WorkTrack_Company]
GO
ALTER TABLE [dbo].[WorkTrack]  WITH CHECK ADD  CONSTRAINT [FK_WorkTrack_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[WorkTrack] CHECK CONSTRAINT [FK_WorkTrack_Student]
GO
USE [master]
GO
ALTER DATABASE [ISC_Student_Management] SET  READ_WRITE 
GO
