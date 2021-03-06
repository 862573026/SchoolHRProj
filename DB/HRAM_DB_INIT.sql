USE [master]
GO
/****** Object:  Database [HRAM-SNU_DB]    Script Date: 2017/5/13 21:44:56 ******/
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
/****** Object:  Table [dbo].[T_ADImgList]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_DMType]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_DownloadManage]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_FLType]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_FriendlyLink]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_Member]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_MemberType]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_PMType]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_PublishManage]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_ReviewResult]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_SysModule]    Script Date: 2017/5/13 21:44:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SysModule](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[mName] [nvarchar](50) NULL,
	[mLinkUrl] [text] NULL,
	[mIcon] [text] NULL,
	[mParentNo] [int] NULL,
	[mSort] [int] NULL,
	[mIsVisible] [bit] NULL,
	[mIsMenu] [bit] NULL,
	[mController] [text] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_dbo.Sys_Module] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2017/5/13 21:44:57 ******/
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
/****** Object:  Table [dbo].[T_UserType]    Script Date: 2017/5/13 21:44:57 ******/
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
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'26B7E2EF-597E-44B3-9AF8-946D7826795A', N'PMAD_201705121850502818', N'/upload/publish/201705121852396839.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'44CF4EAD-DB02-438C-AD37-799AC014BFE4', N'1231', N'/upload/publish/201705121842359280.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'59E340AC-7FC9-43BA-B79C-6061772DB8F6', N'PMAD_201705121850502818', N'/upload/publish/201705121854505482.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'7355AD0D-A2D2-4FCA-B2A5-F42053E872A1', N'PMAD_201705121850502818', N'/upload/publish/201705121854318922.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'A7E3649A-B80F-485D-9517-99D347EEF418', N'PMAD_201705121850502818', N'/upload/publish/201705121928290310.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'B4F422A3-81F6-4401-ACD6-61DB0612A777', N'PMAD_201705121850502818', N'/upload/publish/201705121854017560.jpeg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'B5E241CB-E44E-4160-86E5-260861CCC0F0', N'0', N'/upload/publish/201705121843593792.jpg', 0, 0)
INSERT [dbo].[T_ADImgList] ([pkId], [pmADImgListID], [pmADImgListURL], [pmADImgListNum], [isDeleted]) VALUES (N'E6DBFD46-BE8F-43AE-96B6-00DB6DF58BEE', N'123', N'/upload/publish/201705121721058609.png', 0, 0)
INSERT [dbo].[T_DMType] ([pkId], [dmTypeID], [dmTypeValue], [isDeleted]) VALUES (N'1C830ECE-368A-4071-AD45-B372B9FB2715', N'-0000', N'默认', 1)
INSERT [dbo].[T_DMType] ([pkId], [dmTypeID], [dmTypeValue], [isDeleted]) VALUES (N'89D672D9-C1D5-46B9-9445-B53AC2111A42', N'DM201704231100562314', N'政策法规下载', 0)
INSERT [dbo].[T_DMType] ([pkId], [dmTypeID], [dmTypeValue], [isDeleted]) VALUES (N'C8986523-C900-457D-BD29-D3A07BFEA687', N'DM201704231101116652', N'HR表格下载', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'439FADA1-4428-49D0-8003-EC6CE2431598', N'admin', N'昆明市调整公积金流程', N'DM201704231101116652', N'/upload/download/files/HRbiaogexiazai/201705130102076425.txt', 4, N'2017-04-23 11:02:56', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'48582686-EF00-4C75-AF33-3DF6FB246F29', N'admin', N'关于成党支部的请示', N'DM201704231100562314', N'/upload/download/files/zhengcefaguixiazai/201705130102315115.doc', 1, N'2017-04-23 11:04:43', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'8DBB4F04-6D06-44DE-ACA1-765492782D5E', N'admin', N'fghd', N'-0000', N'', 0, N'2017-02-08 16:43:21', 1)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'96D0F759-45B4-461D-B99E-AD471FF7EC28', N'admin', N'关于昆明市人力资源和社会保障协会', N'DM201704231100562314', N'/upload/download/files/zhengcefaguixiazai/201705130102499898.doc', 1, N'2017-04-23 11:04:28', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'A78B35DE-DC92-44FD-8AFD-1BE2DB31196F', N'admin', N'排序和查找', N'DM201704231101116652', N'/upload/download/files/HRbiaogexiazai/201705130103036798.doc', 1, N'2017-05-08 19:13:23', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'C5C74770-95F5-4CFC-930B-37BBAF50F823', N'admin', N'昆明市公积金转移材料', N'DM201704231101116652', N'/upload/download/files/HRbiaogexiazai/201705130103211375.pptx', 0, N'2017-04-23 11:03:34', 0)
INSERT [dbo].[T_DownloadManage] ([pkId], [uLoginName], [dmTitle], [dmTypeID], [dmFileURL], [dmDownloadNum], [dmUploadTime], [isDeleted]) VALUES (N'D8F31C89-DACF-49E0-9D5F-F1C04E9AD18B', N'admin', N'毕业设计模板', N'DM201704231101116652', N'/upload/download/files/HRbiaogexiazai/201705121452294644.doc', 8, N'2017-05-08 20:53:35', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'270D8EB7-A6E7-435C-AD02-AF7FD5B77EE6', N'FL_201704201622341100', N'本地高校网站', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'35A5AE49-7EB0-40AB-9174-A8292DE02FD4', N'-0000', N'默认', 1)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'68AA8200-65C0-4220-BEB4-A2CF8CC99587', N'FL_201704202019431059', N'各地人事部门网站', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'6CFB959C-AA4F-4D7C-BCB0-9276BE0072F1', N'FL_201704202019531135', N'人才招聘网站', 0)
INSERT [dbo].[T_FLType] ([pkId], [flTypeID], [flTypeValue], [isDeleted]) VALUES (N'CC388849-58FC-4A8C-B737-67211FDE50EF', N'FL_201704201618581807', N'本地政府部门网站', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'0381ACA9-E66B-4734-9A35-1B32B48A9335', N'admin', N'啊沙发沙发沙发舒服', N'-0000', N'http://blog.csdn.net/guolin_blog/article/details/17656437', N'http://blog.csdn.net/guolin_blog/article/details/17656437', N'2017-04-20 16:59:47', 1)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'2D3733F1-4B1B-4435-A684-84870AB0E766', N'admin', N'四川省政府', N'FL_201704201618581807', N'http://www.sc.gov.cn/', N'http://d.hiphotos.baidu.com/baike/w%3D268%3Bg%3D0/sign=3a745c7f72ec54e741ec1d188103fc6d/f703738da9773912a8505420f1198618367ae279.jpg', N'2017-04-20 22:59:35', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'34A7DC9B-2BA0-4D9A-8CBA-88919D3344FC', N'admin', N'杭州人才网', N'FL_201704202019431059', N'http://www.hzrc.com/ww/wwbaindexhz.html', N'http://www.hzrc.com/res/ww/b/a/hzimages/banlogo.png', N'2017-05-12 15:33:59', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'43B5560A-F9ED-404D-A4CA-2D27BF744F2E', N'admin', N'浙江大学', N'FL_201704201622341100', N'http://www.zju.edu.cn/', N'http://www.zju.edu.cn/template/chinese2/images/logo.png', N'2017-05-08 20:56:00', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'4A6AB7F0-5E4B-4922-8B04-E07993A15285', N'admin', N'拉勾网', N'FL_201704202019531135', N'https://www.lagou.com/', N'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1494585074240&di=7e31be61c370b16a47bad06f5872abf1&imgtype=0&src=http%3A%2F%2Fis3.mzstatic.com%2Fimage%2Fthumb%2FPurple49%2Fv4%2Fe5%2Fcf%2F36%2Fe5cf36c3-b101-52c5-dd50-20ba35faf8f4%2Fsource%2F512x512bb.jpg', N'2017-05-12 15:43:15', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'5F2759AF-13C5-4C2B-93F2-47C49E6B7782', N'admin', N'北京大学', N'FL_201704201622341100', N'http://www.pku.edu.cn/', N'http://www.pku.edu.cn/img/pkulogo_white.png', N'2017-05-08 20:55:00', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'64F6128A-10D7-43F0-985C-0455E794C023', N'admin', N'清华大学', N'FL_201704201622341100', N'http://www.tsinghua.edu.cn/publish/newthu/index.html', N'http://www.tsinghua.edu.cn/publish/newthu/images/logo_106.png', N'2017-05-08 17:12:03', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'6D88E286-A333-4894-AF8C-8B5A61DF66E0', N'admin', N'云南大学', N'FL_201704201622341100', N'http://www.ynu.edu.cn/', N'https://imgsa.baidu.com/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=e3d841f3e9f81a4c323fe49bb6430b3c/4034970a304e251f7a21177fa586c9177e3e5367.jpg', N'2017-04-22 17:20:40', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'724957B3-5D59-4D9B-8C8B-8B11FC1AD171', N'admin', N'昆明市住房公积金管理中心昆明市发展改革委员会', N'FL_201704201618581807', N'http://fgw.km.gov.cn/', N'http://fgw.km.gov.cn/upload/resources/image/2017/02/28/2425942.png', N'2017-04-20 23:01:50', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'79C129F4-54E5-4E50-ACC2-3F935DE31C97', N'admin', N'智联招聘', N'FL_201704202019531135', N'http://ts.zhaopin.com/jump/index.html?sid=121113803&site=pzzhubiaoti1', N'http://ts.zhaopin.com/jump/img/kh.jpg', N'2017-05-12 15:41:32', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'96889E9B-A0FD-41E9-BC79-F18969D97645', N'admin', N'猎聘网', N'FL_201704201622341100', N'https://www.liepin.com/?mscid=s_00_pz1', N'https://concat.lietou-static.com/core/pc/revs/images/common/logo_e062b0a3.png', N'2017-05-12 15:44:07', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'98B72F3F-8274-4989-9937-3973606C23AE', N'admin', N'四川大学', N'FL_201704201622341100', N'http://www.scu.edu.cn/', N'http://www.scu.edu.cn/portal2013/lib/images/logo.jpg', N'2017-05-08 20:54:26', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'AF3C1B97-FBD2-4D33-BA7B-9EF701E711D6', N'admin', N'浙江法院公开网', N'FL_201704201618581807', N'http://www.zjsfgkw.cn/', N'http://www.zjsfgkw.cn/Includes/images/logo.png', N'2017-05-08 20:51:20', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'BBA7E9F7-A1F6-45B4-BAF9-F19292C285DC', N'admin', N'香港大学', N'FL_201704201622341100', N'https://www.hku.hk/', N'https://www.hku.hk/assets/img/hku-logo.png', N'2017-05-08 20:56:38', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'D5866542-6328-4BED-A8B3-8CCA6F45E52B', N'admin', N'四川师范大学', N'FL_201704201622341100', N'http://www.sicnu.edu.cn/', N'http://www.sicnu.edu.cn/images/logo.png', N'2017-05-08 23:27:03', 0)
INSERT [dbo].[T_FriendlyLink] ([pkId], [uLoginName], [flName], [flTypeID], [flURL], [flImgURL], [flAddTime], [isDeleted]) VALUES (N'FB5617B1-76F2-4D83-995F-D4A29853BD47', N'admin', N'云南省昆明市地方税务局', N'FL_201704201618581807', N'http://www.kmds.gov.cn/portal/site/site/portal/ynds/ynkm/index.jsp', N'http://www.kmds.gov.cn/portal/site/site/portal/ynds/ynkm/index.jsp', N'2017-04-22 17:39:18', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'077F9FB8-ECE5-4136-B404-B89EA5592229', N'admin', N'-0000', N'314', N'14', N'-0000', N'213414424', N'234', N'2341', N'234112442471247414', N'1243', N'15196666481', NULL, N'/upload/member/icons/201704191430549113.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'18B348F6-3E91-45D1-A333-ED17338899B4', N'admin', N'REVIEW_201704231218122425', N'2017-05-08 20:52:46', N'我是会员', N'MEMBER_201704202032458967', N'123423423', N'浩瀚的星空-少年宫', N'孙宇宙', N'123123432423442323', N'联系人二', N'15661564412', NULL, NULL, N'http://123.57.26.127/', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'2339FFE5-99C9-4EA3-B0D3-BA0E5276FC91', N'admin', N'-0000', N'2017-04-20 21:54:13', N'dsfgsd', N'-0000', N'123123123', N'asdfasdfasd', N'asfdasdf', N'561616165161561821', N'aasdfasd', N'15194545155', NULL, N'/upload/member/icons/201704202154224497.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'42FFE370-7BB5-4304-8FC8-969F36B53E8F', N'admin', N'-0000', N'2017-04-19 14:32:46', N'fdsg', N'-0000', N'123442243', N'asdasd', N'asa', N'123312312312311221', N'asfdsa', N'15952155212', NULL, NULL, NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'4E411A68-C6F8-4C8D-9649-744EB857C66B', N'admin', N'-0000', N'2017-04-20 21:55:33', N'vsdfsdf', N'-0000', N'421441224', N'sdfgdsfgsdfg', N'sdfgsdfg', N'412442424124420141', N'fdsgsd', N'13655416551', NULL, N'/upload/member/icons/201704202155336628.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'4FCD95C5-CE39-4530-A30A-6B2850DA981D', N'admin', N'-0000', N'123', N'12', N'-0000', N'123212123', N'234', N'234', N'121231231231234413', N'234', N'13666666666', NULL, N'/upload/member/icons/201702182324245864.jpg', N'https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=baidu&wd=c%23%E8%8E%B7%E5%8F%96%E5%BD%93%E5%89%8D%E6%97%B6%E9%97%B4%E6%A0%BC%E5%BC%8F%E5%8C%96&oq=c%2523%25E8%258E%25B7%25E5%258F%2596%25E5%25BD%2593%25E5%2589%258D%25E6%2597%25B6%25E9%2597%25B4&rsv_pq=dd64309c0000c570&rsv_t=40551FQOvKwahA43tJPtEShEf3x0Da%2BAq7q6l8bHkTXzVoT1kZog1RqrWrg&rqlang=cn&rsv_enter=1&inputT=1620&rsv_sug3=24&rsv_sug1=12&rsv_sug7=100&rsv_sug2=0&rsv_sug4=3478', 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'58238963-BB86-45F9-A8F7-42514381E00B', N'admin', N'-0000', N'123', N'123', N'-0000', N'123144521', N'123', N'123', N'123333111241242134', N'123', N'15169991021', NULL, N'/upload/member/icons/201704191432047003.jpg', NULL, 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'59A66A53-CF29-45F1-AB8D-6718A945A768', N'admin', N'REVIEW_201704231218193639', N'2017-04-23 12:17:51', N'云南省创业创新教育研究会', N'MEMBER_201704202033009325', N'443124341', N'你看那最遥远的地方', N'张大山', N'312345132751214124', N'张三', N'15157237424', NULL, N'/upload/member/icons/201705121635133902.png', N'http://yn.yunnan.cn/html/2015-12/14/content_4064474.htm', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'69C5BAC2-1A5A-4196-B6A4-C5818A52CC9C', N'admin', N'REVIEW_201704231218193639', N'2017-04-23 12:29:28', N'昆明经济技术开发区人力资源信息咨询服务有限公司', N'MEMBER_201704202033009325', N'324141245', N'某个地方', N'李小四', N'2342424t5342342134', N'李四', N'15196223651', NULL, N'/upload/member/icons/201705121634387225.png', N'http://8153536.czvv.com/', 0)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'95F1456F-BF34-46A7-BF5F-69A6651FA9EC', N'admin', N'-0000', N'2017-04-19 13:20:43', N'傻逼联盟2.0', N'-0000', N'123456789', N'按时吃大厦是长沙市从', N'爱吃撒测试', N'123456789123456789', N'爱吃啥', N'15196606817', NULL, N'/upload/member/icons/201704191327412993.jpg', N'http://blog.csdn.net/jiankunking/article/details/46953073', 1)
INSERT [dbo].[T_Member] ([pkId], [uLoginName], [mReviewResultID], [mApplyTime], [mName], [mTypeID], [mOrganizationCode], [mAddress], [mCorporateName], [mIDCardNo], [mContacts], [mContactsPhone], [mSummary], [mImgURL], [mURL], [isDeleted]) VALUES (N'C489F479-4441-4C9F-9A4E-16A918338DBC', N'admin', N'-0000', N'2017-04-20 22:20:42', N'是个谁干的', N'-0000', N'165161611', N'十大歌手广东省', N'是个谁干的', N'215151515151511221', N'是个是', N'15196666666', NULL, N'', NULL, 1)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'10430207-4DFC-428D-A77D-5658CC39CE8C', N'MEMBER_201704202033009325', N'一级会员', 0)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'128BD48C-6968-4137-83BB-90F4DCA7FF10', N'-0000', N'默认', 1)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'18220A6A-233C-4534-985E-C427898ABCD7', N'MEMBER_201704202032458967', N'二级会员', 0)
INSERT [dbo].[T_MemberType] ([pkId], [mTypeID], [mTypeValue], [isDeleted]) VALUES (N'781D35FD-B120-4D1C-A508-DC3D505E09B9', N'MEMBER_201705121431156182', N'黄金会员', 0)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'10EEF174-EDC4-4149-B124-914A2D113492', N'PM201705121500058571', N'行业动态', 0)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'3F3BA226-2C16-4FB8-8D78-89B59DF7D46E', N'PM201705081717000793', N'政策法规', 0)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'65A3A139-D062-4BF5-9063-B3F95E501ACB', N'-0000', N'默认', 1)
INSERT [dbo].[T_PMType] ([pkId], [pmTypeID], [pmTypeValue], [isDeleted]) VALUES (N'A91E2E9F-8812-4333-819C-FF56DA4D2220', N'PM201705121459507282', N'协会工作', 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'04F94B8C-9ECF-4D2F-A94B-4971309E6A14', N'admin', NULL, N'-0000', N'PMAD_201704202130047864', N'2017-04-20 21:30:04', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'0E273710-AC9F-4AD5-8747-46A7ACF95C11', N'admin', N'水电费是否大声道...', N'-0000', N'PMAD_201704202231198376', N'2017-04-20 22:31:19', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'0EC2227F-CAD2-4DC5-8086-1D68E3D2954F', N'admin', N'123...', N'PM201705081717000793', N'PMAD_201705131334103339', N'2017-05-13 13:34:10', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'0F0B32C8-3535-4F25-8753-03ED58886BEF', N'123', N'新形势下，行业协会应如何开展工作', N'PM201705121459507282', N'123', N'2017-04-20 21:25:43', 136, N'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;风吹开了记忆的锁，想起一段旧时光，曾错失的你我，空留下遗憾，桃花灼灼，寂寞未央，越想忘记越深刻，痛过、醉过，心碎到无奈。对你的难舍，让流年溢满苦涩的味道；以为放下了却在梦醒后，想起你的音容泪滑落。
　　
　　——题记
　　
　　又见花开满城，是你又来过吗？说不清为什么，为何被孤独和悲伤牵扯。解不开的因果，三千华发生，一念执着，一生倾心。
　　
　　披上那件霓衣，舞一曲倾城，你拨弄的琴音扰乱了心扉，一段过往，一个故事，执笔间，光阴流转。执著的都随风，要经历多少风雨，才能看到彩虹。
　　
　　剪不断纠葛，繁华的灯亮起来，一个人走在拥挤的长街，你是否会想起相遇的那一天，只那一眼，便诉了衷肠，步步沦陷，此后，岁月荏苒，一生倾心，走不出情网。
　　
　　只因那年一遇见，命运从此便不同。想要圆满的结局，偏偏天不随人愿。如果不是离别太匆匆。怎会拼命想再见。情之一字，本就无解，不巧我们都沦陷。所有的情节，只能在梦中浮现，像万语千言不停催我赌上明天。一别经年，路途辗转，对你的呼唤，你再也听不见。
　　
　　落红飞花，月缺月圆，无所谓年月，原来，痴情的人早已遗忘了时间，任凭沧海变桑田，初心不改。送君千里，一步一摇一回眸中，得此一生。执笔记录飞快，山一程，水一程，梦一生，念一生，不过是流年的碎片。
　　
　　手上磨出了老茧，一再写意，只剩心伤。相思一片千万缕，唯有一颗真心难描画，明月夜，就让当空的皓月寄去思念，守候着绝美月光，倾洒一身寂寞。
　　
　　凡尘过往，终不过是一场繁华，谁深情的回眸，谁又在世间等待着蒹葭。明月照亮天涯路，灯火阑珊处，已无人守候。沉默亦是最好的良药，时光已翩然而去，拂去衣上风霜，不过是寻常。
　　
　　站在风中，一声叹息划破夜的沉静，你说，记忆终会散会，依如逝水。我却始终认为最珍贵的记忆，将是永恒。就像有的人，在一起十年依然记忆浅薄，有的人即使是相识一天，也可以记住一生。莫怪世人天生薄凉，只是身不由已罢了。
　　
　　多少情深，化作多情的雨，伴着眼泪一路走来，留下无数憧憬，如果生活只剩诗和远方，我愿种下十里桃林，酿一坛桃花酒，醉卧十里花香，抹去所有记忆，换一个人的天涯。
　　
　　你说，情深不寿，慧极生悲。昨日一别，世上再无深情，独我带着旧时光，一路跌跌撞撞，写下无数文字，最后都变成了你来时的模样。花已葬，梦已醒，拿起放下本难当，红尘梦中空徘徊，曲终人散，只有伤心人才懂，你若还在，便是晴天。
　　
　　我曾经以为不去计较，就可以换一个相依。但是人终要醒，最真的自己总要来。过往历历在目，曾经受过多少伤，吃过多少苦，又有谁能够明白？下一个路口，下一个转角，相遇和离别，都变得无足轻重。
　　
　　或许我一直在等那么一个人能够让我放下所有的忧伤，重拾笑颜。你来与不来，都在我心中的一个角落，我若离开，后会无期，你的存在让我相信过这世界的美好，即使此后一路荒凉。
　　
　　说起彼此的故事，仿佛还在昨天，原来，你的世界，曾是我路过的幸福，此后与寂寞有染，在尘世历经坎坷。花开若相知过，花落后分离又有什么可惜，清风明月，伴我独行，你离别时的赠语，写得那样凄美，如今落满尘埃。
　　
　　你说，你会一直记住那个人，直到生命的尽头。我站在茫茫夜色中，看到你眼中满是决绝，漫漫人生路，我只是一个平凡的女子，却想得到世间倾世的爱，也就注定会以悲剧收场吧。一个人走向远方，听着那首熟悉的歌。幸好你来过，曾留下一路芬芳，一诉衷肠，一生倾心。
　　
　　文/昕月蓝殇.落笔于2017.2.16.QQ:1743038490
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0, 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'1282C35B-95A2-44A7-8282-FBFAEE1E511E', N'admin', N'21312312...', N'-0000', N'PMAD_201704202150017868', N'2017-04-20 21:50:01', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'174FDEF4-69DB-4AF5-AC76-2B908997A2F2', N'admin', N'66666666哦...', N'-0000', N'PMAD_201704201329049067', N'2017-04-18 13:29:24', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'18D32312-089C-4BF0-86D0-6AB4DAE23E1F', N'admin', NULL, N'-0000', N'PMAD_201704202129203028', N'2017-04-20 21:29:20', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'1BF76678-79BF-4A1D-B063-4D319696E02E', N'admin', NULL, N'PM201705081717000793', N'PMAD_201705082018438528', N'2017-05-08 20:18:43', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'2EBD29B3-517A-4627-B691-6C190D39AB81', N'admin', NULL, N'-0000', N'PMAD_201704202138133753', N'2017-04-20 21:38:13', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'40475E29-CC50-43FC-85A7-448BF70ED042', N'admin', NULL, N'-0000', N'PMAD_201704202146202222', N'2017-04-20 21:46:20', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'4E363343-43D7-4DA5-97CC-0C90DB952197', N'admin', N'123...', N'-0000', N'PMAD_201704202156280279', N'2017-04-20 21:56:28', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'5C72635D-883A-4EA4-80F5-F02BBE40CE33', N'admin', NULL, N'-0000', N'PMAD_201704202217330623', N'2017-04-20 22:17:33', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'636F0D7C-40A5-48D6-A8E6-94ED03A3AB33', N'admin', NULL, N'PM201705081717000793', N'PMAD_201705081717112626', N'2017-05-08 17:17:08', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'74211B83-6C17-47D5-9F00-8F2065D7CF90', N'admin', NULL, N'-0000', N'PMAD_201704202128337342', N'2017-04-20 21:28:33', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'74A7D80B-0B9E-4201-98F0-C8CFF608D78E', N'123', N'“说曹操”和“曹操专车”打官司，法院咋判？', N'PM201705081717000793', N'1231', N'2017-05-12 16:43:24', 126, N'<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">第17个“世界知识产权日”即将来临，昨天，省高级法院在杭州铁路运输法院召开媒体见面会，并启动知识产权司法保护宣传周活动。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　会上介绍了去年全省知识产权司法保护的总体状况；展示了“辉煌三十年”杭州知识产权司法保护成果；还通过视频连线，直播了杭州滨江法院对“曹操专车”商标侵权案的一审宣判。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　一场关于“曹操”的官司</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“说曹操，曹操到。”打车软件“曹操专车”的这句宣传口号大家耳熟能详，不想却也由此引发了一场侵犯商标专用权纠纷。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　原告浙江曹一操网络科技有限公司（以下简称“曹一操公司”）将“曹操专车”的运营公司杭州优行科技有限公司（以下简称“优行科技”）告上法庭，要求被告立即在打车软件APP上停止使用“曹操”商标。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　原告表示，他们在2016年取得了“说曹操”商标注册证，核定使用商品为第九类计算机程序（可下载软件）、可下载的计算机应用软件等。但原告发现被告公司在未经许可的情况下，擅自将开发运营的打车软件APP命名为“曹操专车”，且打车软件APP与原告商标核准使用的商品属于同一类别。原告认为，被告的行为涉嫌侵害商标专用权。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　到底构不构成侵权，昨天滨江法院在判决中给出了答案。法院认为，商标究竟识别的是商品来源还是服务来源，应结合商标的具体使用方式，从相关公众一般注意力角度予以认定。虽然“曹操专车”标识的程序本身为计算机应用程序，但是被告向消费者提供该应用程序下载是供其作为工具使用，知晓此应用程序是用于预约专车服务的工具，此标识指向的是专车预约服务来源，而非单独提供的软件商品的来源。所以“曹操专车”并不是第9类“计算机程序（可下载软件）、可下载的计算机应用软件”商品的来源。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　关于两者商标是否构成相同或近似，法院在判决中表示，“曹操专车”由历史人名“曹操”和专车通用名称组合而成，指向专车服务，而“说曹操”商标由动词“说”和历史人名“曹操”组合而成，一般公众通常理解为对“曹操”这一历史人物及其经历的评述，故二者文字部分的组成、含义也不相似。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　由于原告未对注册商标“说曹操”进行过实际使用，相关公众未曾通过此注册商标识别其核定的商品，该商标不具有知名度；但“曹操专车”商标经使用获得了较高的知名度和影响力，从两者使用的实际情形来看，也不容易导致相关公众混淆。因此，滨江法院认为“曹操专车”组合商标与“说曹操”文字商标不构成商品来源混淆性近似，一审驳回原告的全部诉讼请求。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　浙江法院知识产权司法保护硕果累累</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　近年来，浙江法院十分注重知识产权的司法保护，全省法院立足执法办案第一要务，2016年共新收知识产权民事一审案件18630件，审结18516件，同比分别上升9.59%和18.18%。针对知识产权司法保护中的疑难和前沿问题，各级法院进行了有益探索，打造了一批具有价值导向的精品案件。在最高法院评选的2015年中国法院十大知识产权案件和50个典型知识产权案例中，全省法院有1件入选十大知识产权案件、4件入选50个典型案例，是入选案件数量最多的省份之一。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　省高院联合省知识产权局等单位，于2015年在义乌建立国内首家专业的知识产权诉调对接第三方公益平台，2016年又在宁波开展“知识产权综合运用与保护第三方平台”工作。截至2016年底，义乌平台共接收诉前及诉中委托案件1381件，成功调解611件，调解成功率44.24%；宁波平台共接收诉中委托案件1295件，成功调解878件，调解成功率67.80%，形成了可复制推广的“义乌模式”“宁波模式”，获得了最高法院、国家知识产权局和社会各界的高度肯定。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　据了解，自杭州中院1984年审理首例技术合同纠纷案件以来，杭州法院受理的知识产权案件数量高速增长，收案量从1984年的2件、2000年的175件上升至2016年的6382件；受理的案件类型亦不断拓展，目前已经覆盖了所有类型的知识产权以及各种方式的市场竞争行为。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　近年来，涉网知识产权案件不断涌现。自2015年起，杭州法院着力打造全流程在线的审判平台，实现了立案、调解、庭审、判决等各环节的网络化。截至目前，西湖、滨江、余杭法院及杭州中院网上法庭共处理涉网知识产权案件千余件，极大地方便了当事人诉讼、节约成本，实现了“网上纠纷网上解，网上纠纷不落地”。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　杭州铁路运输法院自去年7月1日起开始集中管辖杭州市8个县市区的知识产权民事案件，发挥跨区划管辖的独特优势，审结了一批如“方顺和”老字号不正当竞争案、“大头儿子”动画形象衍生产品著作权侵权案，“新百伦”“纽威”等知名商标侵权案等一大批颇具影响力的案件。同时，铁路法院还依托浙江大学的人才优势，设立了全国首家“跨行政区划审判研究中心”，在强化智力支持的同时，进一步提升了杭州知识产权审判的知名度。</p>', 0, 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'768423FB-5C53-4E63-B516-6C0A03DC01E4', N'admin', N'乐山全力攻坚重大项目 “一总部三基地”投资超进度', N'PM201705121500058571', N'PMAD_201705121850502818', N'2017-05-12 18:50:50', 8, N'<p><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">记者近日从乐山市经信委获悉，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">开年以来，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">全市工业和信息化系统认真贯彻落实全省“项目年”和全市“基础设施建设年”各项工作和供给侧结构性改革，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">主动作为，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">突出重点，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">干在实处，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">全市工业经济实现良好开局。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">一季度，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">全市规上工业增加值增长9.8%，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">高于全省平均1.3个百分点；</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">工业投资完成106.5亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">技改投资完成82.6亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">分别超全年序时进度5.4和8个百分点；</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">工业主营业务收入421.8亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">同比增长22.9%。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">工业对经济增长的贡献率达62%，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">拉动经济增长5.1个百分点。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　今年以来，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">乐山市经信委突出目标任务“跟踪督导”，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">提前对各区（市）县一季度各项工作计划进行认真摸排，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">“差别化”制定各地工业开局工作目标任务。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">坚持工业经济发展“月调度”工作机制，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">根据调度反映的问题，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">会同市级相关单位和区（市）县进行深入研判，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">千方百计合力解决。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　同时，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">市经信委建立全委“挂图作战”指挥体系，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">明确重大项目全力攻坚，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">分别编制完成“一总部三基地”各个产业经济发展规划。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">一季度，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">“一总部三基地”共完成投资5.5亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">高新区完成2.57亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">夹江完成0.8亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">犍为完成1.6亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">五通桥区完成0.47亿元，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">均超时序进度。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlag">（张永彪 张翼 记者 蒋培路）</span></span></span></p>', 0, 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'859424AB-3065-486D-B052-7D6EA3BB85C8', N'admin', N'司法为民，服务更简更快更好', N'PM201705081717000793', N'0', N'2017-05-12 16:43:28', 157, N'<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;">椒江法院诉讼服务中心面积近1000平方米，设有案件受理、诉讼事务、诉调对接兼信访接待、收费服务、执行服务五大功能区，</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;">平均每年接待群众30000余人次，提供导诉服务20000余人次。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　台州椒江法院牢记“人民群众对美好生活的向往就是我们的奋斗目标”，按照“面向群众、面向基层、面向实际”的要求，推进“大立案、大服务、大调解”机制建设，努力提升司法服务体验。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　近年来，椒江法院司法服务工作得到了上级法院的充分肯定，立案庭先后荣获全国“巾帼文明岗”等荣誉20项，两次荣立“集体二等功”，连续6年在台州中院组织的年度考核中荣获全市第一。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　实行“大立案”机制</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　让群众“最多跑一次”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　椒江法院严格落实立案登记制，有案必立、有诉必理，同时规制滥诉行为。自2015年5月立案登记制实施以来，法院共登记立案34419件，提供的诉讼服务做到了让99.95%的案件当事人“最多跑一次”。当事人到法院立案，只要符合立案条件，材料齐全，就能当场快速办完立案、缴费手续，全程最多只需15分钟。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　同时，椒江法院大力推行邮寄立案、网上立案、跨域立案、延伸立案等做法，畅通诉讼渠道，实现诉讼服务“零距离”。即使当事人身在千里之外，也能通过网上诉讼服务平台进行在线立案。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　前不久，家住义乌的王先生就在椒江法院12368诉讼服务热线的帮助下体验了一把网上立案，感觉十分方便快捷。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“喂，您好！这里是椒江法院12368诉讼服务热线，请问您有什么需要帮助的？”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“我是王某某，家在义乌，被告是你们椒江的，我想到椒江法院起诉，可是我没时间过来，怎么办？”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“王先生您好，我们法院针对不方便来院的当事人开通了网上立案服务，您可以通过我院网上诉讼服务中心的网上立案板块提交立案申请，法官将在7日内进行审核。”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“这么方便啊，那我就不用特地跑过去了，谢谢啦！”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　放下电话，王先生就到网上诉讼服务中心填写并提交了自己的相关信息，上传了他的民事诉状及身份信息。很快，案子通过了审核，予以立案。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　自2016年椒江法院开通网上自助立案以来，法院共接收网上立案申请1931件，受理1896件，不方便来法院的当事人“一次都不用跑”即可在家轻松完成立案。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　完善“大服务”机制</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　让群众体验高效便捷</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　椒江法院优化空间布局，健全服务功能，建成全省首家集诉讼服务大厅、诉讼服务网络、12368诉讼服务热线于一体的诉讼服务中心，实现网上网下无缝衔接，让当事人随时随地享受高效便捷的诉讼服务。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　一走进椒江法院宽敞明亮的诉讼服务大厅，就能看到写有“导诉台”醒目字样的木质台桌，由法院青年干警担任的志愿者和一名法援律师在这里无偿为当事人提供法律咨询、代写文书、申请援助等服务。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“窗口说我起诉状写得不对，该怎么改？”一位大爷拿着起诉状进行询问。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“您好大爷，左边那里是书写区，有法律文书样本和印泥，你可以参照着改，改完记得按手印。要是看不清的话，桌上还有老花镜可以用。”志愿者耐心答道。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　大爷刚问完，一位男子又过来咨询了。“我想打官司，但不识字，能找人帮忙吗？”“我旁边这位就是律师，你把情况说一下，他可以免费帮你写诉状。”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“不知道我那个案件执行得怎么样了，我可以到哪里问问？”另一位男子焦急地问道。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　“别急，你是什么案件？经办法官是谁？我帮你联系一下。”</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　……</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　椒江法院通过青年干警志愿服务导诉机制和法援值班律师“一周驻点机制”相结合，帮助不熟悉诉讼流程的群众学会打官司，保障经济困难的当事人打得起官司。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　诉讼服务大厅共有15个功能不同的窗口为当事人办理业务，为方便当事人等候，法院设置了休息等候区，并配备手机加油站、饮水机、母婴室等人性化设施，为当事人提供贴心服务。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　强化“大调解”机制</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　让矛盾纠纷多元化解</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　椒江法院在诉讼服务大厅设立诉调对接服务点，充分发挥人民调解组织、基层司法所与法院的互动优势，打造多元立体纠纷化解的“椒江模板”。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　法院收到适于调解的案件材料后，通过与司法局指派常驻于诉讼服务中心的工作人员衔接，将纠纷向下分流，接收相应纠纷的基层司法所落实专人负责，实现“点对点”归口对接。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　分流后，纠纷化解主要以村（社区）调解组织为基础，街道（镇）和区人民调解委员会为骨干，行业性专业调解组织和其他区域性调解组织为补充，形成全网式调解模式，就近、就地、专业化解纠纷。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　针对不同类型纠纷的特点，椒江法院将诉调对接触角延伸至各个领域，实现纠纷的类案衔接化解。对集团诉讼案件，如商品房销售合同纠纷，法院采取“典型个案先裁、后续整体化解”的方式，分化平息群体性矛盾纠纷；对涉及行业性、专业领域的纠纷，如消费、物业等纠纷，法院采取特邀专家参与调解的方式，从专业角度高质量化解纠纷；对需要综合考虑当地风俗习惯、交易习惯的纠纷，如邻里关系、遗产继承等纠纷，法院会将材料及时流转至纠纷所在村居，由相应的调解组织进行调处。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　此外，椒江法院构建了交通事故处理中心派员驻点调解、联合消协设立消费纠纷专门法庭委托调解、人民调解工作室邀请调解、物业专项纠纷诉调对接和立案前先期调解等诉前多维调处机制，2012年以来，诉前成功化解各类纠纷5641件，诉前纠纷化解率达38.74%。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　近年来椒江法院积极运用立案调解职能化解社会矛盾，2012年以来，法院成功调处各类矛盾纠纷17570件，涉及标的额14966.99万元。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　椒江法院还特别为涉民工工资的追索劳动报酬案件开设绿色通道，帮助书写困难的外来民工准备诉讼材料，当天立案当天调解，并由政府垫资，确保民工及时拿回工资。2012年以来，法院成功调处群体性追索劳动报酬纠纷1917件，帮助民工追回工资2411万元。</p>', 0, 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'8D1996F3-697F-4C00-ABD0-CD9D6BEBD2D9', N'admin', NULL, N'PM201705081717000793', N'PMAD_201705081905012864', N'2017-05-16 19:04:58', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'8DF37E3E-7C4F-4520-BFD8-83CC7B6316E9', N'admin', N'1232...', N'-0000', N'PMAD_201704202157155836', N'2017-04-20 21:57:15', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'986C69B0-4F5D-4105-8DE3-F90B3D2003AC', N'admin', NULL, N'-0000', N'PMAD_201704202137466848', N'2017-04-20 21:37:46', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'9BA333D6-4F7A-4457-803F-113EAC16D1D1', N'admin', NULL, N'PM201705081717000793', N'PMAD_201705121529271887', N'2017-05-12 15:29:27', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'ABCE4419-8F65-4E35-90F5-4BA74E3DCD51', N'admin', NULL, N'PM201705081717000793', N'PMAD_201705082050071116', N'2017-05-08 20:50:07', 4, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'B50245E7-AFCC-4FFD-B020-2550B6335ACC', N'admin', N'水电费顺丰到付...', N'-0000', N'PMAD_201704202203254918', N'2017-04-20 22:03:25', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'C0473E44-0119-44FD-993A-2D5A2080AE9B', N'admin', N'地方根深蒂固时光飞逝...', N'-0000', N'PMAD_201704202150527027', N'2017-04-20 21:50:52', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'C7F8A38B-684B-4CED-93D8-53D647D0547D', N'admin', NULL, N'-0000', N'PMAD_201704202216365090', N'2017-04-20 22:16:36', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'DE90A5B6-C036-4F0E-B149-2A02F73FB5B7', N'admin', N'5月10日的国务院常务会定了这三件大事', N'PM201705081717000793', N'PMAD_201705121849062534', N'2017-05-12 18:49:06', 1, N'<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">通过《兴边富民行动“十三五”规划》，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">听取去产能工作进展和重点行业淘汰落后产能督查情况汇报，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">部署扩大和升级信息消费。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">5月10日的国务院常务会定了这3件大事，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">会上，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">李克强总理对这些工作作出了哪些部署？</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国政府网（微信号：</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlag">zhengfu）为你梳理───</span></span></span><br/><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><a href="http://imgs.sc.gov.cn/10462/13241/2017/5/11/201751184136_5931730.jpg" target="_blank" style="margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 0); text-decoration-line: none;"><img src="/../../../upload/ueditor/remote/20170512/6363021176781609109844047.jpg"/></a><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　1、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要改善边境地区基础设施条件，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加强教育、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">医疗、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">养老、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">就业、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">文化等基本公共服务，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">到2020年实现边境村庄通路、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">通电、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">通信息、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">通安全饮用水及有合格卫生室和村医、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">有安全住房等目标。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">实施精准支持边民就地就近脱贫的措施。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　2、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要发展农牧业、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">文化旅游、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">民族手工艺等特色优势产业和商贸物流等产业园区，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">实施沿边重点城镇、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">少数民族特色村镇建设工程。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加强边境生态安全保障，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">探索率先建立自然资源资产收益扶持和多元化生态保护补偿机制。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　3、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要加大政策扶持和对口支援力度，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">各部门的惠民政策、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">项目和工程要向边境地区倾斜，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">合理提高对边民的基本医保补助标准，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">促进就业创业。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　4、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要深化沿边开放合作，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">推动相关边境地区融入“一带一路”建设，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">推进人员往来和通关便利化，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">完善相关监管，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">促进边民互市贸易发展。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><a href="http://imgs.sc.gov.cn/10462/13241/2017/5/11/201751184139_151938.jpg" target="_blank" style="margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 0); text-decoration-line: none;"><img src="/../../../upload/ueditor/remote/20170512/6363021176799873392129661.jpg"/></a><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　1、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要更多运用市场化法治化手段，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">扎实有效化解和淘汰过剩落后产能。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">坚决查处违法违规生产建设及不符合环保、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">质量、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">安全等标准的企业，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">对工作不力的地方要严肃问责。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">各地要限时将前期排查中发现的“地条钢”产能彻底取缔、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">拆除设备，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">严防死灰复燃。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">对列入年度去产能任务的煤矿要在11月底全部退出。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">淘汰、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">停建、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">缓建煤电项目的任务要尽快明确时限、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">责任到人。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　2、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要把做好转岗职工分流安置放在突出位置。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">支持钢城煤城打造“双创”平台，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加快培育新动能，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">强化就业困难职工托底帮扶。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要及时拨付和用好中央财政专项奖补资金，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">地方和企业要落实相关资金与措施，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">确保分流职工就业有出路、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">生活有保障。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加强债务处置指导，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">鼓励有条件的企业实施兼并重组。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　3、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">要强化督查督办，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">各地要及时公布去产能相关信息，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">健全举报制度，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">防止淘汰落后产能弄虚作假，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">同时坚决控制劣质煤进口。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><a href="http://imgs.sc.gov.cn/10462/13241/2017/5/11/201751184141_4371624.jpg" target="_blank" style="margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 0); text-decoration-line: none;"><img src="/../../../upload/ueditor/remote/20170512/6363021176817747004887857.jpg"/></a><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; line-height: 26px;"><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　1、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">支持企业研发数字家庭等产品，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">大力发展智能可穿戴、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">虚拟现实等高端智能设备。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">壮大在线教育、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">医疗和数字影音等新业态、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">新模式。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">支持用市场化方式发展知识分享平台。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　2、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加快推进网络提速降费，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">推动通信、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">物流、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">支付、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">售后等全过程降成本。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加快信息终端普及和信息进村入户，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">扩大信息消费覆盖面。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　3、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">完善网络安全和市场监管体系，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">切实加强个人信息保护，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">严厉打击信息和网络诈骗。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">用安全、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">便捷、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">丰富的信息消费助力经济升级和民生改善。</span></span></span></span></p>', 0, 0)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'EDA24B5D-FA52-4B7A-AF39-3D71D3DDDC95', N'admin', NULL, N'-0000', N'PMAD_201704202203112920', N'2017-04-20 22:03:11', 0, NULL, 0, 1)
INSERT [dbo].[T_PublishManage] ([pkId], [uLoginName], [pmTitle], [pmTypeID], [pmADImgListID], [pmPublishTime], [pmViews], [pmText], [pmPreview], [isDeleted]) VALUES (N'FC34CDDD-3658-4552-BF92-5E7E68DA1A19', N'admin', N'2017国际创业孵化峰会在成都举行 李克强致贺信', N'PM201705121500058571', N'PMAD_201704202203431008', N'2017-04-20 22:03:43', 7, N'<p><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">5月11日，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">2017国际创业孵化峰会在蓉举行。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中共中央政治局常委、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">国务院总理李克强致信表示祝贺。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　李克强在贺信中表示，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">创业孵化是培育科技型中小企业、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加速科技成果转化、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">推动协同创新的重要手段。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">三十年来，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国创业孵化从无到有、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">从小到大，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">吸纳和服务了40多万家初创企业、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">带动就业200多万人，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">实现了创新、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">创业、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">就业的有机结合和良性循环，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">为促进经济社会发展发挥了重要作用。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　李克强指出，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">当前中国经济发展正处在新旧动能转换和经济结构升级的关键时期。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">我们将贯彻落实新发展理念，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">深入实施创新驱动发展战略，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">营造更好的创业孵化环境，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">深入推动大众创业万众创新，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">构建大中小企业跨界融合发展、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">资源与收益共享的新型产业生态，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">打造动力更加强劲的经济发展新引擎。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国愿与世界各国进一步加强合作，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">形成创新合力，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">为全球经济注入新动力。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　2017国际创业孵化峰会由科技部、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">省政府主办，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">以“全球变革中的创业孵化”为主题。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">全国政协副主席、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国科协主席、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">科技部部长万钢，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">省委副书记、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">省长尹力出席峰会并讲话。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　万钢在川期间，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">省委书记王东明前往驻地看望。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　峰会开幕式上，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">万钢代表科技部对与会嘉宾表示诚挚欢迎。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">他说，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">30年来，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国科技创业孵化事业为经济社会发展做出重要贡献，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">取得了瞩目的发展成就，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">也积累总结了宝贵经验。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">当前，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国科技创业孵化在双创浪潮中迎来历史性机遇，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">逐渐步入经济建设主战场，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">呈现出新的发展趋势——创业孵化能力更加专业化，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">创业孵化资源更加集成化，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">创业孵化服务更加多元化，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">创业孵化生态更加开放化。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">推进创新创业国际化是大势所趋，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国政府在此方面做了大量卓有成效的工作。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">成都市长期坚持对外开放，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">在中国西部厚植了这样一片国际创新创业的沃土，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">建立了中韩创新创业园等一批合作载体，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">有效链接和配置着全球创新创业资源。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">举办此次峰会，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">希望各国代表能互相学习借鉴创业孵化先进经验和做法，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">共同谋划新时期全球创业孵化发展蓝图。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">建议进一步加强国际合作与对话，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">加快促进全球创新创业要素的自由流动和市场配置，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">完善一视同仁、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">公平竞争的法律、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">监管和政策体系，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">打造创新创业互利共赢的合作平台，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">不断凝聚各国创业孵化发展的共识与合力，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">推动全球创业孵化更好更快发展，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">助推全球经济可持续增长。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　尹力代表省委省政府欢迎与会嘉宾。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">他说，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">四川是中国全面创新改革试验区，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">当前正认真贯彻落实新发展理念，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">深入实施创新驱动发展战略，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">把全面创新改革作为引领我省“十三五”发展的“一号工程”扎实推进。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">本次峰会是一次创业孵化的国际盛会，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">为大家提供了信息交流、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">思想碰撞、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">成果互鉴的重要平台。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">我们将加强创业孵化的国际合作，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">进一步深化“创业四川”行动，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">激发创新创业活力，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">不断释放新需求、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">创造新供给、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">培育新发展动能。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">我们诚挚邀请全球有志于创业的朋友们，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">把激情、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">思想、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">技术或项目带到四川，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">放飞理想、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">实现价值。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">我们热切期待各位专家学者多到四川走走看看，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">为四川经济社会发展提出好的意见建议。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　峰会开幕式上，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">科技部火炬中心为联合国科学技术促进发展基金会原主席鲁斯坦·拉卡卡、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">武汉东湖新技术创业中心主任龚暐颁发荣誉证书；</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">中国国际创业孵化联盟宣布启动。</span><span class="abtFlag"></span></span></span><span class="abtFlag"></span></span><br/><br/><span class="abtFlagGroup" style="font-family: 宋体; background-color: rgb(255, 255, 255);"><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">　　省委常委、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">成都市委书记范锐平，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">副省长刘捷，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">省政协副主席陈放，</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">成都市委副书记、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">市长罗强等出席峰会。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">来自国家部委、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">全球顶级孵化器、</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlagGroup"><span class="abtFlag">一流创投机构等单位的近800位嘉宾参会。</span><span class="abtFlag"></span></span></span><span class="abtFlag"><span class="abtFlag">（记者 熊筱伟 张明海 胡彦殊）</span></span></span></p>', 0, 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'1C9E9F2E-4623-4582-AC3E-679F74FA68B3', N'REVIEW_201704231218193639', N'审核通过', 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'3C38C104-43CA-4255-AF63-FFF21F045E15', N'REVIEW_201704231218122425', N'审核中', 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'5880F12D-64AA-4E9A-B9D5-B177C7283E31', N'REVIEW_201704231218322327', N'审核不通过', 0)
INSERT [dbo].[T_ReviewResult] ([pkId], [mReviewResultID], [mReviewResultValue], [isDeleted]) VALUES (N'8AE804BC-9A3A-4012-988C-AADC96B13F8A', N'-0000', N'默认', 1)
SET IDENTITY_INSERT [dbo].[T_SysModule] ON 

INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (0, N'根目录', NULL, NULL, -1, NULL, 1, 1, NULL, 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (1, N'基本功能', NULL, N'/Images/icons/32X32/ico_type.png', 0, 1, 1, 1, NULL, 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (2, N'系统管理', NULL, N'/Images/icons/32X32/ico_setting.png', 0, 2, 1, 1, NULL, 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (3, N'后台管理', N'/Manager/System/ModuleView', N'/Images/icons/32X32/ico_home.png', 2, 3, 1, 0, N'SystemController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (4, N'系统配置', N'/Manager/Config/WebSiteConfig', N'/Images/icons/32X32/ico_system.png', 2, 4, 1, 0, N'SystemController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (5, N'用户管理', N'/Manager/User/UsersView', N'/Images/icons/32X32/ico_user.png', 1, 5, 1, 0, N'UserController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (6, N'会员管理', N'/Manager/Member/MemberView', N'/Images/icons/32X32/ico_member.png', 1, 6, 1, 0, N'MemberController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (7, N'类型管理', N'/Manager/TypeManager/TypeManagerView', N'/Images/icons/32X32/ico_list.png', 2, 7, 1, 0, N'TypeManagerController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (8, N'发布管理', N'/Manager/PublishManager/PublishManagerView', N'/Images/icons/32X32/ico_publish.png', 1, 8, 1, 0, N'PublishManagerController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (9, N'友情链接', N'/Manager/FriendLink/FriendLinkView', N'/Images/icons/32X32/ico_link.png', 1, 9, 1, 0, N'FriendLinkController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (10, N'下载管理', N'/Manager/DownloadManager/DownloadManagerView', N'/Images/icons/32X32/ico_download.png', 1, 0, 1, 0, N'DownloadManagerController.cs', 0)
INSERT [dbo].[T_SysModule] ([pkId], [mName], [mLinkUrl], [mIcon], [mParentNo], [mSort], [mIsVisible], [mIsMenu], [mController], [isDeleted]) VALUES (11, N'导出', N'/Manager/ExportToExcel/ToExcelView', N'/Images/icons/32X32/ico_output.png', 2, 0, 1, 0, N'ExportToExcelController.cs', 1)
SET IDENTITY_INSERT [dbo].[T_SysModule] OFF
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'0A6039BF-6527-4C72-9E09-F63EAF080F7F', N'123', N'-0000', N'202CB962AC59075B964B07152D234B70', N'123', N'123', N'123', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'1B6AE27E-C37B-4C57-99F0-B476436CDFD4', N'admin', N'0001', N'E10ADC3949BA59ABBE56E057F20F883E', N'徐志坚', N'15196606817', N'abcd@qq.com', N'540c35ebcad0029dabf40032b320de73', 0)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'38F5600E-008F-4269-919A-0A756CF68E6A', N'fdvx', N'0001', N'76D80224611FC919A5D54F0FF9FBA446', N'qwe', N'qwe', N'qwe', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'4F121135-8D68-4C46-A900-386BEA801E1F', N'qweqwe', N'0001', N'E10ADC3949BA59ABBE56E057F20F883E', N'hdfgdfg', N'12231', N'132132', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'5A896C3D-B2AB-4AE9-9A4D-926CD651990D', N'abc@qq.com', N'-0000', N'F008F80A084C17262C26782F60F55494', NULL, NULL, N'abc@qq.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'7393FD83-6688-4FEC-9FCD-9349519931EF', N'234', N'0001', N'D5EE2EEDFCF7ADC285DB4967BD86910D', N'admin', N'15198888888', N'123@we.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'7AEB48A0-DD88-4F49-AB9A-6058422FFE42', N'qwe', N'-0000', N'E4C4E24EDD254BB81FC6E3FE7A1A5DD4', N'adma', N'123', N'123', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'8F57845D-FE8B-4474-8DD2-20334FF562D9', N'asdfgh', N'-0000', N'202CB962AC59075B964B07152D234B70', N'暂无', N'15196667123', N'abc@qq.com', N'Oh!Error!', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'98B13AFF-5BCC-48CC-AD47-8C9996669D1C', N'dsfgf', N'0001', N'25D55AD283AA400AF464C76D713C07AD', N'qweqwqeqe', N'sdfg', N'dsfg', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'A4CF9A8D-D502-4E15-A7B6-F93B26F6513E', N'12334', N'-0000', N'E10ADC3949BA59ABBE56E057F20F883E', N'游客10235', N'15196606817', N'add@qq.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'E4F33141-46AA-4E61-9C81-A5EBC2E7BE2C', N'sdfgdsgsd', N'0001', N'45DA26AF5C12B859E68D6CDA4C84C392', N'dsfgsdgsfg', N'15196660112', N'sdfds@qeq.com', N'暂无', 1)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'E714E920-558E-497A-8482-263183C2065D', N'user', N'0001', N'EE11CBB19052E40B07AAC0CA060C23EE', N'用户甲', N'15196666781', N'abc@qq.com', N'暂无', 0)
INSERT [dbo].[T_User] ([pkId], [uLoginName], [uLoginTypeID], [uPassword], [uUserName], [uPhone], [uMaiBox], [uClientKey], [isDeleted]) VALUES (N'F34EC132-CA89-41D0-85C9-F380BFBDB858', N'1234', N'0001', N'E3CEB5881A0A1FDAAD01296D7554868D', N'111111', N'22222', N'22222', N'暂无', 1)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'0813851F-549D-430B-B2B0-6F0934DB7E7E', N'0001', N'管理员', 0)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'7EC1C43E-6377-4069-BEB0-DB55268197BF', N'USER_201705121430291163', N'黑名单', 0)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'9B88F996-0B59-4E86-BD13-29D191422AE6', N'USER_201704202020457215', N'普通用户', 0)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'AC87BD76-DB77-4CED-84D0-0FB0A3770786', N'USER_201705121430570891', N'重点观察用户', 0)
INSERT [dbo].[T_UserType] ([pkId], [uLoginTypeID], [uLoginTypeValue], [isDeleted]) VALUES (N'CA44B176-0A40-44EC-A75D-9A5410EDF9E3', N'-0000', N'默认', 1)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_DMType__FFFED06FD725D726]    Script Date: 2017/5/13 21:44:57 ******/
ALTER TABLE [dbo].[T_DMType] ADD UNIQUE NONCLUSTERED 
(
	[dmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_FLType__7262AE05E14D6977]    Script Date: 2017/5/13 21:44:57 ******/
ALTER TABLE [dbo].[T_FLType] ADD UNIQUE NONCLUSTERED 
(
	[flTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_Member__2A79F813AA949E76]    Script Date: 2017/5/13 21:44:57 ******/
ALTER TABLE [dbo].[T_MemberType] ADD UNIQUE NONCLUSTERED 
(
	[mTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_PMType__3AD7C5E49065F367]    Script Date: 2017/5/13 21:44:57 ******/
ALTER TABLE [dbo].[T_PMType] ADD UNIQUE NONCLUSTERED 
(
	[pmTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_Publis__BA84907558667AB7]    Script Date: 2017/5/13 21:44:57 ******/
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [UQ__T_Publis__BA84907558667AB7] UNIQUE NONCLUSTERED 
(
	[pmADImgListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_Review__AFC875150008755E]    Script Date: 2017/5/13 21:44:57 ******/
ALTER TABLE [dbo].[T_ReviewResult] ADD UNIQUE NONCLUSTERED 
(
	[mReviewResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_LOGINNAME]    Script Date: 2017/5/13 21:44:57 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_LOGINNAME] ON [dbo].[T_User]
(
	[uLoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__T_UserTy__2205C04605950F58]    Script Date: 2017/5/13 21:44:57 ******/
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
