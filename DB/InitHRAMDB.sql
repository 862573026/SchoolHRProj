USE [master]
GO
/****** Object:  Database [HRAM-SNU_DB]    Script Date: 2017/4/30 9:43:40 ******/
CREATE DATABASE [HRAM-SNU_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRAM-SNU_DB', FILENAME = N'D:\Database\HRAM-SNU_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRAM-SNU_DB_log', FILENAME = N'D:\Database\HRAM-SNU_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRAM-SNU_DB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRAM-SNU_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRAM-SNU_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRAM-SNU_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRAM-SNU_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HRAM-SNU_DB] SET  MULTI_USER 
GO
ALTER DATABASE [HRAM-SNU_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRAM-SNU_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRAM-SNU_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HRAM-SNU_DB', N'ON'
GO
USE [HRAM-SNU_DB]
GO
/****** Object:  Table [dbo].[T_ADImgList]    Script Date: 2017/4/30 9:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ADImgList](
	[pkId] [nvarchar](50) NOT NULL,
	[pmADImgListID] [nvarchar](50) NOT NULL,
	[pmADImgListURL] [text] NOT NULL,
	[pmADImgListNum] [bigint] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_ADImgList] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DMType]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DMType](
	[pkId] [nvarchar](50) NOT NULL,
	[dmTypeID] [nvarchar](50) NOT NULL,
	[dmTypeValue] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_DMType] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DownloadManage]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DownloadManage](
	[pkId] [nvarchar](50) NOT NULL,
	[uLoginName] [nvarchar](50) NOT NULL,
	[dmTitle] [nvarchar](50) NOT NULL,
	[dmTypeID] [nvarchar](50) NOT NULL,
	[dmFileURL] [text] NULL,
	[dmDownloadNum] [bigint] NULL,
	[dmUploadTime] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_DownloadManage] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_FLType]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_FLType](
	[pkId] [nvarchar](50) NOT NULL,
	[flTypeID] [nvarchar](50) NOT NULL,
	[flTypeValue] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_FLType] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_FriendlyLink]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_FriendlyLink](
	[pkId] [nvarchar](50) NOT NULL,
	[uLoginName] [nvarchar](50) NOT NULL,
	[flName] [nvarchar](50) NOT NULL,
	[flTypeID] [nvarchar](50) NOT NULL,
	[flURL] [text] NOT NULL,
	[flImgURL] [text] NOT NULL,
	[flAddTime] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_FriendlyLink] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Member]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Member](
	[pkId] [nvarchar](50) NOT NULL,
	[uLoginName] [nvarchar](50) NOT NULL,
	[mReviewResultID] [nvarchar](50) NOT NULL,
	[mApplyTime] [nvarchar](50) NOT NULL,
	[mName] [nvarchar](50) NOT NULL,
	[mTypeID] [nvarchar](50) NOT NULL,
	[mOrganizationCode] [nvarchar](50) NOT NULL,
	[mAddress] [text] NOT NULL,
	[mCorporateName] [nvarchar](50) NOT NULL,
	[mIDCardNo] [nvarchar](50) NOT NULL,
	[mContacts] [nvarchar](50) NOT NULL,
	[mContactsPhone] [nvarchar](50) NOT NULL,
	[mSummary] [text] NULL,
	[mImgURL] [text] NULL,
	[mURL] [text] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_T_Members] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_MemberType]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MemberType](
	[pkId] [nvarchar](50) NOT NULL,
	[mTypeID] [nvarchar](50) NOT NULL,
	[mTypeValue] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_MemberType] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PMType]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PMType](
	[pkId] [nvarchar](50) NOT NULL,
	[pmTypeID] [nvarchar](50) NOT NULL,
	[pmTypeValue] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_PMType] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PublishManage]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PublishManage](
	[pkId] [nvarchar](50) NOT NULL,
	[uLoginName] [nvarchar](50) NOT NULL,
	[pmTitle] [nvarchar](50) NULL,
	[pmTypeID] [nvarchar](50) NOT NULL,
	[pmADImgListID] [nvarchar](50) NULL,
	[pmPublishTime] [nvarchar](50) NOT NULL,
	[pmViews] [bigint] NULL,
	[pmText] [text] NULL,
	[pmPreview] [bit] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_PublishManage] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ReviewResult]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ReviewResult](
	[pkId] [nvarchar](50) NOT NULL,
	[mReviewResultID] [nvarchar](50) NOT NULL,
	[mReviewResultValue] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_ReviewResult] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SysModule]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SysModule](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[mName] [nvarchar](50) NULL,
	[mLinkUrl] [nvarchar](100) NULL,
	[mIcon] [nvarchar](100) NULL,
	[mParentNo] [int] NULL,
	[mSort] [int] NULL,
	[mIsVisible] [bit] NULL,
	[mIsMenu] [bit] NULL,
	[isDeleted] [bit] NULL,
	[mController] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Sys_Module] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_User](
	[pkId] [nvarchar](50) NOT NULL,
	[uLoginName] [nvarchar](50) NOT NULL,
	[uLoginTypeID] [nvarchar](50) NOT NULL,
	[uPassword] [nvarchar](50) NOT NULL,
	[uUserName] [nvarchar](50) NULL,
	[uPhone] [nvarchar](50) NULL,
	[uMaiBox] [nvarchar](50) NULL,
	[uClientKey] [nvarchar](50) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_UserType]    Script Date: 2017/4/30 9:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UserType](
	[pkId] [nvarchar](50) NOT NULL,
	[uLoginTypeID] [nvarchar](50) NOT NULL,
	[uLoginTypeValue] [nvarchar](50) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_UserType] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'3DC88C04-AD7E-4A82-BD1D-A69525D4520D', N'PMAD_201704202203431008', N'/upload/publish/201704291253286103.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'835BC1D8-0413-4F66-8839-E7EBC184B8F6', N'0', N'/upload/publish/201704291252106200.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'8F367171-0CE8-416F-B43E-322654EA89A7', N'0', N'/upload/publish/201704291252521324.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'DDCAC354-A4FE-43B3-976C-613F73D057FF', N'0', N'/upload/publish/201704291251565707.jpg', 0, 0)
INSERT [dbo].[T_DMType] ([pkId], [dmTypeID], [dmTypeValue], [isDeleted]) VALUES (N'1C830ECE-368A-4071-AD45-B372B9FB2715', N'-0000', N'默认', 1)
INSERT [dbo].[T_DMType] ([pkId], [dmTypeID], [dmTypeValue], [isDeleted]) VALUES (N'89D672D9-C1D5-46B9-9445-B53AC2111A42', N'DM201704231100562314', N'政策法规下载', 0)
INSERT [dbo].[T_DMType] ([pkId], [dmTypeID], [dmTypeValue], [isDeleted]) VALUES (N'C8986523-C900-457D-BD29-D3A07BFEA687', N'DM201704231101116652', N'HR表格下载', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'439FADA1-4428-49D0-8003-EC6CE2431598', N'admin', N'昆明市调整公积金流程', N'DM201704231101116652', N'/upload/download/files/HRbiaogexiazai/201704231102561092.doc', 0, N'2017-04-23 11:02:56', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'48582686-EF00-4C75-AF33-3DF6FB246F29', N'admin', N'关于成党支部的请示', N'DM201704231100562314', N'/upload/download/files/zhengcefaguixiazai/201704231104432423.doc', 0, N'2017-04-23 11:04:43', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'8DBB4F04-6D06-44DE-ACA1-765492782D5E', N'admin', N'fghd', N'-0000', N'', 0, N'2017-02-08 16:43:21', 1)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'96D0F759-45B4-461D-B99E-AD471FF7EC28', N'admin', N'关于昆明市人力资源和社会保障协会', N'DM201704231100562314', N'/upload/download/files/zhengcefaguixiazai/201704231104288745.doc', 0, N'2017-04-23 11:04:28', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'C5C74770-95F5-4CFC-930B-37BBAF50F823', N'admin', N'昆明市公积金转移材料', N'DM201704231101116652', N'/upload/download/files/HRbiaogexiazai/201704231103343194.txt', 0, N'2017-04-23 11:03:34', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'FF848400-AC92-4FDB-96E1-8712B3BCCDDD', N'admin', N'关于成党支部的请示', N'DM201704231100562314', N'/upload/download/files/zhengcefaguixiazai/201704231105307451.docx', 0, N'2017-04-23 11:05:30', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'270D8EB7-A6E7-435C-AD02-AF7FD5B77EE6', N'FL_201704201622341100', N'本地高校网站', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'35A5AE49-7EB0-40AB-9174-A8292DE02FD4', N'-0000', N'默认', 1)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'68AA8200-65C0-4220-BEB4-A2CF8CC99587', N'FL_201704202019431059', N'各地人事部门网站', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'6CFB959C-AA4F-4D7C-BCB0-9276BE0072F1', N'FL_201704202019531135', N'人才招聘网站', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'CC388849-58FC-4A8C-B737-67211FDE50EF', N'FL_201704201618581807', N'本地政府部门网站', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'0381ACA9-E66B-4734-9A35-1B32B48A9335', N'admin', N'啊沙发沙发沙发舒服', N'-0000', N'http://blog.csdn.net/guolin_blog/article/details/17656437', N'http://blog.csdn.net/guolin_blog/article/details/17656437', N'2017-04-20 16:59:47', 1)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'2D3733F1-4B1B-4435-A684-84870AB0E766', N'admin', N'昆明市住房公积金管理中心', N'FL_201704201618581807', N'http://zfgjj.km.gov.cn/website/index.html', N'http://zfgjj.km.gov.cn/resource/img/index/header_logo.jpg', N'2017-04-20 22:59:35', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'6D88E286-A333-4894-AF8C-8B5A61DF66E0', N'admin', N'云南大学', N'FL_201704201622341100', N'http://www.ynu.edu.cn/', N'https://imgsa.baidu.com/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=e3d841f3e9f81a4c323fe49bb6430b3c/4034970a304e251f7a21177fa586c9177e3e5367.jpg', N'2017-04-22 17:20:40', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'724957B3-5D59-4D9B-8C8B-8B11FC1AD171', N'admin', N'昆明市住房公积金管理中心昆明市发展改革委员会', N'FL_201704201618581807', N'http://fgw.km.gov.cn/', N'http://fgw.km.gov.cn/upload/resources/image/2017/02/28/2425942.png', N'2017-04-20 23:01:50', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'FB5617B1-76F2-4D83-995F-D4A29853BD47', N'admin', N'云南省昆明市地方税务局', N'FL_201704201618581807', N'http://www.kmds.gov.cn/portal/site/site/portal/ynds/ynkm/index.jsp', N'http://www.kmds.gov.cn/portal/site/site/portal/ynds/ynkm/index.jsp', N'2017-04-22 17:39:18', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'077F9FB8-ECE5-4136-B404-B89EA5592229', N'admin', N'-0000', N'314', N'14', N'-0000', N'213414424', N'234', N'2341', N'234112442471247414', N'1243', N'15196666481', NULL, N'/upload/member/icons/201704191430549113.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'2339FFE5-99C9-4EA3-B0D3-BA0E5276FC91', N'admin', N'-0000', N'2017-04-20 21:54:13', N'dsfgsd', N'-0000', N'123123123', N'asdfasdfasd', N'asfdasdf', N'561616165161561821', N'aasdfasd', N'15194545155', NULL, N'/upload/member/icons/201704202154224497.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'42FFE370-7BB5-4304-8FC8-969F36B53E8F', N'admin', N'-0000', N'2017-04-19 14:32:46', N'fdsg', N'-0000', N'123442243', N'asdasd', N'asa', N'123312312312311221', N'asfdsa', N'15952155212', NULL, NULL, NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'4E411A68-C6F8-4C8D-9649-744EB857C66B', N'admin', N'-0000', N'2017-04-20 21:55:33', N'vsdfsdf', N'-0000', N'421441224', N'sdfgdsfgsdfg', N'sdfgsdfg', N'412442424124420141', N'fdsgsd', N'13655416551', NULL, N'/upload/member/icons/201704202155336628.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'4FCD95C5-CE39-4530-A30A-6B2850DA981D', N'admin', N'-0000', N'123', N'12', N'-0000', N'123212123', N'234', N'234', N'121231231231234413', N'234', N'13666666666', NULL, N'/upload/member/icons/201702182324245864.jpg', N'https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=baidu&wd=c%23%E8%8E%B7%E5%8F%96%E5%BD%93%E5%89%8D%E6%97%B6%E9%97%B4%E6%A0%BC%E5%BC%8F%E5%8C%96&oq=c%2523%25E8%258E%25B7%25E5%258F%2596%25E5%25BD%2593%25E5%2589%258D%25E6%2597%25B6%25E9%2597%25B4&rsv_pq=dd64309c0000c570&rsv_t=40551FQOvKwahA43tJPtEShEf3x0Da%2BAq7q6l8bHkTXzVoT1kZog1RqrWrg&rqlang=cn&rsv_enter=1&inputT=1620&rsv_sug3=24&rsv_sug1=12&rsv_sug7=100&rsv_sug2=0&rsv_sug4=3478', 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'58238963-BB86-45F9-A8F7-42514381E00B', N'admin', N'-0000', N'123', N'123', N'-0000', N'123144521', N'123', N'123', N'123333111241242134', N'123', N'15169991021', NULL, N'/upload/member/icons/201704191432047003.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'59A66A53-CF29-45F1-AB8D-6718A945A768', N'admin', N'REVIEW_201704231218193639', N'2017-04-23 12:17:51', N'云南省创业创新教育研究会', N'MEMBER_201704202033009325', N'443124341', N'你看那最遥远的地方', N'张大山', N'312345132751214124', N'张三', N'15157237424', NULL, N'/upload/member/icons/201704231217510713.jpg', N'http://yn.yunnan.cn/html/2015-12/14/content_4064474.htm', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'69C5BAC2-1A5A-4196-B6A4-C5818A52CC9C', N'admin', N'REVIEW_201704231218193639', N'2017-04-23 12:29:28', N'昆明经济技术开发区人力资源信息咨询服务有限公司', N'MEMBER_201704202033009325', N'324141245', N'某个地方', N'李小四', N'2342424t5342342134', N'李四', N'15196223651', NULL, N'/upload/member/icons/201704281314094989.jpg', N'http://8153536.czvv.com/', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'95F1456F-BF34-46A7-BF5F-69A6651FA9EC', N'admin', N'-0000', N'2017-04-19 13:20:43', N'傻逼联盟2.0', N'-0000', N'123456789', N'按时吃大厦是长沙市从', N'爱吃撒测试', N'123456789123456789', N'爱吃啥', N'15196606817', NULL, N'/upload/member/icons/201704191327412993.jpg', N'http://blog.csdn.net/jiankunking/article/details/46953073', 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'C489F479-4441-4C9F-9A4E-16A918338DBC', N'admin', N'-0000', N'2017-04-20 22:20:42', N'是个谁干的', N'-0000', N'165161611', N'十大歌手广东省', N'是个谁干的', N'215151515151511221', N'是个是', N'15196666666', NULL, N'', NULL, 1)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'10430207-4DFC-428D-A77D-5658CC39CE8C', N'MEMBER_201704202033009325', N'一级会员', 0)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'128BD48C-6968-4137-83BB-90F4DCA7FF10', N'-0000', N'默认', 1)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'18220A6A-233C-4534-985E-C427898ABCD7', N'MEMBER_201704202032458967', N'二级会员', 0)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'03ACB665-5738-491F-BEBF-9CF49C527263', N'PM201704291248263204', N'政策法规', 0)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'120FAC37-3D2B-4BC9-A46B-7D33C88443D9', N'PM201704291248366411', N'行业动态', 0)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'65A3A139-D062-4BF5-9063-B3F95E501ACB', N'-0000', N'默认', 1)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'A70F7D2D-1176-4B2E-BB39-0B3B684F3F83', N'PM201704291248181092', N'通知公告', 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'04F94B8C-9ECF-4D2F-A94B-4971309E6A14', N'admin', NULL, N'-0000', N'PMAD_201704202130047864', N'2017-04-20 21:30:04', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'0E273710-AC9F-4AD5-8747-46A7ACF95C11', N'admin', N'水电费是否大声道...', N'-0000', N'PMAD_201704202231198376', N'2017-04-20 22:31:19', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'0F0B32C8-3535-4F25-8753-03ED58886BEF', N'123', N'一诉衷肠，一生倾心...', N'PM201704291248181092', N'123', N'2017-04-20 21:25:43', 130, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'1282C35B-95A2-44A7-8282-FBFAEE1E511E', N'admin', N'21312312...', N'-0000', N'PMAD_201704202150017868', N'2017-04-20 21:50:01', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'174FDEF4-69DB-4AF5-AC76-2B908997A2F2', N'admin', N'66666666哦...', N'-0000', N'PMAD_201704201329049067', N'2017-04-18 13:29:24', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'18D32312-089C-4BF0-86D0-6AB4DAE23E1F', N'admin', NULL, N'-0000', N'PMAD_201704202129203028', N'2017-04-20 21:29:20', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'2EBD29B3-517A-4627-B691-6C190D39AB81', N'admin', NULL, N'-0000', N'PMAD_201704202138133753', N'2017-04-20 21:38:13', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'40475E29-CC50-43FC-85A7-448BF70ED042', N'admin', NULL, N'-0000', N'PMAD_201704202146202222', N'2017-04-20 21:46:20', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'4E363343-43D7-4DA5-97CC-0C90DB952197', N'admin', N'123...', N'-0000', N'PMAD_201704202156280279', N'2017-04-20 21:56:28', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'5C72635D-883A-4EA4-80F5-F02BBE40CE33', N'admin', NULL, N'-0000', N'PMAD_201704202217330623', N'2017-04-20 22:17:33', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'74211B83-6C17-47D5-9F00-8F2065D7CF90', N'admin', NULL, N'-0000', N'PMAD_201704202128337342', N'2017-04-20 21:28:33', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'74A7D80B-0B9E-4201-98F0-C8CFF608D78E', N'123', N'三生缘起，桃花初见...', N'-0000', N'1231', N'123', 123, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'859424AB-3065-486D-B052-7D6EA3BB85C8', N'admin', N'人力资源', N'PM201704291248181092', N'0', N'2017-04-29 12:49:42', 132, N'<p>人力资源（Human Resources ，简称HR）指在一个国家或地区中，处于劳动年龄、未到劳动年龄和超过劳动年龄但具有劳动能力的人口之和。或者表述为：一个国家或地区的总人口中减去丧失劳动能力的人口之后的人口。人力资源也指一定时期内组织中的人所拥有的能够被企业所用，且对价值创造起贡献作用的教育、能力、技能、经验、体力等的总称。狭义讲就是企事业单位独立的经营团体所需人员具备的能力（资源）。</p>', 0, 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'8DF37E3E-7C4F-4520-BFD8-83CC7B6316E9', N'admin', N'1232...', N'-0000', N'PMAD_201704202157155836', N'2017-04-20 21:57:15', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'986C69B0-4F5D-4105-8DE3-F90B3D2003AC', N'admin', NULL, N'-0000', N'PMAD_201704202137466848', N'2017-04-20 21:37:46', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'B50245E7-AFCC-4FFD-B020-2550B6335ACC', N'admin', N'水电费顺丰到付...', N'-0000', N'PMAD_201704202203254918', N'2017-04-20 22:03:25', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'C0473E44-0119-44FD-993A-2D5A2080AE9B', N'admin', N'地方根深蒂固时光飞逝...', N'-0000', N'PMAD_201704202150527027', N'2017-04-20 21:50:52', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'C7F8A38B-684B-4CED-93D8-53D647D0547D', N'admin', NULL, N'-0000', N'PMAD_201704202216365090', N'2017-04-20 22:16:36', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'EDA24B5D-FA52-4B7A-AF39-3D71D3DDDC95', N'admin', NULL, N'-0000', N'PMAD_201704202203112920', N'2017-04-20 22:03:11', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'FC34CDDD-3658-4552-BF92-5E7E68DA1A19', N'admin', N'协会', N'-0000', N'PMAD_201704202203431008', N'2017-04-20 22:03:43', 0, N'<p>协会是指由个人、单个组织为达到某种目标，通过签署协议，自愿组成的团体或组织，中文将英语Association译作“协会”，和工会组织的概念不同。协会常指包括职业、雇主、行业、学术和科学等方面为达成某种目标而成立的组织。“工会”多指被雇用者为确保自身权益特别是经济利益而成立的组织，多集中于雇佣者和被雇佣者的关系。</p>', 0, 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'1C9E9F2E-4623-4582-AC3E-679F74FA68B3', N'REVIEW_201704231218193639', N'审核通过', 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'3C38C104-43CA-4255-AF63-FFF21F045E15', N'REVIEW_201704231218122425', N'审核中', 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'5880F12D-64AA-4E9A-B9D5-B177C7283E31', N'REVIEW_201704231218322327', N'审核不通过', 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'8AE804BC-9A3A-4012-988C-AADC96B13F8A', N'-0000', N'默认', 1)
SET IDENTITY_INSERT [dbo].[T_SysModule] ON 

INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (0, N'根目录', NULL, NULL, -1, NULL, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (1, N'基本功能', NULL, N'/Images/icons/32X32/ico_type.png', 0, 1, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (2, N'系统管理', NULL, N'/Images/icons/32X32/ico_setting.png', 0, 2, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (3, N'后台管理', N'/Manager/System/ModuleView', N'/Images/icons/32X32/ico_home.png', 2, 3, 1, 0, 0, N'SystemController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (4, N'系统配置', N'/Manager/Config/WebSiteConfig', N'/Images/icons/32X32/ico_system.png', 2, 4, 0, 0, 0, N'SystemController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (5, N'用户管理', N'/Manager/User/UsersView', N'/Images/icons/32X32/ico_user.png', 1, 5, 1, 0, 0, N'UserController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (6, N'会员管理', N'/Manager/Member/MemberView', N'/Images/icons/32X32/ico_member.png', 1, 6, 1, 0, 0, N'MemberController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (7, N'类型管理', N'/Manager/TypeManager/TypeManagerView', N'/Images/icons/32X32/ico_list.png', 2, 7, 1, 0, 0, N'TypeManagerController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (8, N'发布管理', N'/Manager/PublishManager/PublishManagerView', N'/Images/icons/32X32/ico_publish.png', 1, 8, 1, 0, 0, N'PublishManagerController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (9, N'友情链接', N'/Manager/FriendLink/FriendLinkView', N'/Images/icons/32X32/ico_link.png', 1, 9, 1, 0, 0, N'FriendLinkController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (10, N'下载管理', N'/Manager/DownloadManager/DownloadManagerView', N'/Images/icons/32X32/ico_download.png', 1, 0, 1, 0, 0, N'DownloadManagerController.cs')
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [isDeleted], [mController]) VALUES (11, N'导出', N'/Manager/ExportToExcel/ToExcelView', N'/Images/icons/32X32/ico_output.png', 2, 0, 1, 0, 1, N'ExportToExcelController.cs')
SET IDENTITY_INSERT [dbo].[T_SysModule] OFF
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'0A6039BF-6527-4C72-9E09-F63EAF080F7F', N'123', N'-0000', N'202CB962AC59075B964B07152D234B70', N'123', N'123', N'123', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'11630DDB-887D-4F3F-AEF1-43C4615247DC', N'ccc.surpass@qq.com', N'-0000', N'24112B61C98707A4A7089141735025BB', NULL, NULL, N'ccc.surpass@qq.com', N'暂无', 0)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'1B6AE27E-C37B-4C57-99F0-B476436CDFD4', N'admin', N'0001', N'202CB962AC59075B964B07152D234B70', N'徐志坚', N'15196606812', N'cc.surpass@qq.com', N'Oh!Error!', 0)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'38F5600E-008F-4269-919A-0A756CF68E6A', N'fdvx', N'0001', N'76D80224611FC919A5D54F0FF9FBA446', N'qwe', N'qwe', N'qwe', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'4F121135-8D68-4C46-A900-386BEA801E1F', N'qweqwe', N'0001', N'E10ADC3949BA59ABBE56E057F20F883E', N'hdfgdfg', N'12231', N'132132', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'5A896C3D-B2AB-4AE9-9A4D-926CD651990D', N'abc@qq.com', N'USER_201704202020457215', N'E10ADC3949BA59ABBE56E057F20F883E', N'abc@qq.com', N'15196606811', N'abc@qq.com', N'暂无', 0)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'7393FD83-6688-4FEC-9FCD-9349519931EF', N'234', N'0001', N'D5EE2EEDFCF7ADC285DB4967BD86910D', N'admin', N'15198888888', N'123@we.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'7AEB48A0-DD88-4F49-AB9A-6058422FFE42', N'qwe', N'-0000', N'E4C4E24EDD254BB81FC6E3FE7A1A5DD4', N'adma', N'123', N'123', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'98B13AFF-5BCC-48CC-AD47-8C9996669D1C', N'dsfgf', N'0001', N'25D55AD283AA400AF464C76D713C07AD', N'qweqwqeqe', N'sdfg', N'dsfg', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'A4CF9A8D-D502-4E15-A7B6-F93B26F6513E', N'12334', N'-0000', N'E10ADC3949BA59ABBE56E057F20F883E', N'游客10235', N'15196606817', N'add@qq.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'D7C6C0EF-0921-4227-954E-5F77146DDF80', N'qwert', N'-0000', N'9003D1DF22EB4D3820015070385194C8', NULL, NULL, NULL, N'暂无', 0)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'E4F33141-46AA-4E61-9C81-A5EBC2E7BE2C', N'sdfgdsgsd', N'0001', N'45DA26AF5C12B859E68D6CDA4C84C392', N'dsfgsdgsfg', N'15196660112', N'sdfds@qeq.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'F34EC132-CA89-41D0-85C9-F380BFBDB858', N'1234', N'0001', N'E3CEB5881A0A1FDAAD01296D7554868D', N'111111', N'22222', N'22222', N'暂无', 1)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'0813851F-549D-430B-B2B0-6F0934DB7E7E', N'0001', N'管理员', 0)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'9B88F996-0B59-4E86-BD13-29D191422AE6', N'USER_201704202020457215', N'普通用户', 0)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'CA44B176-0A40-44EC-A75D-9A5410EDF9E3', N'-0000', N'默认', 1)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_DMType__FFFED06F2FDEFAD8]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_DMType] ADD UNIQUE NONCLUSTERED 
(
	[dmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_FLType__7262AE05391D0F99]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_FLType] ADD UNIQUE NONCLUSTERED 
(
	[flTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_Member__2A79F8131ED71AB7]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_MemberType] ADD UNIQUE NONCLUSTERED 
(
	[mTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_PMType__3AD7C5E4B4D79315]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_PMType] ADD UNIQUE NONCLUSTERED 
(
	[pmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_Publis__BA84907558667AB7]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [UQ__T_Publis__BA84907558667AB7] UNIQUE NONCLUSTERED 
(
	[pmADImgListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_Review__AFC875158C1FDD8C]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_ReviewResult] ADD UNIQUE NONCLUSTERED 
(
	[mReviewResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_LOGINNAME]    Script Date: 2017/4/30 9:43:41 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_LOGINNAME] ON [dbo].[T_User]
(
	[uLoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_UserTy__2205C0464D9B3E24]    Script Date: 2017/4/30 9:43:41 ******/
ALTER TABLE [dbo].[T_UserType] ADD UNIQUE NONCLUSTERED 
(
	[uLoginTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_ADImgList] ADD  CONSTRAINT [DF_T_ADImgList_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_ADImgList] ADD  CONSTRAINT [DF_T_ADImgList_pmADImgListNum]  DEFAULT ((0)) FOR [pmADImgListNum]
GO
ALTER TABLE [dbo].[T_DMType] ADD  CONSTRAINT [DF_T_DMType_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_DM_TypeID]  DEFAULT ('-0000') FOR [dmTypeID]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_DM_DownloadNum]  DEFAULT ((0)) FOR [dmDownloadNum]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[T_FLType] ADD  CONSTRAINT [DF_T_FLType_pkId]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_FLType] ADD  CONSTRAINT [DF_T_FLType_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_FL_ImgURL]  DEFAULT (N'暂无') FOR [flImgURL]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Member_M_ReviewResultID]  DEFAULT ('-0000') FOR [mReviewResultID]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Member_M_TypeID]  DEFAULT ('-0000') FOR [mTypeID]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_M_ImgUrl]  DEFAULT (N'暂无') FOR [mImgURL]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_M_URL]  DEFAULT (N'暂无') FOR [mURL]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Member_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[T_MemberType] ADD  CONSTRAINT [DF_T_MemberType_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_PMType] ADD  CONSTRAINT [DF_T_PMType_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_TypeID]  DEFAULT ('-0000') FOR [pmTypeID]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_ADImgListlD]  DEFAULT (N'暂无') FOR [pmADImgListID]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_Views]  DEFAULT ((0)) FOR [pmViews]
GO
ALTER TABLE [dbo].[T_ReviewResult] ADD  CONSTRAINT [DF_T_ReviewResult_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_User_U_LoginTypeID]  DEFAULT ('-0000') FOR [uLoginTypeID]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_User_uUserName]  DEFAULT (N'默认') FOR [uUserName]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_A_Phone]  DEFAULT (N'暂无') FOR [uPhone]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_A_MaiBox]  DEFAULT (N'暂无') FOR [uMaiBox]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_User_uClientKey]  DEFAULT (N'暂无') FOR [uClientKey]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_User_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[T_UserType] ADD  CONSTRAINT [DF_T_UserType_pk_id]  DEFAULT (newid()) FOR [pkId]
GO
ALTER TABLE [dbo].[T_UserType] ADD  CONSTRAINT [DF_T_UserType_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[T_ADImgList]  WITH CHECK ADD  CONSTRAINT [FK_T_ADImgList_T_PublishManage] FOREIGN KEY([pmADImgListID])
REFERENCES [dbo].[T_PublishManage] ([pmADImgListID])
GO
ALTER TABLE [dbo].[T_ADImgList] CHECK CONSTRAINT [FK_T_ADImgList_T_PublishManage]
GO
ALTER TABLE [dbo].[T_DownloadManage]  WITH CHECK ADD  CONSTRAINT [FK_T_DownloadManage_T_DMType] FOREIGN KEY([dmTypeID])
REFERENCES [dbo].[T_DMType] ([dmTypeID])
GO
ALTER TABLE [dbo].[T_DownloadManage] CHECK CONSTRAINT [FK_T_DownloadManage_T_DMType]
GO
ALTER TABLE [dbo].[T_DownloadManage]  WITH CHECK ADD  CONSTRAINT [FK_T_DownloadManage_T_User] FOREIGN KEY([uLoginName])
REFERENCES [dbo].[T_User] ([uLoginName])
GO
ALTER TABLE [dbo].[T_DownloadManage] CHECK CONSTRAINT [FK_T_DownloadManage_T_User]
GO
ALTER TABLE [dbo].[T_FriendlyLink]  WITH CHECK ADD  CONSTRAINT [FK_T_FriendlyLink_T_FriendlyLink] FOREIGN KEY([pkId])
REFERENCES [dbo].[T_FriendlyLink] ([pkId])
GO
ALTER TABLE [dbo].[T_FriendlyLink] CHECK CONSTRAINT [FK_T_FriendlyLink_T_FriendlyLink]
GO
ALTER TABLE [dbo].[T_FriendlyLink]  WITH CHECK ADD  CONSTRAINT [FK_T_FriendlyLink_T_User] FOREIGN KEY([uLoginName])
REFERENCES [dbo].[T_User] ([uLoginName])
GO
ALTER TABLE [dbo].[T_FriendlyLink] CHECK CONSTRAINT [FK_T_FriendlyLink_T_User]
GO
ALTER TABLE [dbo].[T_Member]  WITH CHECK ADD  CONSTRAINT [FK_T_Member_T_MemberType] FOREIGN KEY([mTypeID])
REFERENCES [dbo].[T_MemberType] ([mTypeID])
GO
ALTER TABLE [dbo].[T_Member] CHECK CONSTRAINT [FK_T_Member_T_MemberType]
GO
ALTER TABLE [dbo].[T_Member]  WITH CHECK ADD  CONSTRAINT [FK_T_Member_T_ReviewResult] FOREIGN KEY([mReviewResultID])
REFERENCES [dbo].[T_ReviewResult] ([mReviewResultID])
GO
ALTER TABLE [dbo].[T_Member] CHECK CONSTRAINT [FK_T_Member_T_ReviewResult]
GO
ALTER TABLE [dbo].[T_Member]  WITH CHECK ADD  CONSTRAINT [FK_T_Member_T_User] FOREIGN KEY([uLoginName])
REFERENCES [dbo].[T_User] ([uLoginName])
GO
ALTER TABLE [dbo].[T_Member] CHECK CONSTRAINT [FK_T_Member_T_User]
GO
ALTER TABLE [dbo].[T_PublishManage]  WITH CHECK ADD  CONSTRAINT [FK_T_PublishManage_T_PMType] FOREIGN KEY([pmTypeID])
REFERENCES [dbo].[T_PMType] ([pmTypeID])
GO
ALTER TABLE [dbo].[T_PublishManage] CHECK CONSTRAINT [FK_T_PublishManage_T_PMType]
GO
ALTER TABLE [dbo].[T_PublishManage]  WITH CHECK ADD  CONSTRAINT [FK_T_PublishManage_T_User] FOREIGN KEY([uLoginName])
REFERENCES [dbo].[T_User] ([uLoginName])
GO
ALTER TABLE [dbo].[T_PublishManage] CHECK CONSTRAINT [FK_T_PublishManage_T_User]
GO
ALTER TABLE [dbo].[T_User]  WITH CHECK ADD  CONSTRAINT [FK_T_User_T_UserType] FOREIGN KEY([uLoginTypeID])
REFERENCES [dbo].[T_UserType] ([uLoginTypeID])
GO
ALTER TABLE [dbo].[T_User] CHECK CONSTRAINT [FK_T_User_T_UserType]
GO
USE [master]
GO
ALTER DATABASE [HRAM-SNU_DB] SET  READ_WRITE 
GO
