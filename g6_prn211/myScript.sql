USE [master]
GO
/****** Object:  Database [OLDB]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE DATABASE [OLDB]

ALTER DATABASE [OLDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OLDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OLDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OLDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OLDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OLDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OLDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OLDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OLDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OLDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OLDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OLDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OLDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OLDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OLDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OLDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OLDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OLDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OLDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OLDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OLDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OLDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OLDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [OLDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OLDB] SET RECOVERY FULL 
GO
ALTER DATABASE [OLDB] SET  MULTI_USER 
GO
ALTER DATABASE [OLDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OLDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OLDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OLDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OLDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OLDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'OLDB', N'ON'
GO
ALTER DATABASE [OLDB] SET QUERY_STORE = OFF
GO
USE [OLDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserCourse]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserCourse](
	[AppUsersId] [nvarchar](450) NOT NULL,
	[CoursesId] [int] NOT NULL,
 CONSTRAINT [PK_AppUserCourse] PRIMARY KEY CLUSTERED 
(
	[AppUsersId] ASC,
	[CoursesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserQuestion]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserQuestion](
	[AppUsersId] [nvarchar](450) NOT NULL,
	[QuestionsID] [int] NOT NULL,
 CONSTRAINT [PK_AppUserQuestion] PRIMARY KEY CLUSTERED 
(
	[AppUsersId] ASC,
	[QuestionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserQuestions]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUsersId] [nvarchar](450) NOT NULL,
	[QuestionsId] [int] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[TrueOrFalse] [bit] NOT NULL,
 CONSTRAINT [PK_AppUserQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapters]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_Chapters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorrectAnswers]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorrectAnswers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_CorrectAnswers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseLearnWhats]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseLearnWhats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_CourseLearnWhats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseRequirements]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseRequirements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_CourseRequirements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseRouteTypeItem]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseRouteTypeItem](
	[CoursesId] [int] NOT NULL,
	[RouteTypeItemsID] [int] NOT NULL,
 CONSTRAINT [PK_CourseRouteTypeItem] PRIMARY KEY CLUSTERED 
(
	[CoursesId] ASC,
	[RouteTypeItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[Level] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[NumOfLike] [int] NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[ChapterID] [int] NOT NULL,
 CONSTRAINT [PK_Lessons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[explain] [nvarchar](max) NOT NULL,
	[LessonID] [int] NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteTypeItems]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteTypeItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[RouteTypeID] [int] NOT NULL,
 CONSTRAINT [PK_RouteTypeItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteTypes]    Script Date: 7/21/2023 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Description1] [nvarchar](max) NOT NULL,
	[Description2] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_RouteTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Answers_QuestionID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Answers_QuestionID] ON [dbo].[Answers]
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUserCourse_CoursesId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserCourse_CoursesId] ON [dbo].[AppUserCourse]
(
	[CoursesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUserQuestion_QuestionsID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserQuestion_QuestionsID] ON [dbo].[AppUserQuestion]
(
	[QuestionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AppUserQuestions_AppUsersId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserQuestions_AppUsersId] ON [dbo].[AppUserQuestions]
(
	[AppUsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUserQuestions_QuestionsId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserQuestions_QuestionsId] ON [dbo].[AppUserQuestions]
(
	[QuestionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Chapters_CourseID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Chapters_CourseID] ON [dbo].[Chapters]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CorrectAnswers_QuestionID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_CorrectAnswers_QuestionID] ON [dbo].[CorrectAnswers]
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseLearnWhats_CourseID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_CourseLearnWhats_CourseID] ON [dbo].[CourseLearnWhats]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseRequirements_CourseID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_CourseRequirements_CourseID] ON [dbo].[CourseRequirements]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseRouteTypeItem_RouteTypeItemsID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_CourseRouteTypeItem_RouteTypeItemsID] ON [dbo].[CourseRouteTypeItem]
(
	[RouteTypeItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lessons_ChapterID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Lessons_ChapterID] ON [dbo].[Lessons]
(
	[ChapterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_LessonID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_LessonID] ON [dbo].[Questions]
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RouteTypeItems_RouteTypeID]    Script Date: 7/21/2023 11:35:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_RouteTypeItems_RouteTypeID] ON [dbo].[RouteTypeItems]
(
	[RouteTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions_QuestionID] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions_QuestionID]
GO
ALTER TABLE [dbo].[AppUserCourse]  WITH CHECK ADD  CONSTRAINT [FK_AppUserCourse_AspNetUsers_AppUsersId] FOREIGN KEY([AppUsersId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserCourse] CHECK CONSTRAINT [FK_AppUserCourse_AspNetUsers_AppUsersId]
GO
ALTER TABLE [dbo].[AppUserCourse]  WITH CHECK ADD  CONSTRAINT [FK_AppUserCourse_Courses_CoursesId] FOREIGN KEY([CoursesId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserCourse] CHECK CONSTRAINT [FK_AppUserCourse_Courses_CoursesId]
GO
ALTER TABLE [dbo].[AppUserQuestion]  WITH CHECK ADD  CONSTRAINT [FK_AppUserQuestion_AspNetUsers_AppUsersId] FOREIGN KEY([AppUsersId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserQuestion] CHECK CONSTRAINT [FK_AppUserQuestion_AspNetUsers_AppUsersId]
GO
ALTER TABLE [dbo].[AppUserQuestion]  WITH CHECK ADD  CONSTRAINT [FK_AppUserQuestion_Questions_QuestionsID] FOREIGN KEY([QuestionsID])
REFERENCES [dbo].[Questions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserQuestion] CHECK CONSTRAINT [FK_AppUserQuestion_Questions_QuestionsID]
GO
ALTER TABLE [dbo].[AppUserQuestions]  WITH CHECK ADD  CONSTRAINT [FK_AppUserQuestions_AspNetUsers_AppUsersId] FOREIGN KEY([AppUsersId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserQuestions] CHECK CONSTRAINT [FK_AppUserQuestions_AspNetUsers_AppUsersId]
GO
ALTER TABLE [dbo].[AppUserQuestions]  WITH CHECK ADD  CONSTRAINT [FK_AppUserQuestions_Questions_QuestionsId] FOREIGN KEY([QuestionsId])
REFERENCES [dbo].[Questions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserQuestions] CHECK CONSTRAINT [FK_AppUserQuestions_Questions_QuestionsId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Chapters]  WITH CHECK ADD  CONSTRAINT [FK_Chapters_Courses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chapters] CHECK CONSTRAINT [FK_Chapters_Courses_CourseID]
GO
ALTER TABLE [dbo].[CorrectAnswers]  WITH CHECK ADD  CONSTRAINT [FK_CorrectAnswers_Questions_QuestionID] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CorrectAnswers] CHECK CONSTRAINT [FK_CorrectAnswers_Questions_QuestionID]
GO
ALTER TABLE [dbo].[CourseLearnWhats]  WITH CHECK ADD  CONSTRAINT [FK_CourseLearnWhats_Courses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseLearnWhats] CHECK CONSTRAINT [FK_CourseLearnWhats_Courses_CourseID]
GO
ALTER TABLE [dbo].[CourseRequirements]  WITH CHECK ADD  CONSTRAINT [FK_CourseRequirements_Courses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseRequirements] CHECK CONSTRAINT [FK_CourseRequirements_Courses_CourseID]
GO
ALTER TABLE [dbo].[CourseRouteTypeItem]  WITH CHECK ADD  CONSTRAINT [FK_CourseRouteTypeItem_Courses_CoursesId] FOREIGN KEY([CoursesId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseRouteTypeItem] CHECK CONSTRAINT [FK_CourseRouteTypeItem_Courses_CoursesId]
GO
ALTER TABLE [dbo].[CourseRouteTypeItem]  WITH CHECK ADD  CONSTRAINT [FK_CourseRouteTypeItem_RouteTypeItems_RouteTypeItemsID] FOREIGN KEY([RouteTypeItemsID])
REFERENCES [dbo].[RouteTypeItems] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseRouteTypeItem] CHECK CONSTRAINT [FK_CourseRouteTypeItem_RouteTypeItems_RouteTypeItemsID]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Chapters_ChapterID] FOREIGN KEY([ChapterID])
REFERENCES [dbo].[Chapters] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Chapters_ChapterID]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Lessons_LessonID] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lessons] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Lessons_LessonID]
GO
ALTER TABLE [dbo].[RouteTypeItems]  WITH CHECK ADD  CONSTRAINT [FK_RouteTypeItems_RouteTypes_RouteTypeID] FOREIGN KEY([RouteTypeID])
REFERENCES [dbo].[RouteTypes] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RouteTypeItems] CHECK CONSTRAINT [FK_RouteTypeItems_RouteTypes_RouteTypeID]
GO
USE [master]
GO
ALTER DATABASE [OLDB] SET  READ_WRITE 
GO
USE [OLDB]
GO
-- Insert into table RouteType
insert into RouteTypes( name,image, description1, description2,status) Values( N'Front-end-development', 'https://files.fullstack.edu.vn/f8-prod/learning-paths/2/63b4642136f3e.png', N'Lập trình viên Front-end là người xây dựng ra giao diện websites. Trong phần này F8 sẽ chia sẻ cho bạn lộ trình để trở thành lập trình viên Front-end nhé.', N'Hầu hết các websites hoặc ứng dụng di động đều có 2 phần là Front-end và Back-end. Front-end là phần giao diện người dùng nhìn thấy và có thể tương tác, đó chính là các ứng dụng mobile hay những website bạn đã từng sử dụng. Vì vậy, nhiệm vụ của lập trình viên Front-end là xây dựng các giao diện đẹp, dễ sử dụng và tối ưu trải nghiệm người dùng. Tại Việt Nam, lương trung bình cho lập trình viên front-end vào khoảng 16.000.000đ / tháng. Dưới đây là các khóa học F8 đã tạo ra dành cho bất cứ ai theo đuổi sự nghiệp trở thành một lập trình viên Front-end. Các khóa học có thể chưa đầy đủ, F8 vẫn đang nỗ lực hoàn thiện trong thời gian sớm nhất.',0);
insert into RouteTypes( name,image, description1, description2,status) Values( N'Back-end-development', 'https://files.fullstack.edu.vn/f8-prod/learning-paths/3/63b4641535b16.png', N'Trái với Front-end thì lập trình viên Back-end là người làm việc với dữ liệu, công việc thường nặng tính logic hơn. Chúng ta sẽ cùng tìm hiểu lộ trình học Back-end nhé.', N'Hầu hết các websites hoặc ứng dụng di động đều có 2 phần là Front-end và Back-end. Front-end là phần giao diện người dùng nhìn thấy và có thể tương tác. Back-end là nơi xử lý dữ liệu và lưu trữ. Vì vậy, nhiệm vụ của lập trình viên Back-end là phân tích thiết kế dữ liệu, xử lý logic nghiệp vụ của các chức năng trong ứng dụng. Tại Việt Nam, lương trung bình cho lập trình viên Back-end vào khoảng 19.000.000đ / tháng. Dưới đây là các khóa học F8 đã tạo ra dành cho bất cứ ai theo đuổi sự nghiệp trở thành một lập trình viên Back-end. Các khóa học có thể chưa đầy đủ, F8 vẫn đang nỗ lực hoàn thiện trong thời gian sớm nhất.',0);

-- Insert into table RouteTypeItems
insert into RouteTypeItems( Name,Description,RouteTypeID) Values( N'Tìm hiểu về ngành IT', N'Để theo ngành IT - Phần mềm cần rèn luyện những kỹ năng nào? Bạn đã có sẵn tố chất phù hợp với ngành chưa? Cùng thăm quan các công ty IT và tìm hiểu về văn hóa, tác phong làm việc của ngành này nhé các bạn.', '1' );
insert into RouteTypeItems( name,description,routeTypeID) Values( N'HTML và CSS', N'Để học web Front-end chúng ta luôn bắt đầu với ngôn ngữ HTML và CSS, đây là 2 ngôn ngữ có mặt trong mọi website trên internet. Trong khóa học này F8 sẽ chia sẻ từ những kiến thức cơ bản nhất. Sau khóa học này bạn sẽ tự làm được 2 giao diện websites là The Band và Shopee.',1);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'JavaScript', N'Với HTML, CSS bạn mới chỉ xây dựng được các websites tĩnh, chỉ bao gồm phần giao diện và gần như chưa có xử lý tương tác gì. Để thêm nhiều chức năng phong phú và tăng tính tương tác cho website bạn cần học Javascript.',1);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'Sử dụng Ubuntu/Linux', N'Cách làm việc với hệ điều hành Ubuntu/Linux qua Windows Terminal & WSL. Khi đi làm, nhiều trường hợp bạn cần nắm vững các dòng lệnh cơ bản của Ubuntu/Linux.',1);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'Libraries and Frameworks', N'Một websites hay ứng dụng hiện đại rất phức tạp, chỉ sử dụng HTML, CSS, Javascript theo cách code thuần (tự code từ đầu tới cuối) sẽ rất khó khăn. Vì vậy các Libraries, Frameworks ra đời nhằm đơn giản hóa, tiết kiệm chi phí và thời gian để hoàn thành một sản phẩm website hoặc ứng dụng mobile.',1);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'Tìm hiểu về ngành IT', N'Để theo ngành IT - Phần mềm cần rèn luyện những kỹ năng nào? Bạn đã có sẵn tố chất phù hợp với ngành chưa? Cùng thăm quan các công ty IT và tìm hiểu về văn hóa, tác phong làm việc của ngành này nhé các bạn.', 2 );
insert into RouteTypeItems( name,description,routeTypeID) Values( N'HTML và CSS', N'Để học web Front-end chúng ta luôn bắt đầu với ngôn ngữ HTML và CSS, đây là 2 ngôn ngữ có mặt trong mọi website trên internet. Dù bạn có theo Back-end thì công việc của bạn nhiều khi vẫn cần phải ghép dữ liệu với HTML, CSS.',2);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'Ngôn ngữ lập trình', N'Có rất nhiều ngôn ngữ để bạn có thể làm việc với Back-end, tuy nhiên bạn không cần phải học tất cả. Bạn chỉ cần tập trung vào 1 ngôn ngữ là có thể làm việc tốt. Tại đây chúng ta sẽ bắt đầu với ngôn ngữ lập trình Javascript.',2);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'Sử dụng Ubuntu/Linux', N'Cách làm việc với hệ điều hành Ubuntu/Linux qua Windows Terminal & WSL. Khi đi làm, nhiều trường hợp bạn cần nắm vững các dòng lệnh cơ bản của Ubuntu/Linux.',2);
insert into RouteTypeItems( name,description,routeTypeID) Values( N'Libraries and Frameworks', N'Một ứng dụng Back-end hiện đại có thể rất phức tạp, việc sử dụng code thuần (tự tay code từ đầu) không phải là một lựa chọn tốt. Vì vậy các Libraries và Frameworks ra đời nhằm đơn giản hóa, tiết kiệm thời gian và tiền bạc để nhanh chóng tạo ra được sản phẩm cuối cùng.',2);


-- Insert Course table
insert into Courses(title, price, isPublished, level, description, image) Values( N'HTML CSS từ Zero đến Hero', 0, 1, 'Easy', N'Trong khóa này chúng ta sẽ cùng nhau xây dựng giao diện 2 trang web là The Band & Shopee.' , N'https://files.fullstack.edu.vn/f8-prod/courses/2.png');
insert into Courses(title, price, isPublished, level, description, image) Values(N'Lập trình JavaScript cơ bản ', 0, 1,'Medium', N'Học Javascript cơ bản phù hợp cho người chưa từng học lập trình. Với hơn 100 bài học và có bài tập thực hành sau mỗi bài học.', N'https://files.fullstack.edu.vn/f8-prod/courses/1.png');
insert into Courses(title, price, isPublished, level, description, image) Values(N'Xây Dựng Website với ReactJS', 0, 1,'Hard',  N'Khóa học ReactJS từ cơ bản tới nâng cao, kết quả của khóa học này là bạn có thể làm hầu hết các dự án thường gặp với ReactJS.', N'https://files.fullstack.edu.vn/f8-prod/courses/13/13.png');
insert into Courses(title, price, isPublished, level, description, image) Values( N'Node & ExpressJS', 0, 1,'Hard', N'Học Back-end với Node & ExpressJS framework, hiểu các khái niệm khi làm Back-end và xây dựng RESTful API cho trang web.', N'https://files.fullstack.edu.vn/f8-prod/courses/6.png');
insert into Courses(title, price, isPublished, level, description, image) Values( N'HTML CSS Pro', 500000, 1,'Easy', N'Cách dễ nhất để học HTML CSS cho người mới bắt đầu!', 'https://files.fullstack.edu.vn/f8-prod/courses/15/62f13d2424a47.png');
insert into Courses(title, price, isPublished, level, description, image) Values( N'Responsive Với Grid System', 0, 1,'Hard', N'Trong khóa này chúng ta sẽ học về cách xây dựng giao diện web responsive với Grid System, tương tự Bootstrap 4.', N'https://files.fullstack.edu.vn/f8-prod/courses/3.png');
insert into Courses(title, price, isPublished, level, description, image) Values( N'Kiến Thức Nhập Môn IT', 0, 1,'Easy', N'Để có cái nhìn tổng quan về ngành IT - Lập trình web các bạn nên xem các videos tại khóa này trước nhé.', N'https://files.fullstack.edu.vn/f8-prod/courses/7.png');
select * from Courses
-- insert in to table Chapter
-- Course ID: 1
insert into Chapters (Name, CourseID) Values (N'1. Bắt đầu', 1);
insert into Chapters (Name, CourseID) Values (N'1. Làm quen với HTML', 1);
insert into Chapters (Name, CourseID) Values (N'1. Làm quen với CSS', 1);
insert into Chapters (Name, CourseID) Values (N'1. Đệm viền và khoang lề', 1);
insert into Chapters (Name, CourseID) Values (N'1. Thuộc tính tạo nền', 1);

-- insert in to table lesson
-- Chapter 1
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Bạn sẽ làm được gì sau khóa học', '', '', '', '', 'https://www.youtube.com/embed/R6plN3FvzFY', 1);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Tìm hiểu về HTML, CSS', '', '', '', '', 'https://www.youtube.com/embed/zwsPND378OQ', 1);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Làm quen với Dev tools','', '', '', '', 'https://www.youtube.com/embed/7BJiPyN4zZ0', 1);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Cài đặt VS Code, Page Ruler extension', '', '', '', '', 'https://www.youtube.com/embed/ZotVkQDC6mU', 1);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Khắc phục lỗi cài đặt Page Ruler Redux ','', '', '', '', 'https://www.youtube.com/embed/ZotVkQDC6mU', 1);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Bạn sẽ làm được gì sau khóa học','', '', '', '', 'https://www.youtube.com/embed/ZotVkQDC6mU', 1);
-- Chapter 2
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Cấu trúc 1 file HTML',  '', '', '', 'practice', 'https://www.youtube.com/embed/LYnrFSGLCl8', 2);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Comments trong HTML',  '', '', '', 'practice', 'https://www.youtube.com/embed/JG0pdfdKjgQ', 2);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Thẻ HTML thông dụng',  '', '', '', 'practice', 'https://www.youtube.com/embed/AzmdwZ6e_aM', 2);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Attribute trong HTML',  '', '', '', 'practice', 'https://www.youtube.com/embed/UYpIh5pIkSA', 2);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'ID và Class',  '', '', '', 'practice','https://www.youtube.com/embed/4J6d8cr0X48', 2);
delete from Lessons
where chapterID = 22
-- Chapter 3
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Sử dụng CSS trong HTML',  '', '', '', '', 'https://www.youtube.com/embed/NsSsJTg29oE', 3);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'CSS Padding',  '', '', '', '', 'https://www.youtube.com/embed/aj-lD4XXr8A', 3);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'CSS Border',  '', '', '', '', 'https://www.youtube.com/embed/VbzOimNAOxE', 3);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'CSS Margin',  '', '', '', '','https://www.youtube.com/embed/8X48l0CK5_4', 3);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'CSS-Box-sizing',  '', '', '', '', 'https://www.youtube.com/embed/bv16wjxgV4U', 3);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'CSS-Background-clip',  '', '', '', '', 'https://www.youtube.com/embed/hMWhvbCJIq8', 3);
-- Chapter 4
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Giới thiệu Flexbox',  '', '', '', '', 'https://www.youtube.com/embed/bVUN6nS82k8', 4);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Ví dụ dùng BEM tạo buttons',  '', '', '', '', 'https://www.youtube.com/embed/k1ZH5Mlj3tw', 4);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Ví dụ dùng BEM tạo Toast Message UI',  '', '', '', '', 'https://www.youtube.com/embed/7c7ABhaQJGM', 4);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'BEM - Khi các Block lồng nhau thì đặt tên như thế nào?',  '', '', '', '', 'https://www.youtube.com/embed/IddL557icoc', 4);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Dựng source base',  '', '', '', '', 'https://www.youtube.com/embed/1xNzl5SYjPo', 4);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Dựng khung web',  '', '', '', '', 'https://www.youtube.com/embed/-umvdHAfR6E', 4);
-- Chapter 5
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Dựng khung phần danh mục',  '', '', '', '', 'https://www.youtube.com/embed/9_9X9GzVOj0', 5);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Danh mục - base responsive',  '', '', '', '', 'https://www.youtube.com/embed/f4LOGq3v0C0', 5);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Dựng khung: Sắp xếp, lọc sản phẩm',  '', '', '', '', 'https://www.youtube.com/embed/N7T_9a1nZmk', 5);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Sản phẩm: CSS nhãn giảm giá',  '', '', '', '', 'https://www.youtube.com/embed/XL0RM7ZMKC8', 5);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Sản phẩm CSS - Phần 1',  '', '', '', '', 'https://www.youtube.com/embed/3E_8Pnjnrms', 5);
insert into Lessons(Name, Content, Date, NumOfLike, Type, Link, ChapterID) Values(N'Sản phẩm CSS - Phần 2',  '', '', '', '', 'https://www.youtube.com/embed/G9Lx0ejUgzE', 5);

-- insert into table CourseRouteTypeItem
insert into CourseRouteTypeItem( RouteTypeItemsID,CoursesId ) Values(1,7);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(2,1);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(3,2);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(4,6);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(5,3);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(6,7);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(7,1);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(7,5);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(8,2);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(9,6);
insert into CourseRouteTypeItem( RouteTypeItemsID ,CoursesId ) Values(10,3);
