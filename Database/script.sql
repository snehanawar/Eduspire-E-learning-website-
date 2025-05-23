USE [master]
GO
/****** Object:  Database [ProjectDB]    Script Date: 15-05-2025 4.41.37 PM ******/
CREATE DATABASE [ProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProjectDB] SET QUERY_STORE = OFF
GO
USE [ProjectDB]
GO
/****** Object:  Table [dbo].[ActivateStu_Table6]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivateStu_Table6](
	[ID] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[activationcode] [varchar](50) NULL,
 CONSTRAINT [PK_ActivateStu_Table6] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivateTut_Table2]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivateTut_Table2](
	[ID] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[activationcode] [varchar](50) NULL,
 CONSTRAINT [PK_ActivateTut_Table2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin_Table7]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Table7](
	[adm_ID] [int] NOT NULL,
	[adm_FirstName] [varchar](50) NULL,
	[adm_LastName] [varchar](50) NULL,
	[adm_ContactNo] [varchar](20) NULL,
	[adm_EmailID] [varchar](50) NULL,
	[adm_Password] [varchar](50) NULL,
	[adm_Ques] [varchar](50) NULL,
	[adm_Ans] [varchar](50) NULL,
 CONSTRAINT [PK_Admin_Table7] PRIMARY KEY CLUSTERED 
(
	[adm_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate_Table8]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate_Table8](
	[can_ID] [int] NOT NULL,
	[can_FirstName] [varchar](50) NULL,
	[can_LastName] [varchar](50) NULL,
	[can_ContactNo] [varchar](10) NULL,
	[can_EmailID] [varchar](50) NULL,
	[can_DOB] [date] NULL,
	[can_Gender] [varchar](10) NULL,
	[can_FileName] [varchar](max) NULL,
	[can_ApprovalStatus] [varchar](10) NULL,
	[Applied_On] [date] NULL,
 CONSTRAINT [PK_Candidate_Table8] PRIMARY KEY CLUSTERED 
(
	[can_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs_Table4]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs_Table4](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Email_ID] [varchar](50) NULL,
	[Subject] [varchar](100) NULL,
	[Message] [varchar](max) NULL,
	[CreatedOnDate] [datetime] NULL,
	[RepliedOnDate] [datetime] NULL,
	[Replied_Msg] [varchar](max) NULL,
 CONSTRAINT [PK_ContactUs_Table4] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Table13]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Table13](
	[ID] [int] NOT NULL,
	[Course] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Course_Table13] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GUID_Stu_Table]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GUID_Stu_Table](
	[ID] [nvarchar](50) NULL,
	[UID] [nvarchar](50) NULL,
	[RequestDateTime] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GUID_Tut_Table]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GUID_Tut_Table](
	[ID] [nvarchar](50) NULL,
	[UID] [nvarchar](50) NULL,
	[RequestDateTime] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails_Table11]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails_Table11](
	[ID] [int] NOT NULL,
	[stu_ID] [int] NULL,
	[Pay_ID] [varchar](50) NULL,
	[PlanName] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_PaymentDetails_Table11] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanPrice_Table10]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanPrice_Table10](
	[ID] [int] NOT NULL,
	[Basic_Price] [varchar](50) NULL,
	[Plus_Price] [varchar](50) NULL,
	[Pro_Price] [varchar](50) NULL,
	[Updated_On] [datetime] NULL,
 CONSTRAINT [PK_PlanPrice_Table10] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Questions] [varchar](max) NULL,
	[Option1] [varchar](max) NULL,
	[Option2] [varchar](max) NULL,
	[Option3] [varchar](max) NULL,
	[Option4] [varchar](max) NULL,
	[Answer] [varchar](max) NULL,
	[TestId] [int] NULL,
	[createddate] [datetime] NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterStu_Table5]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterStu_Table5](
	[stu_ID] [int] NOT NULL,
	[stu_FirstName] [varchar](50) NOT NULL,
	[stu_LastName] [varchar](50) NOT NULL,
	[stu_ContactNo] [varchar](10) NOT NULL,
	[stu_EmailID] [varchar](50) NULL,
	[stu_DOB] [date] NOT NULL,
	[stu_Gender] [varchar](10) NOT NULL,
	[stu_Password] [varchar](50) NOT NULL,
	[stu_Ques] [varchar](50) NOT NULL,
	[stu_Ans] [varchar](50) NOT NULL,
	[PlanName] [varchar](50) NULL,
	[PlanStartDate] [datetime] NULL,
	[PlanEndDate] [datetime] NULL,
	[IsPlanActive] [bit] NULL,
	[Created_On] [datetime] NULL,
 CONSTRAINT [PK_RegisterStu_Table5] PRIMARY KEY CLUSTERED 
(
	[stu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterTut_Table1]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterTut_Table1](
	[tut_ID] [int] NOT NULL,
	[tut_FirstName] [varchar](50) NULL,
	[tut_LastName] [varchar](50) NULL,
	[tut_ContactNo] [varchar](10) NULL,
	[tut_EmailID] [varchar](50) NULL,
	[tut_Gender] [varchar](10) NULL,
	[tut_Password] [varchar](50) NULL,
	[tut_Ques] [varchar](50) NULL,
	[tut_Ans] [varchar](50) NULL,
	[Created_On] [date] NULL,
 CONSTRAINT [PK_RegisterTut_Table1] PRIMARY KEY CLUSTERED 
(
	[tut_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultTable]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Test_Id] [int] NULL,
	[stu_ID] [int] NULL,
	[TotalMarks] [varchar](50) NULL,
	[IsPass] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[TotalPercentage] [varchar](50) NULL,
	[CorretAnsCount] [int] NULL,
	[TotalQuession] [int] NULL,
 CONSTRAINT [PK_ResultTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[ResumeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[MiddleName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[EmailAddr] [varchar](100) NULL,
	[ContactNo] [varchar](50) NULL,
	[Address] [varchar](255) NULL,
	[Keyskills] [varchar](255) NULL,
	[Employment] [varchar](500) NULL,
	[SoftwareDev] [varchar](500) NULL,
	[ProjectTitle] [varchar](255) NULL,
	[ProjectTag] [varchar](255) NULL,
	[EnterClient] [varchar](255) NULL,
	[ProjectStatus] [varchar](50) NULL,
	[NatureOfEmp] [varchar](255) NULL,
	[EducationLevel] [varchar](255) NULL,
	[BoardName] [varchar](255) NULL,
	[PassingOutYear] [numeric](18, 0) NULL,
	[Medium] [varchar](255) NULL,
	[PassingPer] [varchar](50) NULL,
	[CertificateName] [varchar](255) NULL,
	[CertifiedOn] [datetime2](7) NULL,
	[SkillName] [varchar](255) NULL,
	[LastUsed] [varchar](255) NULL,
	[WorkExperience] [varchar](255) NULL,
 CONSTRAINT [PK__Resume__D7D7A31733A37E0B] PRIMARY KEY CLUSTERED 
(
	[ResumeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestDetails]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [varchar](100) NULL,
	[Courses] [varchar](50) NULL,
	[PassingPer] [varchar](50) NULL,
	[TestStartDate] [varchar](50) NULL,
	[TestEndDate] [date] NULL,
	[TestDuration] [varchar](50) NULL,
	[createdDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TestDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Table12]    Script Date: 15-05-2025 4.41.38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Table12](
	[ID] [int] NOT NULL,
	[tut_ID] [int] NULL,
	[Title] [varchar](100) NULL,
	[VideoOnCourse] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[VideoPath] [varchar](250) NULL,
	[UploadedOn] [datetime] NULL,
	[KeywordSearch] [varchar](500) NULL,
 CONSTRAINT [PK_Video_Table12] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ActivateStu_Table6] ([ID], [Email], [Status], [activationcode]) VALUES (1, N'rdc1@gmail.com', N'Verified', N'0')
INSERT [dbo].[ActivateStu_Table6] ([ID], [Email], [Status], [activationcode]) VALUES (2, N'tgb@gmail.com', N'Verified', N'0')
INSERT [dbo].[ActivateStu_Table6] ([ID], [Email], [Status], [activationcode]) VALUES (3, N'nawar.sneha154@sathayecollege.edu.in', N'Verified', N'0')
INSERT [dbo].[ActivateStu_Table6] ([ID], [Email], [Status], [activationcode]) VALUES (4, N'nawarsneha@gmail.com', N'Verified', N'0')
GO
INSERT [dbo].[ActivateTut_Table2] ([ID], [Email], [Status], [activationcode]) VALUES (1, N'nawarsneha@gmail.com', N'Verified', N'0')
GO
INSERT [dbo].[Admin_Table7] ([adm_ID], [adm_FirstName], [adm_LastName], [adm_ContactNo], [adm_EmailID], [adm_Password], [adm_Ques], [adm_Ans]) VALUES (0, N'Admin', N'Admin', N'9702351247', N'admin@gmail.com', N'Admin123', N'What`s the name of the city where you were born?', N'Mumbai')
GO
INSERT [dbo].[Candidate_Table8] ([can_ID], [can_FirstName], [can_LastName], [can_ContactNo], [can_EmailID], [can_DOB], [can_Gender], [can_FileName], [can_ApprovalStatus], [Applied_On]) VALUES (3, N'Sneha', N'Nawar', N'9833003474', N'abc@gmail.com', CAST(N'2000-03-29' AS Date), N'Female', N'Certificate.pdf', N'Approved', CAST(N'2023-03-29' AS Date))
INSERT [dbo].[Candidate_Table8] ([can_ID], [can_FirstName], [can_LastName], [can_ContactNo], [can_EmailID], [can_DOB], [can_Gender], [can_FileName], [can_ApprovalStatus], [Applied_On]) VALUES (13, N'Sneha', N'Nawar', N'9833003474', N'eduspire39154@gmail.com', CAST(N'1999-02-04' AS Date), N'Female', N'Certificate.pdf', N'Rejected', CAST(N'2023-04-04' AS Date))
INSERT [dbo].[Candidate_Table8] ([can_ID], [can_FirstName], [can_LastName], [can_ContactNo], [can_EmailID], [can_DOB], [can_Gender], [can_FileName], [can_ApprovalStatus], [Applied_On]) VALUES (15, N'Sneha', N'Nawar', N'9833003474', N'tec@gmail.com', CAST(N'1984-06-25' AS Date), N'Female', N'Certificate.pdf', N'NA', CAST(N'2023-04-25' AS Date))
INSERT [dbo].[Candidate_Table8] ([can_ID], [can_FirstName], [can_LastName], [can_ContactNo], [can_EmailID], [can_DOB], [can_Gender], [can_FileName], [can_ApprovalStatus], [Applied_On]) VALUES (16, N'Sneha', N'Nawar', N'9833003474', N'nawarsneha@gmail.com', CAST(N'2003-03-25' AS Date), N'Female', N'C Certificate.jpg', N'Approved', CAST(N'2023-04-25' AS Date))
GO
INSERT [dbo].[ContactUs_Table4] ([ID], [Name], [Email_ID], [Subject], [Message], [CreatedOnDate], [RepliedOnDate], [Replied_Msg]) VALUES (1, N'Shreya Kokare', N'shreya@gmail.com', N'Inquiry regarding Payment', N'How are we suppose to pay in cash? Do we have any alternate method for payment rather than online?', CAST(N'2023-04-06T18:29:41.550' AS DateTime), CAST(N'2023-04-06T18:35:52.183' AS DateTime), N'We do not accept any other payment mode. Sorry for your inconvenience')
GO
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (0, N'--SELECT--', NULL)
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (1, N'Python', CAST(N'2023-03-30T10:27:41.977' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (2, N'Java', CAST(N'2023-03-30T10:27:48.897' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (3, N'HTML', CAST(N'2023-03-30T10:55:14.240' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (4, N'C#(Sharp)', CAST(N'2023-03-30T10:55:27.320' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (5, N'C++', CAST(N'2023-03-30T10:55:31.390' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (6, N'DBMS', CAST(N'2023-03-30T10:55:37.690' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (7, N'PHP', CAST(N'2023-03-30T10:55:46.200' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (8, N'Kotlin', CAST(N'2023-04-06T18:37:00.130' AS DateTime))
INSERT [dbo].[Course_Table13] ([ID], [Course], [CreatedOn]) VALUES (9, N'Flutter', CAST(N'2023-04-06T18:38:08.097' AS DateTime))
GO
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (14, 1, N'order_LWRgeUWrK4eAUp', N'Plus', N'149', N'Successful', CAST(N'2023-03-27T11:43:46.767' AS DateTime), N'27-03-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (22, 1, N'order_LXLjZ539Dv03W3', N'Plus', N'149', N'Successful', CAST(N'2023-03-29T18:33:28.730' AS DateTime), N'29-03-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (23, 1, N'order_LYU6SCMMKcyE5R', N'Basic', N'99', N'Successful', CAST(N'2023-04-01T15:23:36.300' AS DateTime), N'01-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (24, 1, N'order_LYUPF8d5cu7yo6', N'Basic', N'99', N'Successful', CAST(N'2023-04-01T15:41:23.427' AS DateTime), N'01-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (25, 1, N'order_LYV2rOLV0E1Elg', N'Basic', N'99', N'Successful', CAST(N'2023-04-01T16:18:54.437' AS DateTime), N'01-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (29, 1, N'order_LYq0HZwaTdLB6u', N'Plus', N'149', N'Successful', CAST(N'2023-04-02T12:48:58.293' AS DateTime), N'02-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (31, 8, N'order_LaUyHHW4taI5v7', N'Plus', N'149', N'Successful', CAST(N'2023-04-06T17:32:47.800' AS DateTime), N'06-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (32, 8, N'order_Lc7zmnMdcwjM7i', N'Pro', N'299', N'Successful', CAST(N'2023-04-10T20:22:12.100' AS DateTime), N'10-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (33, 9, N'order_LhwOeWKWH8fsow', N'Plus', N'149', N'Successful', CAST(N'2023-04-25T12:55:32.170' AS DateTime), N'25-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (34, 10, N'order_LhwRzqLCNrpEYo', N'Plus', N'149', N'Pending', NULL, NULL)
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (35, 10, N'order_LhwjpG7A6FReAU', N'Plus', N'149', N'Successful', CAST(N'2023-04-25T13:15:24.680' AS DateTime), N'25-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (36, 11, N'order_LhxnpMgz3SmRb5', N'Plus', N'149', N'Successful', CAST(N'2023-04-25T14:17:51.310' AS DateTime), N'25-04-2023')
INSERT [dbo].[PaymentDetails_Table11] ([ID], [stu_ID], [Pay_ID], [PlanName], [Amount], [Status], [CreatedDate], [Date]) VALUES (37, 12, N'order_PiABKys1wAuHPj', N'Plus', N'149', N'Successful', CAST(N'2025-01-11T19:37:21.060' AS DateTime), N'11-01-2025')
GO
INSERT [dbo].[PlanPrice_Table10] ([ID], [Basic_Price], [Plus_Price], [Pro_Price], [Updated_On]) VALUES (1, N'99', N'149', N'299', CAST(N'2023-04-06T18:39:23.440' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (502, N'What is the maximum length of a Python identifier?', N'32', N'No fixed length', N'128', N'64', N'2', 38, CAST(N'2023-04-25T13:14:04.440' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (503, N'What will be the output of the following code snippet?  print(2**3 + (5 + 6)**(1 + 1))', N'129', N'121', N'8', N'112', N'2', 38, CAST(N'2023-04-25T13:14:04.463' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (504, N'What will be the datatype of the var in the below code snippet?  var = 10
print(type(var))
var = "Hello"
print(type(var))', N'str and int', N'int and int', N'str and str', N'int and str', N'4', 38, CAST(N'2023-04-25T13:14:04.480' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (505, N'How is a code block indicated in Python', N'Brackets', N'Indentation', N'key', N'None of the above.', N'2', 38, CAST(N'2023-04-25T13:14:04.493' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (506, N'What will be the output of the following code snippet? a = [1, 2, 3]
a = tuple(a)
a[0] = 2
print(a)', N'[2,2,3]', N'(2,2,3)', N'(1,2,3)', N'Error', N'4', 38, CAST(N'2023-04-25T13:14:04.507' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (507, N'What will be the output of the following code snippet? print(type(5 / 2))
print(type(5 // 2))', N'float and int', N'int and float', N'float and float', N'int and int', N'1', 38, CAST(N'2023-04-25T13:14:04.520' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (508, N'What will be the output of the following code snippet?   a = [1, 2, 3, 4, 5]
sum = 0
for ele in a:
   sum += ele 
print(sum)



', N'15', N'0', N'20', N'None of the Above', N'1', 38, CAST(N'2023-04-25T13:14:04.533' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (509, N'What will be the output of the following code snippet?  count = 0
while(True):
   if count % 3 == 0:
       print(count, end = " ")
   if(count > 15):
       break;
   count += 1', N'0 1 2 …...... 15', N'Infinite Loop', N'0 3 6 9 12 15', N'0 3 6 9 12', N'3', 38, CAST(N'2023-04-25T13:14:04.547' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (510, N'Which of the following concepts is not a part of Python?', N'Pointers', N'Loops', N'Dynamic Typing', N'None of the above', N'1', 38, CAST(N'2023-04-25T13:14:04.560' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (511, N'Which of the following statements are used in Exception Handling in Python?', N'try', N'except', N'finally', N'All of the above', N'4', 38, CAST(N'2023-04-25T13:14:04.577' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (512, N'Which of the following types of loops are not supported in Python?', N'for', N'while', N'do-while', N'None of the above', N'3', 38, CAST(N'2023-04-25T13:14:04.590' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (513, N'Which of the following is the proper syntax to check if a particular element is present in a list?', N'if ele in list', N'if not ele not in list', N'Both A and B', N'None of the above', N'2', 38, CAST(N'2023-04-25T13:14:04.610' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (514, N'What will be the output of the following code snippet?  s = {1, 2, 3, 3, 2, 4, 5, 5}
print(s)', N'{1,2,3,3,2,4,5,5}', N'{1,2,3,4,5}', N'None', N'{1,5}', N'2', 38, CAST(N'2023-04-25T13:14:04.627' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (515, N'Which of the following functions converts date to corresponding time in Python?', N'strptime', N'strftime', N'Both A and B', N'None', N'1', 38, CAST(N'2023-04-25T13:14:04.643' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (516, N'As what datatype are the *args stored, when passed into a function?', N'List', N'Tuple', N'Dictionary', N'None', N'2', 38, CAST(N'2023-04-25T13:14:04.660' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (517, N'As what datatype are the *kwargs stored, when passed into a fun', N'List', N'Tuple', N'Dictionary', N'None', N'3', 38, CAST(N'2023-04-25T13:14:04.677' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (518, N'Which of the following blocks will always be executed whether an exception is encountered or not in a program?', N'try', N'except', N'finally', N'none', N'3', 38, CAST(N'2023-04-25T13:14:04.693' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (519, N'What keyword is used in Python to raise exceptions?', N'raise', N'try', N'goto', N'except', N'1', 38, CAST(N'2023-04-25T13:14:04.710' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (520, N'Which of the following is not a valid set operation in python?', N'Union', N'Intersect', N'Difference', N'None of the above', N'4', 38, CAST(N'2023-04-25T13:14:04.727' AS DateTime))
INSERT [dbo].[Questions] ([id], [Questions], [Option1], [Option2], [Option3], [Option4], [Answer], [TestId], [createddate]) VALUES (521, N'Which of the following are valid escape sequences in Python?', N'\n', N'\t', N'\\', N'All of the above', N'4', 38, CAST(N'2023-04-25T13:14:04.740' AS DateTime))
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
INSERT [dbo].[RegisterStu_Table5] ([stu_ID], [stu_FirstName], [stu_LastName], [stu_ContactNo], [stu_EmailID], [stu_DOB], [stu_Gender], [stu_Password], [stu_Ques], [stu_Ans], [PlanName], [PlanStartDate], [PlanEndDate], [IsPlanActive], [Created_On]) VALUES (8, N'Sneha', N'Nawar', N'9833003474', N'ryd@gmail.com', CAST(N'2001-02-10' AS Date), N'Female', N'snehanawar1@', N'What`s the name of the city where you were born?', N'Mumbai', N'Pro', CAST(N'2023-04-10T20:22:12.127' AS DateTime), CAST(N'2024-04-10T20:22:12.127' AS DateTime), 1, CAST(N'2023-04-10T20:20:52.113' AS DateTime))
INSERT [dbo].[RegisterStu_Table5] ([stu_ID], [stu_FirstName], [stu_LastName], [stu_ContactNo], [stu_EmailID], [stu_DOB], [stu_Gender], [stu_Password], [stu_Ques], [stu_Ans], [PlanName], [PlanStartDate], [PlanEndDate], [IsPlanActive], [Created_On]) VALUES (9, N'Sneha', N'Nawar', N'9833003474', N'rdc1@gmail.com', CAST(N'2006-02-25' AS Date), N'Female', N'snehanawar@1', N'What`s was your first pet`s name?', N'Cookie', N'Plus', CAST(N'2023-04-25T12:55:32.250' AS DateTime), CAST(N'2023-10-25T12:55:32.250' AS DateTime), 1, CAST(N'2023-04-25T12:53:29.147' AS DateTime))
INSERT [dbo].[RegisterStu_Table5] ([stu_ID], [stu_FirstName], [stu_LastName], [stu_ContactNo], [stu_EmailID], [stu_DOB], [stu_Gender], [stu_Password], [stu_Ques], [stu_Ans], [PlanName], [PlanStartDate], [PlanEndDate], [IsPlanActive], [Created_On]) VALUES (10, N'Sneha', N'Nawar', N'9833003474', N'tgb@gmail.com', CAST(N'2009-02-25' AS Date), N'Female', N'snehanawar1@', N'What`s the name of the city where you were born?', N'Mumbai', N'Plus', CAST(N'2023-04-25T13:15:24.690' AS DateTime), CAST(N'2023-10-25T13:15:24.690' AS DateTime), 1, CAST(N'2023-04-25T12:57:45.673' AS DateTime))
INSERT [dbo].[RegisterStu_Table5] ([stu_ID], [stu_FirstName], [stu_LastName], [stu_ContactNo], [stu_EmailID], [stu_DOB], [stu_Gender], [stu_Password], [stu_Ques], [stu_Ans], [PlanName], [PlanStartDate], [PlanEndDate], [IsPlanActive], [Created_On]) VALUES (11, N'Sneha', N'Nawar', N'9833003474', N'nawar.sneha154@sathayecollege.edu.in', CAST(N'2005-03-25' AS Date), N'Female', N'snehanawar1@', N'What`s the name of the city where you were born?', N'Mumbai', N'Plus', CAST(N'2023-04-25T14:17:51.327' AS DateTime), CAST(N'2023-10-25T14:17:51.327' AS DateTime), 1, CAST(N'2023-04-25T14:16:24.403' AS DateTime))
INSERT [dbo].[RegisterStu_Table5] ([stu_ID], [stu_FirstName], [stu_LastName], [stu_ContactNo], [stu_EmailID], [stu_DOB], [stu_Gender], [stu_Password], [stu_Ques], [stu_Ans], [PlanName], [PlanStartDate], [PlanEndDate], [IsPlanActive], [Created_On]) VALUES (12, N'Sneha', N'Nawar', N'9833003474', N'nawarsneha@gmail.com', CAST(N'2002-10-03' AS Date), N'Female', N'Snehanawar@2002', N'What`s was your first pet`s name?', N'Cookie', N'Plus', CAST(N'2025-01-11T19:37:21.083' AS DateTime), CAST(N'2025-07-11T19:37:21.083' AS DateTime), 1, CAST(N'2025-01-11T19:36:04.977' AS DateTime))
GO
INSERT [dbo].[RegisterTut_Table1] ([tut_ID], [tut_FirstName], [tut_LastName], [tut_ContactNo], [tut_EmailID], [tut_Gender], [tut_Password], [tut_Ques], [tut_Ans], [Created_On]) VALUES (2, N'Sneha', N'Nawar', N'8268378262', N'nawar.sneha154@sathayecollege.edu.in', N'Female', N'nawarsneha1@', N'What`s was your first pet`s name?', N'Cookie', CAST(N'2023-03-26' AS Date))
INSERT [dbo].[RegisterTut_Table1] ([tut_ID], [tut_FirstName], [tut_LastName], [tut_ContactNo], [tut_EmailID], [tut_Gender], [tut_Password], [tut_Ques], [tut_Ans], [Created_On]) VALUES (3, N'Sneha', N'Nawar', N'7042374890', N'abc@yahoo.com', N'Female', N'asdfghjkl1@', N'What`s the name of the city where you were born?', N'Gujrat', CAST(N'2023-04-04' AS Date))
INSERT [dbo].[RegisterTut_Table1] ([tut_ID], [tut_FirstName], [tut_LastName], [tut_ContactNo], [tut_EmailID], [tut_Gender], [tut_Password], [tut_Ques], [tut_Ans], [Created_On]) VALUES (16, N'Sneha', N'Nawar', N'9833003474', N'nawarsneha@gmail.com', N'Female', N'snehanawar1@', N'What`s the name of the city where you were born?', N'Mumbai', CAST(N'2023-04-25' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ResultTable] ON 

INSERT [dbo].[ResultTable] ([id], [Test_Id], [stu_ID], [TotalMarks], [IsPass], [CreatedOn], [TotalPercentage], [CorretAnsCount], [TotalQuession]) VALUES (44, 36, 8, N'88', 1, CAST(N'2023-04-06T17:48:47.000' AS DateTime), N'88', 22, 25)
INSERT [dbo].[ResultTable] ([id], [Test_Id], [stu_ID], [TotalMarks], [IsPass], [CreatedOn], [TotalPercentage], [CorretAnsCount], [TotalQuession]) VALUES (45, 38, 11, N'45', 1, CAST(N'2023-04-25T14:39:14.503' AS DateTime), N'45', 9, 20)
INSERT [dbo].[ResultTable] ([id], [Test_Id], [stu_ID], [TotalMarks], [IsPass], [CreatedOn], [TotalPercentage], [CorretAnsCount], [TotalQuession]) VALUES (46, 38, 12, N'25', 0, CAST(N'2025-05-10T21:30:56.310' AS DateTime), N'25', 5, 20)
INSERT [dbo].[ResultTable] ([id], [Test_Id], [stu_ID], [TotalMarks], [IsPass], [CreatedOn], [TotalPercentage], [CorretAnsCount], [TotalQuession]) VALUES (47, 38, 12, N'100', 1, CAST(N'2025-05-10T21:34:54.030' AS DateTime), N'100', 20, 20)
SET IDENTITY_INSERT [dbo].[ResultTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Resume] ON 

INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (1, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'fffgg', N'', N'', N'', N'', N'', N'', N'', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'', CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (2, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'fffgg', N'', N'', N'', N'', N'', N'', N'', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'', CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (3, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'fffgg', N'', N'', N'', N'', N'', N'', N'', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'', CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (4, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'fffgg', N'hhhhh', N'hhhh', N'hhhhh', N'hhhh', N'jjjj', N'rxrfchbvsdsf', N'hhhhhh', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'dswfgh', CAST(N'2023-03-30T00:00:00.0000000' AS DateTime2), N'ctfyujh', N'2022', N'12')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (5, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'fffgg', N'hhhhh', N'hhhh', N'hhhhh', N'hhhh', N'jjjj', N'rxrfchbvsdsf', N'', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'dswfgh', CAST(N'2023-03-30T00:00:00.0000000' AS DateTime2), N'ctfyujh', N'2022', N'12')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (6, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'fffgg', N'hhhhh', N'hhhh', N'hhhhh', N'hhhh', N'jjjj', N'rxrfchbvsdsf', N'', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'dswfgh', CAST(N'2023-03-30T00:00:00.0000000' AS DateTime2), N'ctfyujh', N'2022', N'12')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (7, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'', N'', N'', N'', N'', N'', N'', N'', N'addff', N'xffewwf', CAST(5863 AS Numeric(18, 0)), N'gftt', N'255', N'', CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (8, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'Dynamics 365', N'Microsoft', N'Developer', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2022 AS Numeric(18, 0)), N'English', N'55%', N'CCourse', CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), N'Tools', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (9, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'Dynamics 365', N'Microsoft', N'Developer', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2022 AS Numeric(18, 0)), N'English', N'55%', N'C Course', CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), N'Tools', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (10, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'Dynamics 365', N'Microsoft', N'Developer', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2022 AS Numeric(18, 0)), N'English', N'55%', N'C Course', CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), N'Tools', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (11, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'Dynamics 365', N'Microsoft', N'Developer', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2022 AS Numeric(18, 0)), N'English', N'55%', N'C Course', CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), N'Tools', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (12, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'Dynamics 365', N'Microsoft', N'Developer', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2022 AS Numeric(18, 0)), N'English', N'55%', N'C Course', CAST(N'2023-04-02T00:00:00.0000000' AS DateTime2), N'Tools', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (13, N'Shraddha', N'Santosh', N'Malewadkar', N'malewadkarshraddha@gmail.com', N'7301150682', N'Bandra East', N'Programming', N'', N'Microsoft Dynamics 365', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2023 AS Numeric(18, 0)), N'English', N'80%', N'C Course', CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), N'C(Sharp) Programming', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (14, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'', N'', N'', N'', N'', N'', N'', N'', N'Graduate', N'Maharashtra', CAST(2022 AS Numeric(18, 0)), N'English', N'80%', N'', CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (15, N'Shraddha', N'Santosh', N'Malewadkar', N'malewadkarshraddha@gmail.com', N'7301150682', N'Bandra East', N'Programming', N'', N'Microsoft Dynamics 365', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2023 AS Numeric(18, 0)), N'English', N'80%', N'C Course', CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), N'C(Sharp) Programming', N'2022', N'2yrs')
INSERT [dbo].[Resume] ([ResumeID], [FirstName], [MiddleName], [LastName], [EmailAddr], [ContactNo], [Address], [Keyskills], [Employment], [SoftwareDev], [ProjectTitle], [ProjectTag], [EnterClient], [ProjectStatus], [NatureOfEmp], [EducationLevel], [BoardName], [PassingOutYear], [Medium], [PassingPer], [CertificateName], [CertifiedOn], [SkillName], [LastUsed], [WorkExperience]) VALUES (16, N'Sneha', N'Jiaram', N'Nawar', N'nawarsneha@gmail.com', N'9833004363', N'D/2 Room no-7, Best Staff Colony, Best Nagar, Goregaon west', N'Dynamics 365', N'', N'Microsoft Dynamics 365', N'E learning', N'Eduspire', N'College', N'In Progress', N'Full Time', N'Graduate', N'Maharashtra', CAST(2023 AS Numeric(18, 0)), N'English', N'80%', N'C Course', CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2), N'C(Sharp) Programming', N'2022', N'2yrs')
SET IDENTITY_INSERT [dbo].[Resume] OFF
GO
SET IDENTITY_INSERT [dbo].[TestDetails] ON 

INSERT [dbo].[TestDetails] ([id], [TestName], [Courses], [PassingPer], [TestStartDate], [TestEndDate], [TestDuration], [createdDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (38, N'Python Test', N'Python', N'35', N'25-04-2023', CAST(N'2023-01-05' AS Date), N'00:30', CAST(N'2023-04-25T13:14:04.430' AS DateTime), 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestDetails] OFF
GO
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (1, 2, N'Introduction to C++ Variable Types', N'C++', N'Learn C++ variable types', N'<Video width=400 Controls><Source src=VideoFile/CPPVariable.mp4 type=video/mp4></video>', CAST(N'2023-04-25T13:11:38.603' AS DateTime), NULL)
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (2, 2, N'Introduction to C# hello world', N'C#(Sharp)', N'Learn C# Hello World', N'<Video width=400 Controls><Source src=VideoFile/CSharpHelloWorld.mp4 type=video/mp4></video>', CAST(N'2023-04-25T13:13:10.450' AS DateTime), NULL)
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (3, 0, N'Introduction to C# ifelse', N'C#(Sharp)', N'learn c# ifelse', N'<Video width=400 Controls><Source src=VideoFile/CSharpIfElse.mp4 type=video/mp4></video>', CAST(N'2023-04-25T14:15:05.550' AS DateTime), NULL)
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (4, 16, N'Introduction to C# ifelse', N'C#(Sharp)', N'', N'<Video width=400 Controls><Source src=VideoFile/CSharpIfElse.mp4 type=video/mp4></video>', CAST(N'2023-04-25T14:19:37.007' AS DateTime), NULL)
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (5, 16, N'Introduction to Csharp ifelse', N'C#(Sharp)', N'', N'<Video width=400 Controls><Source src=VideoFile/CSharpIfElse.mp4 type=video/mp4></video>', CAST(N'2023-04-25T14:21:02.643' AS DateTime), NULL)
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (6, 16, N'Learn Python - Full Course for Beginners [Tutorial]', N'Python', N'', N'<Video width=400 Controls><Source src=VideoFile/CSharpHelloWorld.mp4 type=video/mp4></video>', CAST(N'2023-04-26T14:19:26.177' AS DateTime), NULL)
INSERT [dbo].[Video_Table12] ([ID], [tut_ID], [Title], [VideoOnCourse], [Description], [VideoPath], [UploadedOn], [KeywordSearch]) VALUES (7, 16, N'Learn Java - Full Course for Beginners [Tutorial]', N'C#(Sharp)', N'', N'<Video width=400 Controls><Source src=VideoFile/CSharpIfElse.mp4 type=video/mp4></video>', CAST(N'2023-04-26T14:19:56.223' AS DateTime), NULL)
GO
ALTER TABLE [dbo].[Questions] ADD  CONSTRAINT [DF_Test_createddate]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[ResultTable] ADD  CONSTRAINT [DF_ResultTable_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TestDetails] ADD  CONSTRAINT [DF_TestDetails_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
USE [master]
GO
ALTER DATABASE [ProjectDB] SET  READ_WRITE 
GO
