USE [master]
GO
/****** Object:  Database [HRAM-SNU_DB]    Script Date: 2016/12/21 23:02:26 ******/
CREATE DATABASE [HRAM-SNU_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRAM-SNU_DB', FILENAME = N'D:\database\HRAM-SNU_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRAM-SNU_DB_log', FILENAME = N'D:\database\HRAM-SNU_DB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
USE [HRAM-SNU_DB]
GO
/****** Object:  Table [dbo].[T_ADImgList]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ADImgList](
	[pk_id] [nvarchar](50) NOT NULL,
	[PM_ADImgListlD] [nvarchar](50) NOT NULL,
	[PM_ADImgListURL] [nvarchar](50) NOT NULL,
	[PM_ADImgListNum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_ADImgList] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DMType]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DMType](
	[pk_id] [nvarchar](50) NOT NULL,
	[DM_TypeID] [nvarchar](50) NOT NULL,
	[DM_TypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_DMType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DownloadManage]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DownloadManage](
	[pk_id] [nvarchar](50) NOT NULL,
	[A_LoginName] [nvarchar](50) NOT NULL,
	[DM_Title] [nvarchar](50) NOT NULL,
	[DM_TypeID] [nvarchar](50) NOT NULL,
	[DM_FileURL] [nvarchar](50) NOT NULL,
	[DM_DownloadNum] [bigint] NOT NULL,
	[DM_UploadTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_DownloadManage] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_FriendlyLink]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_FriendlyLink](
	[pk_id] [nvarchar](50) NOT NULL,
	[A_LoginName] [nvarchar](50) NOT NULL,
	[FL_Name] [nvarchar](50) NOT NULL,
	[FL_URL] [nvarchar](50) NOT NULL,
	[FL_ImgURL] [nvarchar](50) NOT NULL,
	[FL_AddTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_FriendlyLink] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Members]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Members](
	[pk_id] [nvarchar](50) NOT NULL,
	[A_LoginName] [nvarchar](50) NOT NULL,
	[M_ReviewResultID] [nvarchar](50) NOT NULL,
	[M_ApplyTime] [nvarchar](50) NOT NULL,
	[M_Name] [nvarchar](50) NOT NULL,
	[M_TypeID] [nvarchar](50) NOT NULL,
	[M_OrganizationCode] [nvarchar](50) NOT NULL,
	[M_Address] [nvarchar](50) NOT NULL,
	[M_CorporateName] [nvarchar](50) NOT NULL,
	[M_IDCardNo] [nvarchar](50) NOT NULL,
	[M_Contacts] [nvarchar](50) NOT NULL,
	[M_ContactsPhone] [nvarchar](50) NOT NULL,
	[M_Summary] [text] NOT NULL,
	[M_ImgUrl] [nvarchar](50) NOT NULL,
	[M_URL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_Members] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_MemberType]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MemberType](
	[pk_id] [nvarchar](50) NOT NULL,
	[M_TypeID] [nvarchar](50) NOT NULL,
	[M_TypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_MemberType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PMType]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PMType](
	[pk_id] [nvarchar](50) NOT NULL,
	[PM_TypeID] [nvarchar](50) NOT NULL,
	[PM_TypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_PMType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PublishManage]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PublishManage](
	[pk_id] [nvarchar](50) NOT NULL,
	[A_LoginName] [nvarchar](50) NOT NULL,
	[PM_Title] [nvarchar](50) NOT NULL,
	[PM_TypeID] [nvarchar](50) NOT NULL,
	[PM_ADImgListlD] [nvarchar](50) NOT NULL,
	[PM_PublishTime] [nvarchar](50) NOT NULL,
	[PM_Views] [bigint] NOT NULL,
	[PM_Text] [text] NOT NULL,
	[PM_Preview] [bit] NOT NULL,
 CONSTRAINT [PK_T_PublishManage] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ReviewResult]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ReviewResult](
	[pk_id] [nvarchar](50) NOT NULL,
	[M_ReviewResultID] [nvarchar](50) NOT NULL,
	[M_ReviewResultValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_ReviewResult] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SysModule]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SysModule](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [nvarchar](30) NULL,
	[ModuleLinkUrl] [nvarchar](100) NULL,
	[ModuleIcon] [nvarchar](100) NULL,
	[ParentNo] [int] NULL,
	[Sort] [int] NULL,
	[IsVisible] [bit] NULL,
	[IsSingle] [bit] NULL,
	[IsMenu] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModuleController] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Sys_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_User](
	[pk_id] [nvarchar](50) NOT NULL,
	[A_LoginName] [nvarchar](50) NOT NULL,
	[A_LoginTypeID] [nvarchar](50) NOT NULL,
	[A_Password] [nvarchar](50) NOT NULL,
	[A_UserName] [nvarchar](50) NOT NULL,
	[A_Phone] [nvarchar](50) NOT NULL,
	[A_MaiBox] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_Admin] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_UserType]    Script Date: 2016/12/21 23:02:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UserType](
	[pk_id] [nvarchar](50) NOT NULL,
	[A_LoginTypeID] [nvarchar](50) NOT NULL,
	[A_LoginTypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_UserType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[T_SysModule] ON 

INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (1, N'系统管理', NULL, N'/Scripts/Manager/icons/32X32/settings.gif', 0, 2, 1, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (2, N'部门管理', N'/Manager/System/DepartmentView', N'/Scripts/Manager/icons/32X32/customers.gif', 1, 66, 1, 1, 1, 1, N'Department')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (3, N'后台用户管理', N'/Manager/System/ModuleView', N'/Scripts/Manager/icons/32X32/user.gif', 1, 5, 1, 1, 1, 1, N'SystemController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (4, N'角色管理', N'/Manager/System/RoleView', N'/Scripts/Manager/icons/32X32/role.gif', 1, 6, 1, 1, 1, 1, N'Role')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (5, N'组织架构', NULL, N'/Scripts/Manager/icons/32X32/sitemap.gif', 0, 3, 0, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (8, N'系统日志管理', N'/Admin/OperateLog/Index', N'/Scripts/Manager/icons/32X32/project.gif', 1, 5, 1, 1, 1, 1, N'OperateLog')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (9, N'后台管理', N'/Manager/System/ModuleView', N'/Scripts/Manager/icons/32X32/sitemap.gif', 1, 55, 1, 1, 1, 0, N'Menus')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (11, N'系统权限维护', N'/Manager/System/ModuleView', N'/Scripts/Manager/icons/32X32/config.gif', 1, 10, 1, 1, 1, 1, N'Button')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (23, N'菜单按钮管理', N'/Admin/MenusButtonsManage/Index', N'/Scripts/Manager/icons/32X32/feed.gif', 1, 10, 1, 1, 0, 1, N'MenusButtonsManage')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (24, N'角色权限管理', N'/Admin/RolePermission/Index', N'/Scripts/Manager/icons/32X32/setup.gif', 1, 55, 1, 1, 1, 1, N'RolePermission')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (25, N'系统配置', N'/Manager/Config/WebSiteConfig', N'/Scripts/Manager/icons/32X32/networking.gif', 1, NULL, 1, 1, 0, 0, N'Config')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (27, N'友情链接', N'/Manager/Links/LinksView', N'/Scripts/Manager/icons/32X32/login.gif', 63, 7, 1, 1, 0, 1, N'LinksController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (39, N'产品类别管理', N'/Manager/Products/ProductsTypeView', N'/Scripts/Manager/icons/32X32/feed.gif', 50, 9, 1, 1, 0, 1, N'ProductsController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (41, N'产品管理', N'/Manager/Products/ProductsView', N'/Scripts/Manager/icons/32X32/feed.gif', 63, 1, 1, 1, 1, 1, N'ProductsController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (42, N'企业概况', NULL, N'/Scripts/Manager/icons/32X32/sitemap.gif', 0, 4, 1, 0, 1, 1, NULL)
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (43, N'企业介绍', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/feed.gif', 42, 10, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (44, N'资质荣誉', N'/Manager/Qualification/QualificationView', N'/Scripts/Manager/icons/32X32/feed.gif', 51, 10, 1, 1, 1, 0, N'QualificationController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (45, N'菜单UI管理', N'/Manager/System/MenusUiView', N'/Scripts/Manager/icons/32X32/order_159.gif', 1, NULL, 1, 1, 1, 1, N'SystemController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (46, N'组织机构', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/feed.gif', 42, 10, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (47, N'发展历程', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/feed.gif', 42, 10, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (48, N'测试', N'2', N'/Scripts/Manager/icons/32X32/lock.gif', 1, 48, 1, 1, 1, 1, N'1')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (49, N'测试', N'2', N'/Scripts/Manager/icons/32X32/product.gif', 1, 49, 1, 1, 1, 1, N'1')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (50, N'产品展示', NULL, N'/Scripts/Manager/icons/32X32/product_design.gif', 0, 50, 1, 1, 1, 0, N'ProductsController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (51, N'企业文化', NULL, N'/Scripts/Manager/icons/32X32/member.gif', 0, 51, 1, 1, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (52, N'质量方针', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/searchtool.gif', 51, 52, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (53, N'环境、职业健康安全方针', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/Time Machine.gif', 51, 53, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (54, N'研发能力', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/photography.gif', 51, 54, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (55, N'生产能力和设备', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/delicious (2).gif', 51, 55, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (56, N'人力资源', NULL, N'/Scripts/Manager/icons/32X32/user.gif', 0, 56, 1, 1, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (57, N'人才招聘', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/freelance.gif', 56, 57, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (58, N'联系我们', NULL, N'/Scripts/Manager/icons/32X32/date.gif', 0, 58, 1, 1, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (59, N'我们的服务', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/premium.gif', 58, 59, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (60, N'联系方式', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/hire_me.gif', 58, 60, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (61, N'新闻列表', N'/Manager/Article/NewsView', N'/Scripts/Manager/icons/32X32/communication.gif', 51, 61, 1, 1, 1, 0, N'ArticleController')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (62, N'广告位管理', N'/Manager/Ad/AdView', N'/Scripts/Manager/icons/32X32/feed.gif', 63, 5, 1, 0, 1, 1, N'Ad')
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (63, N'内容管理', NULL, N'/Scripts/Manager/icons/32X32/settings.gif', 0, 1, 1, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([ModuleID], [ModuleName], [ModuleLinkUrl], [ModuleIcon], [ParentNo], [Sort], [IsVisible], [IsSingle], [IsMenu], [IsDeleted], [ModuleController]) VALUES (64, N'单页管理', N'/Manager/SinglePage/SinglePageView', N'/Scripts/Manager/icons/32X32/settings.gif', 63, 2, 1, 1, 1, 1, N'SinglePageController')
SET IDENTITY_INSERT [dbo].[T_SysModule] OFF
INSERT [dbo].[T_User] ([pk_id], [A_LoginName], [A_LoginTypeID], [A_Password], [A_UserName], [A_Phone], [A_MaiBox]) VALUES (N'7E7E975E-7EF1-42E5-9CB1-3EC4C5661945', N'admin', N'0001', N'202CB962AC59075B964B07152D234B70', N'徐志坚', N'15196606812', N'ccc.surpass@qq.com')
ALTER TABLE [dbo].[T_ADImgList] ADD  CONSTRAINT [DF_T_ADImgList_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_DMType] ADD  CONSTRAINT [DF_T_DMType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_DM_DownloadNum]  DEFAULT ((0)) FOR [DM_DownloadNum]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_FL_ImgURL]  DEFAULT (N'暂无') FOR [FL_ImgURL]
GO
ALTER TABLE [dbo].[T_Members] ADD  CONSTRAINT [DF_T_Members_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_Members] ADD  CONSTRAINT [DF_T_Members_M_ImgUrl]  DEFAULT (N'暂无') FOR [M_ImgUrl]
GO
ALTER TABLE [dbo].[T_Members] ADD  CONSTRAINT [DF_T_Members_M_URL]  DEFAULT (N'暂无') FOR [M_URL]
GO
ALTER TABLE [dbo].[T_MemberType] ADD  CONSTRAINT [DF_T_MemberType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_PMType] ADD  CONSTRAINT [DF_T_PMType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_ADImgListlD]  DEFAULT (N'暂无') FOR [PM_ADImgListlD]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_Views]  DEFAULT ((0)) FOR [PM_Views]
GO
ALTER TABLE [dbo].[T_ReviewResult] ADD  CONSTRAINT [DF_T_ReviewResult_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_A_Phone]  DEFAULT (N'暂无') FOR [A_Phone]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_A_MaiBox]  DEFAULT (N'暂无') FOR [A_MaiBox]
GO
ALTER TABLE [dbo].[T_UserType] ADD  CONSTRAINT [DF_T_UserType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
USE [master]
GO
ALTER DATABASE [HRAM-SNU_DB] SET  READ_WRITE 
GO
