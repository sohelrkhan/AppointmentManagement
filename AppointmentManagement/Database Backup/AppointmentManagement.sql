USE [AppointmentManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/4/2021 1:08:55 AM ******/
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
/****** Object:  Table [dbo].[Appointments]    Script Date: 12/4/2021 1:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Duration] [int] NOT NULL,
	[DoctorId] [nvarchar](max) NULL,
	[PatientId] [nvarchar](max) NULL,
	[IsDoctorApproved] [bit] NOT NULL,
	[AdminId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/4/2021 1:08:55 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/4/2021 1:08:55 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/4/2021 1:08:55 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/4/2021 1:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/4/2021 1:08:55 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/4/2021 1:08:55 AM ******/
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
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/4/2021 1:08:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211124114916_addIdentityTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211124191215_addApplicationUser', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211126180139_AddAppointmentToDb', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([Id], [Tittle], [Description], [StartDate], [EndDate], [Duration], [DoctorId], [PatientId], [IsDoctorApproved], [AdminId]) VALUES (8, N'Blood Test', N'O+', CAST(N'2021-11-28T22:31:00.0000000' AS DateTime2), CAST(N'2021-11-29T00:31:00.0000000' AS DateTime2), 120, N'd30cf692-ce45-40e8-8499-9309f7bf575d', N'102a3961-3d3b-4d47-a988-ccb36bc93502', 1, NULL)
INSERT [dbo].[Appointments] ([Id], [Tittle], [Description], [StartDate], [EndDate], [Duration], [DoctorId], [PatientId], [IsDoctorApproved], [AdminId]) VALUES (9, N'Medical Checkup', N'Checkup', CAST(N'2021-11-30T01:38:00.0000000' AS DateTime2), CAST(N'2021-11-30T02:38:00.0000000' AS DateTime2), 60, N'bc3320d3-b36a-47e3-9aaa-f0fd67933466', N'102a3961-3d3b-4d47-a988-ccb36bc93502', 0, NULL)
INSERT [dbo].[Appointments] ([Id], [Tittle], [Description], [StartDate], [EndDate], [Duration], [DoctorId], [PatientId], [IsDoctorApproved], [AdminId]) VALUES (10, N'Test', N'Me', CAST(N'2021-11-01T01:40:00.0000000' AS DateTime2), CAST(N'2021-11-01T02:40:00.0000000' AS DateTime2), 60, N'bc3320d3-b36a-47e3-9aaa-f0fd67933466', N'102a3961-3d3b-4d47-a988-ccb36bc93502', 1, NULL)
INSERT [dbo].[Appointments] ([Id], [Tittle], [Description], [StartDate], [EndDate], [Duration], [DoctorId], [PatientId], [IsDoctorApproved], [AdminId]) VALUES (1009, N'Test', N'A test', CAST(N'2021-12-22T23:51:00.0000000' AS DateTime2), CAST(N'2021-12-23T00:51:00.0000000' AS DateTime2), 60, N'bc3320d3-b36a-47e3-9aaa-f0fd67933466', N'102a3961-3d3b-4d47-a988-ccb36bc93502', 1, NULL)
INSERT [dbo].[Appointments] ([Id], [Tittle], [Description], [StartDate], [EndDate], [Duration], [DoctorId], [PatientId], [IsDoctorApproved], [AdminId]) VALUES (1010, N'Physical Test', N'Check up all my body.', CAST(N'2021-12-10T02:16:00.0000000' AS DateTime2), CAST(N'2021-12-10T03:16:00.0000000' AS DateTime2), 60, N'8d0cece3-ba2f-4293-9a5d-c889a2c917b3', N'0f107c91-5ff1-408c-8c1f-5bc808ceb765', 1, NULL)
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'08b640fb-628c-41ef-9e0d-7937888608e0', N'Patient', N'PATIENT', N'6b08d71f-49a2-47ea-8d4a-05a7aa6dda55')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'20015363-efdd-405f-ac04-ff9553bc5b3b', N'Doctor', N'DOCTOR', N'465b524a-f851-411f-ac0e-05a43516498c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'21434bf2-33c9-4176-9890-a711bd8335ff', N'Admin', N'ADMIN', N'fc440038-2eb4-4ea0-a853-4f61065dc692')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f107c91-5ff1-408c-8c1f-5bc808ceb765', N'08b640fb-628c-41ef-9e0d-7937888608e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'102a3961-3d3b-4d47-a988-ccb36bc93502', N'08b640fb-628c-41ef-9e0d-7937888608e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8d0cece3-ba2f-4293-9a5d-c889a2c917b3', N'20015363-efdd-405f-ac04-ff9553bc5b3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bc3320d3-b36a-47e3-9aaa-f0fd67933466', N'20015363-efdd-405f-ac04-ff9553bc5b3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd30cf692-ce45-40e8-8499-9309f7bf575d', N'20015363-efdd-405f-ac04-ff9553bc5b3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'25e2c527-8b3d-4332-8818-fdfa01a792b0', N'21434bf2-33c9-4176-9890-a711bd8335ff')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'44b6cdb0-c35f-48fb-9439-2c737f6241a0', N'21434bf2-33c9-4176-9890-a711bd8335ff')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'affe82c1-0561-418d-a646-7212e2168244', N'21434bf2-33c9-4176-9890-a711bd8335ff')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd3cc7374-343d-4370-914e-a0224fcc5b03', N'21434bf2-33c9-4176-9890-a711bd8335ff')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'0f107c91-5ff1-408c-8c1f-5bc808ceb765', N'id16103105@gmail.com', N'ID16103105@GMAIL.COM', N'id16103105@gmail.com', N'ID16103105@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC32phuf5zQD2k+N3nJFOgrOHWrzEldTFZ6MS7sld+MFIPrbO50m2UO8tDAxJrSnNQ==', N'OFO7FI7UCEJZG5J76OA3VBYTMWH2BT53', N'e79d27b9-fb85-4061-a0fc-1dd25f3bd4b8', NULL, 0, 0, NULL, 1, 0, N'Patient Sohel id16')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'102a3961-3d3b-4d47-a988-ccb36bc93502', N'khan@gmail.com', N'KHAN@GMAIL.COM', N'khan@gmail.com', N'KHAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEebl+nW4h3vrMSqhpClNUx8XM6W+HqiRRY9d93gSu0SlyC9VccjPLPANu3VLbxA1g==', N'VIG3YS6THNUSJ552RGB4BQPF7MC2MMLS', N'91c007f1-819d-48ad-a26b-fb48321de5b1', NULL, 0, 0, NULL, 1, 0, N'Mr. Khan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'25e2c527-8b3d-4332-8818-fdfa01a792b0', N'admin4@gmail.com', N'ADMIN4@GMAIL.COM', N'admin4@gmail.com', N'ADMIN4@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENlHq5uuz1d1fwMZ6lwFjGolqD+RnM1q0UkS0YP0yTSx/OlUbxmUsE1giQ04RMvIJg==', N'E6QMMIBHB6ST5YVDYCD2NLMXW5WWKD2B', N'bf7f54f8-1610-4dca-9a3c-7fb3e94d47a1', NULL, 0, 0, NULL, 1, 0, N'Admin 4')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'44b6cdb0-c35f-48fb-9439-2c737f6241a0', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPNjIs37WZSFa780VMjnTCDDzwz266noQ11XtNB+AbRJkRkPC4sJVTyd4ml/gfHk5A==', N'XM4TX3W6V2UOEQ4H2H2FO462HND7ECVU', N'f7c0502c-8e0c-4b11-96b5-683fc5abbe10', NULL, 0, 0, NULL, 1, 0, N'Admin2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'8d0cece3-ba2f-4293-9a5d-c889a2c917b3', N'sohelrkhan97@gmail.com', N'SOHELRKHAN97@GMAIL.COM', N'sohelrkhan97@gmail.com', N'SOHELRKHAN97@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA2IBGPyS1JACUAj6pnC2qBv3FLe39muDYf8HVOHmikP9vIndkfV3zQZEfza4WnyWQ==', N'5G5RXSTD7WD7HMXJNWAZMPFOH4BC5BKC', N'bc1ed1a0-f97d-4868-bbb9-a6854d0cfa81', NULL, 0, 0, NULL, 1, 0, N'Doctor Sohel R Khan 97')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'affe82c1-0561-418d-a646-7212e2168244', N'admin3@gmail.com', N'ADMIN3@GMAIL.COM', N'admin3@gmail.com', N'ADMIN3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEASFWkYz65Hg3+K+Xu2ku/1mJu1hz/RKGBUw1l7wvC9Xf9Yw5cghJTV234MrkjlVlA==', N'YEJRXSEBPQJ2VTU2DSGDNNCXHN6YPG33', N'abc77b83-e375-487c-9ad7-80dd8c290fa4', NULL, 0, 0, NULL, 1, 0, N'Admin 3')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'bc3320d3-b36a-47e3-9aaa-f0fd67933466', N'raju@gmail.com', N'RAJU@GMAIL.COM', N'raju@gmail.com', N'RAJU@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDRwzfdHRPaaxzluRJP8bM7ewXrRT0F5wmBgc/P3vtHuq8OWmOWq1ePFbVVBS4hwRA==', N'JP5TBPZ4BGTO54UFJR7HTXCTA4ZGWV5G', N'45bf229f-bbff-4016-9af9-ce250e0e2f62', NULL, 0, 0, NULL, 1, 0, N'Doctor Raju')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'd30cf692-ce45-40e8-8499-9309f7bf575d', N'doctor@gmail.com', N'DOCTOR@GMAIL.COM', N'doctor@gmail.com', N'DOCTOR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA0PV8bdYL6psWqzQuTCkH6AKD/UJbQIOyTr1/P385+uMIqcYFV7VQe8n9mY9AIA5g==', N'XW47GP3S45H6OTNIMAMQVZRADAGII3WH', N'f2e2c5f8-dba1-4872-b39c-d443155bdf8a', NULL, 0, 0, NULL, 1, 0, N'Doctor Atik')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name]) VALUES (N'd3cc7374-343d-4370-914e-a0224fcc5b03', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEBWN8gj+4gLI9uwCYh4ZhqsV3hOmbxJxrZWEIfWpSni0BL6jxCSMFDxqpEofV0jnQ==', N'TOJOMNT6QEJ3DQEK2CLXQZUZ2OQOUQUR', N'c61906fc-1e98-4ba5-b75c-a51e447c3b68', NULL, 0, 0, NULL, 1, 0, N'Admin')
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
