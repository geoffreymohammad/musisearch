USE [AssetAndroid]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](255) NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
	[status] [int] NULL CONSTRAINT [DF_admin_status]  DEFAULT ((0)),
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetImage]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssetImage](
	[ASSET_IMAGE_ID] [int] IDENTITY(1,1) NOT NULL,
	[ASSET_OPNAME_ID] [int] NOT NULL,
	[ASSET_IMAGE_PATH] [varchar](100) NULL,
	[DELETED] [int] NULL,
	[CREATED] [datetime] NULL,
	[CREATED_BY_LOGIN_HISTORY] [int] NULL,
	[LAST_MODIFIED] [datetime] NULL,
	[LAST_MODIFIED_BY_LOGIN_HISTORY] [int] NULL,
	[ASSET_SAP_ID] [int] NOT NULL,
	[ASSET_BATCH_ID] [int] NOT NULL,
 CONSTRAINT [PK_AssetImage] PRIMARY KEY CLUSTERED 
(
	[ASSET_IMAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetOpname]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssetOpname](
	[ASSET_OPNAME_ID] [int] IDENTITY(1,1) NOT NULL,
	[ASSET_SAP_ID] [int] NOT NULL,
	[ASSET_BATCH_ID] [int] NOT NULL,
	[IS_SYNC] [bit] NULL,
	[DELETED] [int] NULL,
	[CREATED] [datetime] NULL,
	[CREATED_BY_LOGIN_HISTORY] [int] NULL,
	[LAST_MODIFIED] [datetime] NULL,
	[LAST_MODIFIED_BY_LOGIN_HISTORY] [int] NULL,
	[CONDITION] [varchar](50) NULL,
	[LATITUDE] [varchar](50) NULL,
	[LONGITUDE] [varchar](50) NULL,
	[REMARK] [varchar](100) NULL,
	[LOCATION_DESCRIPTION] [varchar](150) NULL,
	[POC] [varchar](50) NULL,
	[DEPARTMENT] [varchar](50) NULL,
 CONSTRAINT [PK_AssetOpname] PRIMARY KEY CLUSTERED 
(
	[ASSET_OPNAME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gender]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[status] [int] NOT NULL CONSTRAINT [DF_gende_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_gende] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[genre]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[genre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[status] [int] NULL CONSTRAINT [DF_genre_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[group_band]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[group_band](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NULL,
	[status] [int] NULL CONSTRAINT [DF_group_band_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_group_band] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[initialStatus]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[initialStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NULL,
	[status] [int] NULL CONSTRAINT [DF_initialStatus_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_initialStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[instrument]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[instrument](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[status] [int] NULL CONSTRAINT [DF_instrument_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_instrument] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[likes]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[musisi] [int] NULL,
	[status] [int] NULL CONSTRAINT [DF_likes_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_likes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[member_band]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_band](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[musisi] [int] NULL,
	[group_band] [int] NULL,
	[status] [int] NULL CONSTRAINT [DF_member_band_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_member_band] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[musisi]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[musisi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](150) NULL,
	[image_path] [varchar](100) NULL,
	[email] [varchar](50) NULL CONSTRAINT [DF_Table_1_status]  DEFAULT ((0)),
	[password] [varchar](255) NULL,
	[telp] [varchar](50) NULL,
	[biography] [varchar](max) NULL,
	[tgl_lahir] [date] NULL,
	[gender] [int] NULL,
	[genre] [int] NULL,
	[region] [int] NULL,
	[instrument1] [int] NULL,
	[instrument2] [int] NULL,
	[instrument3] [int] NULL,
	[status] [int] NULL CONSTRAINT [DF_musisi_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_musisi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[status] [int] NULL CONSTRAINT [DF_region_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[status]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[initial_status] [int] NULL,
	[musisi] [int] NULL,
	[nama] [varchar](200) NULL,
	[status] [int] NULL CONSTRAINT [DF_status_status]  DEFAULT ((0)),
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[status_image]    Script Date: 07/05/2019 8:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[status_image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_id] [int] NULL,
	[image_path] [varchar](250) NULL,
	[status] [int] NULL,
	[created_by] [int] NULL,
	[created_date] [datetime] NULL,
	[modified_by] [int] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_status_image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [nama], [email], [password], [created_by], [created_date], [modified_by], [modified_date], [status]) VALUES (1, N'dodo', N'dodo@gmail.com', N'8FB02A5437773A18196C61473BD89A234C0AE2F3', 1, CAST(N'2019-03-19 04:52:04.000' AS DateTime), 1, CAST(N'2019-03-22 11:20:25.860' AS DateTime), 0)
INSERT [dbo].[admin] ([id], [nama], [email], [password], [created_by], [created_date], [modified_by], [modified_date], [status]) VALUES (2, N'dora', N'dora@gmail.com', N'8CB2237D0679CA88DB6464EAC60DA96345513964', 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 0)
INSERT [dbo].[admin] ([id], [nama], [email], [password], [created_by], [created_date], [modified_by], [modified_date], [status]) VALUES (6, N'Michael', N'michael@gmail.com', N'8CB2237D0679CA88DB6464EAC60DA96345513964', 6, CAST(N'2019-03-20 16:33:32.270' AS DateTime), 1, CAST(N'2019-03-21 17:19:04.077' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[AssetOpname] ON 

INSERT [dbo].[AssetOpname] ([ASSET_OPNAME_ID], [ASSET_SAP_ID], [ASSET_BATCH_ID], [IS_SYNC], [DELETED], [CREATED], [CREATED_BY_LOGIN_HISTORY], [LAST_MODIFIED], [LAST_MODIFIED_BY_LOGIN_HISTORY], [CONDITION], [LATITUDE], [LONGITUDE], [REMARK], [LOCATION_DESCRIPTION], [POC], [DEPARTMENT]) VALUES (1, 16369, 7, 0, 0, CAST(N'2018-12-14 17:35:49.000' AS DateTime), 614, CAST(N'2018-12-14 17:35:49.000' AS DateTime), 614, N'Baik', NULL, NULL, N'23176278', N'damkar', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AssetOpname] OFF
SET IDENTITY_INSERT [dbo].[gender] ON 

INSERT [dbo].[gender] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'Pria', 0, 0, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 0, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[gender] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Wanita', 0, 0, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 0, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[gender] OFF
SET IDENTITY_INSERT [dbo].[genre] ON 

INSERT [dbo].[genre] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'Pop', 0, 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 1, CAST(N'2019-05-06 07:24:09.377' AS DateTime))
INSERT [dbo].[genre] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Dangdut', 0, 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[genre] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, N'Rock', 0, 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[genre] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (4, N'Pop Dut', 0, 1, CAST(N'2019-03-29 15:57:06.397' AS DateTime), 1, CAST(N'2019-04-01 10:00:33.573' AS DateTime))
INSERT [dbo].[genre] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (8, N'test', 0, 1, CAST(N'2019-04-01 19:28:42.960' AS DateTime), 1, CAST(N'2019-04-01 19:28:42.960' AS DateTime))
INSERT [dbo].[genre] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (9, N'Pop Rock Dut', 0, 1, CAST(N'2019-04-01 19:29:04.853' AS DateTime), 1, CAST(N'2019-04-01 19:29:04.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[genre] OFF
SET IDENTITY_INSERT [dbo].[group_band] ON 

INSERT [dbo].[group_band] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'Nirvana', 0, 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime), 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime))
INSERT [dbo].[group_band] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Scorpion', 0, 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime), 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime))
INSERT [dbo].[group_band] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, N'Noah', 0, 30, CAST(N'2019-04-16 16:11:26.900' AS DateTime), 30, CAST(N'2019-04-16 16:11:26.900' AS DateTime))
SET IDENTITY_INSERT [dbo].[group_band] OFF
SET IDENTITY_INSERT [dbo].[initialStatus] ON 

INSERT [dbo].[initialStatus] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'Now Jamming', 0, 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime), 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime))
INSERT [dbo].[initialStatus] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Now Listening', 0, 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime), 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime))
INSERT [dbo].[initialStatus] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, N'Looking For', 0, 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime), 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime))
SET IDENTITY_INSERT [dbo].[initialStatus] OFF
SET IDENTITY_INSERT [dbo].[instrument] ON 

INSERT [dbo].[instrument] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'Gitar', 0, 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 6, CAST(N'2019-05-06 07:29:16.050' AS DateTime))
INSERT [dbo].[instrument] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Piano', 0, 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[instrument] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, N'Drum', 0, 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[instrument] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (4, N'Bass', 0, 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[instrument] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (6, N'aa', 1, 1, CAST(N'2019-05-06 07:34:15.023' AS DateTime), 6, CAST(N'2019-05-06 07:34:18.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[instrument] OFF
SET IDENTITY_INSERT [dbo].[likes] ON 

INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, 30, 0, 30, CAST(N'2019-04-02 10:25:16.137' AS DateTime), 30, CAST(N'2019-04-02 10:25:16.137' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, 30, 0, 2, CAST(N'2019-04-02 10:25:16.137' AS DateTime), 2, CAST(N'2019-04-02 10:25:16.137' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, 30, 0, 3, CAST(N'2019-04-08 16:40:06.270' AS DateTime), 3, CAST(N'2019-04-08 16:40:06.270' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1008, 2, 0, 30, CAST(N'2019-04-24 13:10:23.330' AS DateTime), 30, CAST(N'2019-04-24 13:10:23.330' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1009, 3, 0, 30, CAST(N'2019-04-24 13:10:26.660' AS DateTime), 30, CAST(N'2019-04-24 13:10:26.660' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1010, 2, 0, 31, CAST(N'2019-04-24 16:09:51.057' AS DateTime), 31, CAST(N'2019-04-24 16:09:51.057' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1011, 30, 0, 31, CAST(N'2019-04-24 16:10:22.897' AS DateTime), 31, CAST(N'2019-04-24 16:10:22.897' AS DateTime))
INSERT [dbo].[likes] ([id], [musisi], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1012, 31, 0, 30, CAST(N'2019-04-24 16:41:12.917' AS DateTime), 30, CAST(N'2019-04-24 16:41:12.917' AS DateTime))
SET IDENTITY_INSERT [dbo].[likes] OFF
SET IDENTITY_INSERT [dbo].[member_band] ON 

INSERT [dbo].[member_band] ([id], [musisi], [group_band], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, 30, 1, 0, 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime), 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime))
INSERT [dbo].[member_band] ([id], [musisi], [group_band], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, 2, 1, 0, 30, CAST(N'2019-04-16 13:59:58.710' AS DateTime), 30, CAST(N'2019-04-16 13:59:58.710' AS DateTime))
INSERT [dbo].[member_band] ([id], [musisi], [group_band], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, 30, 2, 0, 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime), 30, CAST(N'2019-04-16 13:58:18.680' AS DateTime))
SET IDENTITY_INSERT [dbo].[member_band] OFF
SET IDENTITY_INSERT [dbo].[musisi] ON 

INSERT [dbo].[musisi] ([id], [nama], [image_path], [email], [password], [telp], [biography], [tgl_lahir], [gender], [genre], [region], [instrument1], [instrument2], [instrument3], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Dimas', N'imageString', N'dimas@gmail.com', N'12345', NULL, N'string3', CAST(N'2019-01-27' AS Date), 1, 4, 3, 1, 3, 4, 0, 1, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 2, CAST(N'2019-04-16 11:17:52.727' AS DateTime))
INSERT [dbo].[musisi] ([id], [nama], [image_path], [email], [password], [telp], [biography], [tgl_lahir], [gender], [genre], [region], [instrument1], [instrument2], [instrument3], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, N'Dodo', NULL, N'dodo@gmail.com', N'12345', NULL, NULL, CAST(N'2019-01-27' AS Date), 1, 2, 2, 1, 2, 3, 0, 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 6, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[musisi] ([id], [nama], [image_path], [email], [password], [telp], [biography], [tgl_lahir], [gender], [genre], [region], [instrument1], [instrument2], [instrument3], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (30, N'Dimas Aprizawandi', N'musisearch_20190416_125540_554048068.jpg', N'dimas.aprizawandi@gmail.com', NULL, N'0813134345', N'nullasdds
aaaaa', CAST(N'2019-04-02' AS Date), 1, 3, 5, 1, 3, 2, 0, 0, CAST(N'2019-04-02 10:25:16.137' AS DateTime), 30, CAST(N'2019-04-16 16:13:30.533' AS DateTime))
INSERT [dbo].[musisi] ([id], [nama], [image_path], [email], [password], [telp], [biography], [tgl_lahir], [gender], [genre], [region], [instrument1], [instrument2], [instrument3], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (31, N'dimas zawandi', N'musisearch_20190412_142411_4998535413082952679.jpg', N'animatorist@gmail.com', NULL, N'689358', NULL, CAST(N'2019-04-12' AS Date), 1, 1, 3, 4, 3, 2, 0, 0, CAST(N'2019-04-12 14:23:20.117' AS DateTime), 31, CAST(N'2019-04-12 14:24:16.050' AS DateTime))
INSERT [dbo].[musisi] ([id], [nama], [image_path], [email], [password], [telp], [biography], [tgl_lahir], [gender], [genre], [region], [instrument1], [instrument2], [instrument3], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1031, N'mike cann', NULL, N'mikecann99@gmail.com', NULL, N'123456', NULL, CAST(N'2019-05-12' AS Date), 1, 9, 1, 1, 4, 3, 0, 0, CAST(N'2019-05-02 13:42:31.643' AS DateTime), 0, CAST(N'2019-05-02 13:42:31.643' AS DateTime))
SET IDENTITY_INSERT [dbo].[musisi] OFF
SET IDENTITY_INSERT [dbo].[region] ON 

INSERT [dbo].[region] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (1, N'Jakarta Selatan', 0, 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 1, CAST(N'2019-04-01 11:21:55.610' AS DateTime))
INSERT [dbo].[region] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (2, N'Jakarta Barat', 0, 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[region] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, N'Jakarta Timur', 0, 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[region] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (4, N'Jakarta Utara', 0, 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime), 2, CAST(N'2019-03-19 18:52:04.000' AS DateTime))
INSERT [dbo].[region] ([id], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (5, N'Jakarta Pusat', 0, 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime), 1, CAST(N'2019-04-01 13:55:27.420' AS DateTime))
SET IDENTITY_INSERT [dbo].[region] OFF
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [initial_status], [musisi], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (3, 1, 3, N'Bersama Tulus', 0, 1, CAST(N'2019-04-01 13:57:27.420' AS DateTime), 1, CAST(N'2019-04-01 13:57:27.420' AS DateTime))
INSERT [dbo].[status] ([id], [initial_status], [musisi], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (8, 1, 30, N'Bersama Peterpan', 0, 1, CAST(N'2019-04-03 13:57:27.420' AS DateTime), 1, CAST(N'2019-04-03 13:57:27.420' AS DateTime))
INSERT [dbo].[status] ([id], [initial_status], [musisi], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (9, 2, 2, N'Noah - Sendiri Lagi', 0, 1, CAST(N'2019-04-03 14:57:27.420' AS DateTime), 1, CAST(N'2019-04-03 14:57:27.420' AS DateTime))
INSERT [dbo].[status] ([id], [initial_status], [musisi], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (11, 3, 30, N'asdasdasdasd', 0, 30, CAST(N'2019-04-05 13:29:08.120' AS DateTime), 30, CAST(N'2019-04-05 13:29:08.120' AS DateTime))
INSERT [dbo].[status] ([id], [initial_status], [musisi], [nama], [status], [created_by], [created_date], [modified_by], [modified_date]) VALUES (12, 2, 30, N'sdsddd', 0, 30, CAST(N'2019-04-05 13:30:53.257' AS DateTime), 30, CAST(N'2019-04-05 13:30:53.257' AS DateTime))
SET IDENTITY_INSERT [dbo].[status] OFF
ALTER TABLE [dbo].[AssetImage] ADD  CONSTRAINT [DF_AssetImage_DELETED]  DEFAULT ((0)) FOR [DELETED]
GO
ALTER TABLE [dbo].[status_image] ADD  CONSTRAINT [DF_status_image_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FK_likes_musisi] FOREIGN KEY([musisi])
REFERENCES [dbo].[musisi] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FK_likes_musisi]
GO
ALTER TABLE [dbo].[musisi]  WITH CHECK ADD  CONSTRAINT [FK_musisi_gender] FOREIGN KEY([gender])
REFERENCES [dbo].[gender] ([id])
GO
ALTER TABLE [dbo].[musisi] CHECK CONSTRAINT [FK_musisi_gender]
GO
ALTER TABLE [dbo].[musisi]  WITH CHECK ADD  CONSTRAINT [FK_musisi_genre] FOREIGN KEY([genre])
REFERENCES [dbo].[genre] ([id])
GO
ALTER TABLE [dbo].[musisi] CHECK CONSTRAINT [FK_musisi_genre]
GO
ALTER TABLE [dbo].[musisi]  WITH CHECK ADD  CONSTRAINT [FK_musisi_instrument] FOREIGN KEY([instrument1])
REFERENCES [dbo].[instrument] ([id])
GO
ALTER TABLE [dbo].[musisi] CHECK CONSTRAINT [FK_musisi_instrument]
GO
ALTER TABLE [dbo].[musisi]  WITH CHECK ADD  CONSTRAINT [FK_musisi_instrument1] FOREIGN KEY([instrument2])
REFERENCES [dbo].[instrument] ([id])
GO
ALTER TABLE [dbo].[musisi] CHECK CONSTRAINT [FK_musisi_instrument1]
GO
ALTER TABLE [dbo].[musisi]  WITH CHECK ADD  CONSTRAINT [FK_musisi_instrument2] FOREIGN KEY([instrument3])
REFERENCES [dbo].[instrument] ([id])
GO
ALTER TABLE [dbo].[musisi] CHECK CONSTRAINT [FK_musisi_instrument2]
GO
ALTER TABLE [dbo].[musisi]  WITH CHECK ADD  CONSTRAINT [FK_musisi_region] FOREIGN KEY([region])
REFERENCES [dbo].[region] ([id])
GO
ALTER TABLE [dbo].[musisi] CHECK CONSTRAINT [FK_musisi_region]
GO
ALTER TABLE [dbo].[status]  WITH CHECK ADD  CONSTRAINT [FK_status_initialStatus] FOREIGN KEY([initial_status])
REFERENCES [dbo].[initialStatus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[status] CHECK CONSTRAINT [FK_status_initialStatus]
GO
ALTER TABLE [dbo].[status]  WITH CHECK ADD  CONSTRAINT [FK_status_musisi] FOREIGN KEY([musisi])
REFERENCES [dbo].[musisi] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[status] CHECK CONSTRAINT [FK_status_musisi]
GO
ALTER TABLE [dbo].[status_image]  WITH CHECK ADD  CONSTRAINT [FK_status_image_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[status] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[status_image] CHECK CONSTRAINT [FK_status_image_status]
GO
/****** Object:  StoredProcedure [dbo].[deleteAdminId]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteAdminId]
	-- Add the parameters for the stored procedure here
	@inId int,
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE admin SET modified_by = @inModifiedBy, modified_date = GETDATE(), status=1 where id = @inId;
END

GO
/****** Object:  StoredProcedure [dbo].[deleteGenre]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteGenre]
	@inId int,
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE genre SET status = 1, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
END

GO
/****** Object:  StoredProcedure [dbo].[deleteInstrument]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteInstrument] 
	@inId int,
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE instrument SET status = 1, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
END

GO
/****** Object:  StoredProcedure [dbo].[deleteRegion]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteRegion]
	@inId int,
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE region SET status = 1, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
END

GO
/****** Object:  StoredProcedure [dbo].[getAdminAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAdminAll]
	-- Add the parameters for the stored procedure here
	@inSearchValue varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY usr.id) AS RowNum, usr.id, usr.email,usr.password, usr.nama, (select nama from admin adm where adm.id = usr.created_by) as created_by_name, 
										usr.created_date, (select nama from admin adm where adm.id = usr.modified_by) as modified_by_name, usr.modified_date, usr.status
															  from 	 admin usr
															  where  usr.status != 1 ';

	if @inSearchValue IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.nama like ''%' + @inSearchValue + '%'' or usr.email like ''%' + @inSearchValue + '%'')';
	END
	SET @queryString =+  @queryString + ') As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getAdminCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAdminCount]
	-- Add the parameters for the stored procedure here
	@inSearchValue varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	DECLARE @ParmDefinition nvarchar(500);
	SET @queryString =		N'select @TOTALROWS = count (usr.id)
								from 	 admin usr
								where  usr.status != 1';
	if @inSearchValue IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.nama like ''%' + @inSearchValue + '%'' or usr.email like ''%' + @inSearchValue + '%'')';
	END

	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'

	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
	--select @TOTALROW As 'TOTALROW';
END

GO
/****** Object:  StoredProcedure [dbo].[getAdminId]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAdminId]
	-- Add the parameters for the stored procedure here
	@inIdAdmin varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY usr.id) AS RowNum, usr.id, usr.email,usr.password, usr.nama, (select nama from admin adm where adm.id = usr.created_by) as created_by_name, 
										usr.created_date, (select nama from admin adm where adm.id = usr.modified_by) as modified_by_name, usr.modified_date, usr.status
															  from 	 admin usr
															  where  usr.status != 1 
															  and (usr.id = ' + @inIdAdmin + ')';

	
	SET @queryString =+  @queryString + ') As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getAdminPage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAdminPage]
	-- Add the parameters for the stored procedure here
	@inSearchValue varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY usr.id) AS RowNum, usr.id, usr.email,usr.password, usr.nama, (select nama from admin adm where adm.id = usr.created_by) as created_by_name, usr.created_date, 
																(select nama from admin adm where adm.id = usr.modified_by) as modified_by_name, usr.modified_date, usr.status
															  from 	 admin usr
															  where  usr.status != 1 ';

	if @inSearchValue IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.nama like ''%' + @inSearchValue + '%'' or usr.email like ''%' + @inSearchValue + '%'')';
	END

	SET @queryString =+  @queryString + ') As temp
										WHERE temp.RowNum <= ' + @inEndRow +'
									 ) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getAllOpname]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
CREATE PROCEDURE [dbo].[getAllOpname] 
	-- Add the parameters for the stored procedure here
	@inSapId varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * from dbo.AssetOpname where ASSET_SAP_ID = @inSapId;
END


GO
/****** Object:  StoredProcedure [dbo].[getBandAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getBandAll] 
	-- Add the parameters for the stored procedure here
	@inNama varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  gnr.created_by, adm_created.nama as created_by_name, gnr.created_date,  gnr.modified_by, adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 group_band gnr
															  LEFT JOIN musisi adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN musisi adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getBandById]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getBandById] 
	@inNama varchar(50),
	@inMusisi varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, mmb.musisi, mss.nama as nama_musisi,
															  gnr.created_by, adm_created.nama as created_by_name, gnr.created_date,  gnr.modified_by, adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 group_band gnr
															  LEFT JOIN musisi adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN musisi adm_modified ON adm_modified.id = gnr.modified_by
															  INNER JOIN member_band mmb ON mmb.group_band = gnr.id
															  INNER JOIN musisi mss ON mss.id = mmb.musisi
															  where  gnr.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inMusisi IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (mmb.musisi = ' + @inMusisi + ')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getGenreAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getGenreAll]
	-- Add the parameters for the stored procedure here
	@inNama varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 genre gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getGenreCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getGenreCount]
	@inNama varchar(50),
	@inId varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ParmDefinition nvarchar(500);
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select @TOTALROWS = count (gnr.id)
															  from 	 genre gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END

	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'
	
	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
END

GO
/****** Object:  StoredProcedure [dbo].[getGenrePage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getGenrePage]
	-- Add the parameters for the stored procedure here
	@inNama varchar(50),
	@inId varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 genre gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ') As temp
										WHERE temp.RowNum <= ' + @inEndRow +'
									 ) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getInitialAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInitialAll] 
	-- Add the parameters for the stored procedure here
	@inNama varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 initialStatus gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getInitialCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInitialCount]
	@inNama varchar(50),
	@inId varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ParmDefinition nvarchar(500);
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select @TOTALROWS = count (gnr.id)
															  from 	 initialStatus gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END

	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'
	
	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
END

GO
/****** Object:  StoredProcedure [dbo].[getInitialPage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInitialPage]
	@inNama varchar(50),
	@inId varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 initialStatus gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ') As temp
										WHERE temp.RowNum <= ' + @inEndRow +'
									 ) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getInstrumentAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInstrumentAll]
	-- Add the parameters for the stored procedure here
	@inNama varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.nama) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 instrument gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getInstrumentCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInstrumentCount]
	@inNama varchar(50),
	@inId varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ParmDefinition nvarchar(500);
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select @TOTALROWS = count (gnr.id)
															  from 	 instrument gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END

	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'
	
	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
END

GO
/****** Object:  StoredProcedure [dbo].[getInstrumentPage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInstrumentPage]
-- Add the parameters for the stored procedure here
	@inNama varchar(50),
	@inId varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 instrument gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ') As temp
										WHERE temp.RowNum <= ' + @inEndRow +'
									 ) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getMemberAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getMemberAll]
	@inMusisi varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.group_band, gbd.nama as nama_band, gnr.musisi, mss.nama as nama_musisi,
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 member_band gnr
															  LEFT JOIN musisi adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN musisi adm_modified ON adm_modified.id = gnr.modified_by
															  LEFT JOIN musisi mss ON mss.id = gnr.musisi
															  LEFT JOIN group_band gbd ON gbd.id = gnr.group_band
															  where  gnr.status != 1';

	
	if @inMusisi IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (mbd.musisi = ' + @inMusisi + ')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.group_band = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getMusisiAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getMusisiAll]
	-- Add the parameters for the stored procedure here
	@inSearchValue varchar(50),
	@inId varchar(50),
	@likeBy varchar(50),
	@inGender varchar(50),
	@inGenre varchar(50),
	@inRegion varchar(50),
	@inInstrument1 varchar(50),
	@inInstrument2 varchar(50),
	@inInstrument3 varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from
								(
								SELECT
								temp.*
								FROM 
								(
								select ROW_NUMBER() OVER(ORDER BY usr.email) AS RowNum, usr.id, usr.email,usr.password, usr.nama, usr.telp, usr.biography, usr.image_path, usr.tgl_lahir ,
								gen.id as gender, gen.nama as gender_name, usr.genre, gnr.nama as genre_name, usr.region, rgn.nama as region_name,
								usr.instrument1, ist1.nama as instrument1_name, usr.instrument2, ist2.nama as instrument2_name,
								usr.instrument3, ist3.nama as instrument3_name,
								usr.created_date, adm_created.nama as created_by_name ,usr.modified_date, adm_modified.nama as modified_by_name,usr.status, count(lks.id) as total ';

	if @likeBy is NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' ,(select 
													CASE 
														WHEN count(id) > 0 THEN 1
														ELSE 0
													END
													from likes where musisi = usr.id and created_by = '+@likeBy+'
											   ) as is_likes ';
	END
	ELSE
	BEGIN
		SET @queryString =+  @queryString + ' ,''is_likes '' = 0 ';
	END

	SET @queryString =+  @queryString + '
										from 	 musisi usr
										LEFT JOIN admin adm_created ON adm_created.id = usr.created_by 
										LEFT JOIN admin adm_modified ON adm_modified.id = usr.modified_by
										INNER JOIN gender gen ON gen.id = usr.gender
										LEFT JOIN genre gnr ON gnr.id = usr.genre
										LEFT JOIN region rgn ON rgn.id = usr.region
										LEFT JOIN instrument ist1 ON ist1.id = usr.instrument1
										LEFT JOIN instrument ist2 ON ist2.id = usr.instrument2
										LEFT JOIN instrument ist3 ON ist3.id = usr.instrument3
										LEFT JOIN likes lks ON lks.musisi = usr.id 
										where  usr.status != 1 ';

	if @likeBy is NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and usr.id != '+@likeBy ;
	END

	if @inSearchValue IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.nama like ''%' + @inSearchValue + '%'' or usr.email like ''%' + @inSearchValue + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.id = '+ @inId + ')';
	END
	if @inGender IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gen.id = '+ @inGender + ')';
	END
	if @inGenre IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = '+ @inGenre + ')';
	END
	if @inRegion IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (rgn.id = ' + @inRegion + ')';
	END
	if @inInstrument1 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist1.id = '+ @inInstrument1 +')';
	END
	if @inInstrument2 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist2.id = '+ @inInstrument2 +')';
	END
	if @inInstrument3 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist3.id = '+ @inInstrument3 +')';
	END
	SET @queryString =+  @queryString + '
	group by usr.id, usr.email,usr.password, usr.nama, usr.telp, usr.biography, usr.image_path, usr.tgl_lahir ,
								gen.id , gen.nama, usr.genre, gnr.nama , usr.region, rgn.nama,
								usr.instrument1, ist1.nama, usr.instrument2, ist2.nama,
								usr.instrument3, ist3.nama,
								usr.created_date, adm_created.nama ,usr.modified_date, adm_modified.nama,usr.status) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getMusisiCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getMusisiCount] 
	-- Add the parameters for the stored procedure here
	@inSearchValue varchar(50),
	@inGender varchar(50),
	@inGenre varchar(50),
	@inRegion varchar(50),
	@inInstrument1 varchar(50),
	@inInstrument2 varchar(50),
	@inInstrument3 varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	DECLARE @ParmDefinition nvarchar(500);
	SET @queryString =		N'select @TOTALROWS = count (usr.id)
								from 	 musisi usr
								LEFT JOIN admin adm_created ON adm_created.id = usr.created_by 
								LEFT JOIN admin adm_modified ON adm_modified.id = usr.modified_by
								INNER JOIN gender gen ON gen.id = usr.gender
								LEFT JOIN genre gnr ON gnr.id = usr.genre
								LEFT JOIN region rgn ON rgn.id = usr.region
								LEFT JOIN instrument ist1 ON ist1.id = usr.instrument1
								LEFT JOIN instrument ist2 ON ist2.id = usr.instrument2
								LEFT JOIN instrument ist3 ON ist3.id = usr.instrument3
								where  usr.status != 1';
	if @inSearchValue IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.nama like ''%' + @inSearchValue + '%'' or usr.email like ''%' + @inSearchValue + '%'')';
	END
	if @inGender IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gen.id = '+ @inGender + ')';
	END
	if @inGenre IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = '+ @inGenre + ')';
	END
	if @inRegion IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (rgn.id = ' + @inRegion + ')';
	END
	if @inInstrument1 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist1.id = '+ @inInstrument1 +')';
	END
	if @inInstrument2 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist2.id = '+ @inInstrument2 +')';
	END
	if @inInstrument3 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist3.id = '+ @inInstrument3 +')';
	END

	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'

	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
	--select @TOTALROW As 'TOTALROW';
END

GO
/****** Object:  StoredProcedure [dbo].[getMusisiPage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getMusisiPage]
	@inSearchValue varchar(50),
	@inId varchar(50),
	@inGender varchar(50),
	@inGenre varchar(50),
	@inRegion varchar(50),
	@inInstrument1 varchar(50),
	@inInstrument2 varchar(50),
	@inInstrument3 varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from
								(
								SELECT
								temp.*
								FROM 
								(
								select ROW_NUMBER() OVER(ORDER BY usr.email) AS RowNum, usr.id, usr.email,usr.password, usr.nama, usr.telp, usr.biography, usr.image_path, usr.tgl_lahir ,
								gen.id as gender, gen.nama as gender_name, usr.genre, gnr.nama as genre_name, usr.region, rgn.nama as region_name,
								usr.instrument1, ist1.nama as instrument1_name, usr.instrument2, ist2.nama as instrument2_name,
								usr.instrument3, ist3.nama as instrument3_name,
								usr.created_date, adm_created.nama as created_by_name ,usr.modified_date, adm_modified.nama as modified_by_name,usr.status, count(lks.id) as total    
								
								from 	 musisi usr
								LEFT JOIN admin adm_created ON adm_created.id = usr.created_by 
								LEFT JOIN admin adm_modified ON adm_modified.id = usr.modified_by
								INNER JOIN gender gen ON gen.id = usr.gender
								LEFT JOIN genre gnr ON gnr.id = usr.genre
								LEFT JOIN region rgn ON rgn.id = usr.region
								LEFT JOIN instrument ist1 ON ist1.id = usr.instrument1
								LEFT JOIN instrument ist2 ON ist2.id = usr.instrument2
								LEFT JOIN instrument ist3 ON ist3.id = usr.instrument3
								LEFT JOIN likes lks ON lks.musisi = usr.id 
								where  usr.status != 1';

	if @inSearchValue IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.nama like ''%' + @inSearchValue + '%'' or usr.email like ''%' + @inSearchValue + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (usr.id = '+ @inId + ')';
	END
	if @inGender IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gen.id = '+ @inGender + ')';
	END
	if @inGenre IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = '+ @inGenre + ')';
	END
	if @inRegion IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (rgn.id = ' + @inRegion + ')';
	END
	if @inInstrument1 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist1.id = '+ @inInstrument1 +')';
	END
	if @inInstrument2 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist2.id = '+ @inInstrument2 +')';
	END
	if @inInstrument3 IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (ist3.id = '+ @inInstrument3 +')';
	END
	SET @queryString =+  @queryString + '
	group by usr.id, usr.email,usr.password, usr.nama, usr.telp, usr.biography, usr.image_path, usr.tgl_lahir ,
								gen.id , gen.nama, usr.genre, gnr.nama , usr.region, rgn.nama,
								usr.instrument1, ist1.nama, usr.instrument2, ist2.nama,
								usr.instrument3, ist3.nama,
								usr.created_date, adm_created.nama ,usr.modified_date, adm_modified.nama,usr.status) As temp 
											WHERE temp.RowNum <= ' + @inEndRow +'
											) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getRegionAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getRegionAll]
	@inNama varchar(50),
	@inId varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 region gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getRegionCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getRegionCount]
	@inNama varchar(50),
	@inId varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ParmDefinition nvarchar(500);
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select @TOTALROWS = count (gnr.id)
															  from 	 region gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END

	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'
	
	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
END

GO
/****** Object:  StoredProcedure [dbo].[getRegionPage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getRegionPage]
	@inNama varchar(50),
	@inId varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY gnr.id) AS RowNum, gnr.id, gnr.nama, 
															  adm_created.nama as created_by_name, gnr.created_date,adm_modified.nama as modified_by_name,
															  gnr.modified_date,gnr.status
															  from 	 region gnr
															  LEFT JOIN admin adm_created ON adm_created.id = gnr.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = gnr.modified_by
															  where  gnr.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.nama like ''%' + @inNama + '%'')';
	END
	if @inId IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (gnr.id = ' + @inId + ')';
	END
	SET @queryString =+  @queryString + ') As temp
										WHERE temp.RowNum <= ' + @inEndRow +'
									 ) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getStatusAll]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getStatusAll]
	@inNama varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY sts.modified_date desc) AS RowNum, sts.id, mss.nama as musisi_name, sts.musisi, mss.email,
															  mss.telp,mss.tgl_lahir,sts.nama, ist.nama as initial_status_name, sts.initial_status,
															  adm_created.nama as created_by_name, sts.created_date,adm_modified.nama as modified_by_name,
															  sts.modified_date,sts.status
															  from 	 status sts
															  LEFT JOIN musisi mss ON mss.id = sts.musisi
															  LEFT JOIN initialStatus ist ON ist.id = sts.initial_status
															  LEFT JOIN admin adm_created ON adm_created.id = sts.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = sts.modified_by
															  where  sts.status != 1';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (mss.nama like ''%' + @inNama + '%'')';
	END
	SET @queryString =+  @queryString + ' ) As temp ) As tt';
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getStatusCount]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getStatusCount]
	@inNama varchar(50),
	@TOTALROW INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ParmDefinition nvarchar(500);
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select @TOTALROWS = count (sts.id)
															  from 	 status sts
															  LEFT JOIN musisi mss ON mss.id = sts.musisi
															  LEFT JOIN initialStatus ist ON ist.id = sts.initial_status
															  LEFT JOIN admin adm_created ON adm_created.id = sts.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = sts.modified_by
															  where  sts.status != 1  ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (mss.nama like ''%' + @inNama + '%'')';
	END
	
	SET @ParmDefinition = N'@TOTALROWS int OUTPUT'
	
	EXECUTE sp_executesql @queryString, @ParmDefinition, @TOTALROWS=@TOTALROW OUTPUT;
END

GO
/****** Object:  StoredProcedure [dbo].[getStatusPage]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getStatusPage]
	@inNama varchar(50),
	@inStartRow varchar(50),
	@inEndRow varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(MAX); 
	SET @queryString =		N'select tt.* 
								from(
									SELECT
									temp.*
									FROM (
										select ROW_NUMBER() OVER(ORDER BY sts.modified_date desc) AS RowNum, sts.id, mss.nama as musisi_name, sts.musisi, mss.email,
															  mss.telp,mss.tgl_lahir,sts.nama, ist.nama as initial_status_name, sts.initial_status,
															  adm_created.nama as created_by_name, sts.created_date,adm_modified.nama as modified_by_name,
															  sts.modified_date,sts.status
															  from 	 status sts
															  LEFT JOIN musisi mss ON mss.id = sts.musisi
															  LEFT JOIN initialStatus ist ON ist.id = sts.initial_status
															  LEFT JOIN admin adm_created ON adm_created.id = sts.created_by
															  LEFT JOIN admin adm_modified ON adm_modified.id = sts.modified_by
															  where  sts.status != 1 ';

	if @inNama IS NOT NULL
	BEGIN
		SET @queryString =+  @queryString + ' and (mss.nama like ''%' + @inNama + '%'')';
	END
	SET @queryString =+  @queryString + ') As temp
										WHERE temp.RowNum <= ' + @inEndRow +'
									 ) As tt WHERE tt.RowNum >=  ' + @inStartRow;
	EXECUTE sp_executesql @queryString;
END

GO
/****** Object:  StoredProcedure [dbo].[getUserAdmin]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getUserAdmin] 
	-- Add the parameters for the stored procedure here
	@inEmail varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @queryString NVARCHAR(500); 
	DECLARE @ParmDefinition nvarchar(500);
	SET @queryString =		N'select usr.id, usr.email,usr.password, usr.nama, usr.created_by, usr.created_date, 
								usr.modified_by, usr.modified_date, usr.status
							  from 	 admin usr
							  where  usr.status != 1
							  and    usr.email = @Email';
    SET @ParmDefinition = N'@Email varchar(50)'; 
	EXECUTE sp_executesql @queryString, @ParmDefinition, @Email = @inEmail;
END

GO
/****** Object:  StoredProcedure [dbo].[insertAdmin]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertAdmin]
	@inNama varchar(50),
	@inEmail varchar(50),
	@inPassword varchar(100),
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from admin ad where ad.email = @inEmail or ad.nama = @inNama;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO ADMIN (nama, email, password, created_by, created_date, modified_by, modified_date)
		VALUES (@nama, @email, @password, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@nama varchar(50),
								@email  varchar(50),
								@password  varchar(100),
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@nama = @inNama,
											@email = @inEmail,
											@password = @inPassword,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertBand]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertBand]
	@inMusisi int,
	@inNama varchar(100),
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from group_band ad where ad.nama = @inNama;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO group_band (nama, created_by, created_date, modified_by, modified_date)
		VALUES (@nama, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@nama varchar(100),
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@nama = @inNama,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;

		SET @queryString = N'INSERT INTO member_band (musisi, group_band, created_by, created_date, modified_by, modified_date)
		VALUES (@musisi, @group_band, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@musisi int,
								@group_band int,
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@musisi = @inMusisi,
											@group_band = @@Identity,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertGenre]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertGenre]
	@inNama varchar(50),
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from genre ad where ad.nama = @inNama;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO genre (nama, created_by, created_date, modified_by, modified_date)
		VALUES (@nama, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@nama varchar(50),
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@nama = @inNama,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertInstrument]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertInstrument]
	@inNama varchar(50),
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from instrument ad where ad.nama = @inNama;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO instrument (nama, created_by, created_date, modified_by, modified_date)
		VALUES (@nama, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@nama varchar(50),
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@nama = @inNama,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertLike]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertLike] 
	@inMusisi int,
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from likes ad where ad.id = @inMusisi and ad.created_by = @inCreatedBy;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO likes (musisi, created_by, created_date, modified_by, modified_date)
		VALUES (@musisi, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@Musisi int,
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@musisi = @inMusisi,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END		
END

GO
/****** Object:  StoredProcedure [dbo].[insertMemberBand]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertMemberBand]
	@inMusisi int,
	@inGroupBand int,
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from member_band ad where ad.musisi = @inMusisi;
	if (@isExists <= 0)
	BEGIN
	SET @queryString = N'INSERT INTO member_band (musisi, group_band, created_by, created_date, modified_by, modified_date)
		VALUES (@musisi, @group_band, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@musisi int,
								@group_band int,
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@musisi = @inMusisi,
											@group_band = @inGroupBand,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertMusisi]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertMusisi]
	@inNama varchar(50),
	@inEmail varchar(50),
	@inTelp varchar(50),
	@inTglLahir varchar(100),
	@inGender int,
	@inGenre int,
	@inRegion int,
	@inInstrument1 int,
	@inInstrument2 int,
	@inInstrument3 int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from musisi ad where ad.email = @inEmail;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO Musisi (nama, email, telp, tgl_lahir, gender, genre, region, instrument1, instrument2, instrument3,created_by, created_date, modified_by, modified_date)
		VALUES (@nama, @email, @telp, @tglLahir, @gender, @genre, @region, @instrument1, @instrument2, @instrument3, 0, GETDATE(), 0, GETDATE())';
		SET @ParmDefinition = N'@nama varchar(50),
								@email  varchar(50),
								@telp  varchar(100),
								@tglLahir  varchar(100),
								@gender int,
								@genre int,
								@region int,
								@instrument1 int,
								@instrument2 int,
								@instrument3 int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@nama = @inNama,
											@email = @inEmail,
											@telp = @inTelp,
											@tglLahir = @inTglLahir,
											@gender = @inGender,
											@genre = @inGenre,
											@region = @inRegion,
											@instrument1 = @inInstrument1,
											@instrument2 = @inInstrument2,
											@instrument3 = @inInstrument3;

		SELECT * FROM Musisi WHERE id = @@Identity;
	END
	ELSE
	BEGIN
		SELECT * FROM Musisi where email = @inEmail;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertRegion]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertRegion]
	@inNama varchar(50),
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	SET @isExists = 0;
	select @isExists = count(ad.id) from genre ad where ad.nama = @inNama;
	if (@isExists <= 0)
	BEGIN
		SET @queryString = N'INSERT INTO region (nama, created_by, created_date, modified_by, modified_date)
		VALUES (@nama, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@nama varchar(50),
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@nama = @inNama,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[insertStatus]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertStatus]
	@inInitialStatus int,
	@inMusisi int,
	@inNama varchar(50),
	@inCreatedBy int,
	@inModifiedBy int
AS
BEGIN
	DECLARE @queryString NVARCHAR(MAX);
	DECLARE @ParmDefinition nvarchar(MAX);
	DECLARE @isExists int;
	
		SET @queryString = N'INSERT INTO status (initial_status, musisi, nama, created_by, created_date, modified_by, modified_date)
		VALUES (@initialStatus, @musisi, @nama, @createdBy, GETDATE(), @modifiedBy, GETDATE())';
		SET @ParmDefinition = N'@initialStatus int,
								@musisi int,
								@nama varchar(50),
								@createdBy int,
								@modifiedBy int';
		EXECUTE sp_executesql @queryString, @ParmDefinition, 
											@initialStatus = @inInitialStatus,
											@musisi = @inMusisi,
											@nama = @inNama,
											@createdBy = @inCreatedBy,
											@modifiedBy = @inModifiedBy;
END

GO
/****** Object:  StoredProcedure [dbo].[updateAdminId]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateAdminId]
	-- Add the parameters for the stored procedure here
	@inId int,
	@inNama varchar(50),
	@inEmail varchar(50),
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE admin SET nama = @inNama, email = @inEmail, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;

END

GO
/****** Object:  StoredProcedure [dbo].[updateGenre]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateGenre]
	@inId int,
	@inNama varchar(50),
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE genre SET nama = @inNama, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
END

GO
/****** Object:  StoredProcedure [dbo].[updateInstrument]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateInstrument] 
	@inId int,
	@inNama varchar(50),
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE instrument SET nama = @inNama, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
END

GO
/****** Object:  StoredProcedure [dbo].[updateMusisi]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateMusisi]
	@inId int,
	@inImagePath varchar(100),
	@inBiography varchar(100),
	@inGenre int,
	@inRegion int,
	@inInstrument1 int,
	@inInstrument2 int,
	@inInstrument3 int,
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if @inImagePath IS NOT NULL
	BEGIN
		UPDATE musisi SET image_path = @inImagePath, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
	END
	ELSE
	BEGIN
		UPDATE musisi SET biography = @inBiography, genre = @inGenre, region = @inRegion, instrument1 = @inInstrument1, instrument2 = @inInstrument2, instrument3 = @inInstrument3,
		modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;

	END
	SELECT * FROM Musisi WHERE id = @inId; 
END

GO
/****** Object:  StoredProcedure [dbo].[updateRegion]    Script Date: 07/05/2019 8:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateRegion]
	@inId int,
	@inNama varchar(50),
	@inModifiedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE region SET nama = @inNama, modified_by = @inModifiedBy, modified_date = GETDATE() where id = @inId;
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 active
1 inactive' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gender', @level2type=N'COLUMN',@level2name=N'status'
GO
