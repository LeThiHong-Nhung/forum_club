USE [ClubForum]
GO
/****** Object:  Table [dbo].[Administrators]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrators](
	[ID] [varchar](30) NOT NULL,
	[AdministratorName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[DateCreated] [date] NOT NULL,
	[Phone] [varchar](20) NULL,
	[Level] [smallint] NULL,
 CONSTRAINT [PK_Administrators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clubs]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clubs](
	[ID] [varchar](30) NOT NULL,
	[Type] [nvarchar](100) NULL,
	[CoverPhoto] [varchar](250) NULL,
	[DateCreated] [date] NOT NULL,
	[Approval] [varchar](30) NULL,
	[Name] [nvarchar](250) NULL,
	[ShortName] [varchar](10) NULL,
	[Description] [ntext] NULL,
	[UserCreated] [varchar](30) NULL,
 CONSTRAINT [PK_Clubs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [varchar](30) NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
	[UserID] [varchar](30) NULL,
	[PostID] [varchar](30) NULL,
	[Approval] [varchar](30) NULL,
	[Content] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plans]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plans](
	[ID] [varchar](30) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[DateTimeExpected] [datetime] NOT NULL,
	[ClubID] [varchar](30) NULL,
	[Content] [nvarchar](500) NULL,
 CONSTRAINT [PK_Plans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[ID] [varchar](30) NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
	[UserID] [varchar](30) NULL,
	[ClubID] [varchar](30) NULL,
	[Title] [nvarchar](500) NULL,
	[Hashtag] [varchar](100) NULL,
	[Approval] [varchar](30) NULL,
	[Content] [ntext] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClubRoles]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClubRoles](
	[UserID] [varchar](30) NOT NULL,
	[ClubID] [varchar](30) NOT NULL,
	[Role] [smallint] NOT NULL,
	[DateTimeJoined] [datetime] NOT NULL,
 CONSTRAINT [PK_UserClubRoles] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20/06/2021 11:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [varchar](30) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NOT NULL,
	[Workplace] [nvarchar](250) NULL,
	[Email] [varchar](100) NULL,
	[Address] [nvarchar](250) NULL,
	[Avatar] [varchar](250) NULL,
	[Phone] [varchar](20) NULL,
	[Gender] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administrators] ([ID], [AdministratorName], [Password], [FullName], [Email], [DateCreated], [Phone], [Level]) VALUES (N'AID0', N'admin', N'bmhvbTJjbnR0QXVBZ0N1RmU=', N'admin', N'admin@gmail.com', CAST(N'2021-06-16' AS Date), N'0', 0)
INSERT [dbo].[Administrators] ([ID], [AdministratorName], [Password], [FullName], [Email], [DateCreated], [Phone], [Level]) VALUES (N'AID1606210001', N'admin0', N'bmhvbTFjbnR0QXVBZ0N1RmU=', N'Người bí ẩn', N'admin1@gmail.com', CAST(N'2021-06-16' AS Date), N'0394322491', 0)
INSERT [dbo].[Administrators] ([ID], [AdministratorName], [Password], [FullName], [Email], [DateCreated], [Phone], [Level]) VALUES (N'AID1906210001', N'admin1', N'MTExMTExMTFBdUFnQ3VGZQ==', N'Nguyễn Văn Lâm', N'lamnv@gmail.com', CAST(N'2021-06-19' AS Date), N'0354222141', 1)
GO
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID1706210001', N'Thể thao', N'69203f22-cfa6-40e3-b3b4-184d16ec6b24.jpeg', CAST(N'2021-06-17' AS Date), N'AID1606210001', N'CLB Bóng chuyền nghiệp dư K60', N'VK60', N'CLB là sân chơi lành mạnh cho các bạn sinh viên
Khi tham gia CLB các bạn sẽ được
- Luyện tập thân thể, sức khỏe
- Giao lưu học hỏi kinh nghiệm
- Cuối tuần nhóm có tổ chức họp mặt tại các quán cà phê, trà sữa, v..v
* Nhóm chỉ duyệt cho các tài khoản với thông tin thật', N'UID1606210001')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID1706210002', N'Khoa học', N'70926444-e545-426c-bed2-80b7aac786fb.jpeg', CAST(N'2021-06-17' AS Date), N'AID1606210001', N'CLB Đam mê Vật Lý', N'PFC', N'CLB tạo ra nhằm mục đích thỏa mãn đam mê vật lý của các thành viên
* Nội dung của CLB nhằm cung cấp các kiến thức Vật Lý
* Giải đáp thắc mắc các vấn đề, kiến thức về Vật Lý
* Chỉ mang tính chất trao đổi giao lưu kiến thức
==> Chỉ tiếp nhận những thành viên có đam mê với môn Vật Lý', N'UID1606210010')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID1806210001', N'Tin học', N'101bae64-665a-48f6-a065-2e91a1a3fd84.png', CAST(N'2021-06-18' AS Date), N'AID1606210001', N'CLB Tin học văn phòng cho mọi lứa tuổi', N'THVP', N'*Câu lạc bộ dành cho những bạn thường xuyên dùng những bộ office của Microsoft. CLB được tạo ra với mục đích là nơi giao lưu học hỏi, trao đổi kiến thức tin học văn phòng với nhau. Giúp những thành viên đang học hoặc đang làm việc có sử dụng các phần mềm soạn thảo văn phòng có những kinh nghiệm mới và sử dụng chúng hiệu quả.
', N'UID1606210007')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID1806210002', N'Thể thao', N'a487311c-9e22-4b7e-a752-eed2095aa084.png', CAST(N'2021-06-18' AS Date), N'AID1606210001', N'CLB Bóng đá sân phủi NTU', N'PhuiFC', N'Chơi vui là chính', N'UID1606210004')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID2006210001', N'Ngoại ngữ', N'1934c3ac-29cb-4102-ab47-5f08023eb468.png', CAST(N'2021-06-20' AS Date), N'AID1606210001', N'CLB Tiếng Anh giao tiếp', N'ENTU', N'CLB là nơi giao lưu học hỏi kiến thức Tiếng Anh.
Hãy tham gia nhóm để gặp những người bạn mới có cùng sở thích với mình.', N'UID1606210004')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID2006210002', N'Hoạt động xã hội', N'52401b54-ab8d-44a3-844f-dee74cb81b52.png', CAST(N'2021-06-20' AS Date), N'AID1606210001', N'CLB Tình nguyện Hoa Phượng Đỏ', N'HPD', N'Tham gia với chúng tôi để cùng chung tay làm những việc có ích cho xã hội', N'UID2006210001')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID2006210003', N'Ngoại ngữ', N'd68656ff-eb0f-4e6d-bfe7-ecb1f710d46d.png', CAST(N'2021-06-20' AS Date), N'AID1606210001', N'CLB Tiếng Nhật Cơ Bản', N'JN5', N'Học tập trao đổi kiến thức tiếng Nhật cơ bản ', N'UID2006210001')
INSERT [dbo].[Clubs] ([ID], [Type], [CoverPhoto], [DateCreated], [Approval], [Name], [ShortName], [Description], [UserCreated]) VALUES (N'CID2006210004', N'Khoa học', N'7493be25-10f8-4266-a85c-ae2e3719db9b.png', CAST(N'2021-06-20' AS Date), N'AID1606210001', N'CLB Nghiên cứu khoa học', N'SIEC', N'Chung tay nghiên cứu và sáng tạo, nhầm nâng cao đời sống con người', N'UID1606210008')
GO
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210001', CAST(N'2021-06-18T00:09:27.330' AS DateTime), N'UID1606210002', N'PID1706210002', N'AID0', N'Rất thú vị')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210002', CAST(N'2021-06-18T10:20:57.690' AS DateTime), N'UID1606210006', N'PID1706210002', N'AID0', N'Hihi')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210003', CAST(N'2021-06-18T14:10:37.657' AS DateTime), N'UID1606210004', N'PID1806210001', N'AID0', N'Rất tuyệt với')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210004', CAST(N'2021-06-18T19:00:05.513' AS DateTime), N'UID1606210007', N'PID1806210002', N'AID0', N'Nhấn tổ hợp phím Ctrl + E nhé bạn')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210005', CAST(N'2021-06-18T19:03:33.730' AS DateTime), N'UID1606210004', N'PID1806210002', N'AID0', N'Oke khởi my')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210006', CAST(N'2021-06-18T19:04:10.670' AS DateTime), N'UID1606210004', N'PID1806210002', N'AID0', N'Còn có cách nào khác không nhỉ. Nút Ctrl bị hư :(((')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210007', CAST(N'2021-06-18T19:13:12.480' AS DateTime), N'UID1606210008', N'PID1806210003', N'AID0', N'Help Me !')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210008', CAST(N'2021-06-18T19:25:28.923' AS DateTime), N'UID1606210010', N'PID1806210003', N'AID0', N'Sao lại dùng crack thế bồ !!')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210009', CAST(N'2021-06-18T19:26:20.123' AS DateTime), N'UID1606210010', N'PID1806210004', N'AID0', N'Cùng nhau phấn đấu nhé')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210010', CAST(N'2021-06-18T19:58:51.467' AS DateTime), N'UID1606210004', N'PID1806210004', N'AID0', N'Hi ! Chào trưởng CLB')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210011', CAST(N'2021-06-18T20:02:15.440' AS DateTime), N'UID1606210004', N'PID1806210006', N'AID0', N'Khá hay đó. Nhớ đọc cho hết nhé mấy cậu')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210012', CAST(N'2021-06-18T20:02:28.810' AS DateTime), N'UID1606210004', N'PID1806210005', N'AID0', N'Tự mò đi bạn')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210013', CAST(N'2021-06-18T20:09:24.470' AS DateTime), N'UID1606210007', N'PID1806210005', N'AID0', N':))) Tra google nhé')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210014', CAST(N'2021-06-18T20:19:27.210' AS DateTime), N'UID1606210004', N'PID1806210007', N'AID0', N'Dùng hàm Right nhé')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210015', CAST(N'2021-06-18T20:43:29.533' AS DateTime), N'UID1806210001', N'PID1806210008', N'AID0', N'Không nên dùng crack nhé mấy bạn')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1806210016', CAST(N'2021-06-18T20:44:48.880' AS DateTime), N'UID1606210004', N'PID1806210008', N'AID0', N'Quả thật là không nên dùng crack')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID1906210001', CAST(N'2021-06-19T01:52:56.767' AS DateTime), N'UID1606210001', N'PID1806210005', N'AID0', N'Quên rồi :))')
INSERT [dbo].[Comments] ([ID], [DateTimeCreated], [UserID], [PostID], [Approval], [Content]) VALUES (N'MID2006210001', CAST(N'2021-06-20T09:49:16.183' AS DateTime), N'UID1606210010', N'PID2006210001', N'AID0', N'Bài viết rất bổ ích')
GO
INSERT [dbo].[Plans] ([ID], [Title], [DateTimeExpected], [ClubID], [Content]) VALUES (N'KID1706210001', N'Sinh hoạt CLB', CAST(N'2021-06-25T19:30:00.000' AS DateTime), N'CID1706210001', N'Sinh hoạt CLB tại quán lẩu đuôi bò Củ Chi')
INSERT [dbo].[Plans] ([ID], [Title], [DateTimeExpected], [ClubID], [Content]) VALUES (N'KID1706210002', N'Tham gia giải đấu', CAST(N'2021-07-16T07:50:00.000' AS DateTime), N'CID1706210001', N'Các bạn được chọn trong danh sách tập hợp tại SVĐ Phan Chu Trinh')
INSERT [dbo].[Plans] ([ID], [Title], [DateTimeExpected], [ClubID], [Content]) VALUES (N'KID1806210001', N'Sinh hoạt tuần 1', CAST(N'2021-06-21T19:00:00.000' AS DateTime), N'CID1806210001', N'Sinh hoạt gặp mặt tại G8.103 nhé')
GO
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1706210001', CAST(N'2021-06-17T11:47:37.237' AS DateTime), N'UID1606210001', N'CID1706210001', N'Bài viết đầu tiên của CLB', N'#baivietdautien, #vk60', N'AID1606210001', N'<p>M&igrave;nh l&agrave; Ho&agrave;ng Thanh Sơn trưởng CLB B&oacute;ng chuyền nghiệp dư. Nay m&igrave;nh viết những &yacute; tưởng v&agrave; kế hoạch trong tương lai của c&acirc;u lạc bộ. Đồng thời tuyển th&ecirc;m c&aacute;c th&agrave;nh vi&ecirc;n</p>

<ul>
	<li>Về kế hoạch :&nbsp;
	<ul>
		<li>Tiến h&agrave;nh tuyển th&ecirc;m c&aacute;c th&agrave;nh vi&ecirc;n c&oacute; đam m&ecirc; với b&oacute;ng chuyền, thể thao</li>
		<li>Tổ chức buổi họp mặt v&agrave; chọn ng&agrave;y kỉ niệm th&agrave;nh lập CLB</li>
		<li>Lựa chọn&nbsp; thiết kế logo, &aacute;o đấu, địa điểm luyện tập, thời gian luyện tập</li>
		<li>Th&agrave;nh lập quỹ để chi trả một số dụng cụ sử dụng chung</li>
	</ul>
	</li>
</ul>

<p>=&gt; Đ&oacute; l&agrave; c&aacute;c kế hoạch ban đầu chuẩn bị cho tổ chức v&agrave; ch&iacute;nh thức th&agrave;nh lập CLB</p>

<p><img alt="" src="/assets/images/uploads/images/nhung-dieu-luat-thi-dau-bong-chuyen-chuan-quoc-te-luat-bong-chuyen.jpg" style="height:375px; width:500px" /></p>

<p>Cảm ơn mọi người đ&atilde; d&agrave;nh thời gian xem b&agrave;i viết</p>

<p>&nbsp;</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1706210002', CAST(N'2021-06-17T18:25:18.430' AS DateTime), N'UID1606210006', N'CID1706210001', N'Chiều chủ nhật thú vị cùng CLB', N'#funny, #sunday', N'AID1606210001', N'<p>Ng&agrave;y 10/6/2021 ch&uacute;ng ta đ&atilde; c&oacute; những khoảng khắc tuyệt vời b&ecirc;n nhau</p>

<p>D&ugrave; thi đấu thất bại nhưng đ&acirc;y l&agrave; trận đầu ti&ecirc;n của c&aacute;c th&agrave;nh vi&ecirc;n trong m&agrave;u &aacute;o CLB mới</p>

<p><img alt="" src="/assets/images/uploads/images/b9eefef8a00bb61dbc.jpg" style="height:497px; width:800px" /></p>

<p>Ho&agrave;ng Thanh Sơn (trưởng CLB b&oacute;ng chuyền nghiệp dư K60) đ&atilde; c&oacute; m&agrave;n tr&igrave;nh diễn đầy thuyết phục khi đ&atilde; ghi nhiều điểm số nhất trong đội</p>

<p>Kết th&uacute;c trận đấu anh c&oacute; đ&atilde; ph&aacute;t biểu như sau : &quot;Ch&uacute;ng ta đ&atilde; thi đấu hết sức mặc d&ugrave; thua với tỉ số s&aacute;t n&uacute;t l&agrave; 0-3 :)&nbsp;nhưng ch&uacute;ng ta chỉ mới bắt đầu&quot;</p>

<p>kết th&uacute;c lời ph&aacute;t biểu l&agrave; nụ cười tỏa nắng c&ugrave;ng với những giọt mồ h&ocirc;i ướt đẫm tr&ecirc;n mặt.</p>

<p>N&oacute;i cho c&ugrave;ng đ&acirc;y l&agrave; buổi thi đấu tuyệt vời của đội.</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210001', CAST(N'2021-06-18T14:00:59.167' AS DateTime), N'UID1606210007', N'CID1806210001', N'Buổi sinh hoạt đầu tiên', N'sinhhoatdautien, thvp', N'AID1606210001', N'<p>H&ocirc;m nay l&agrave; buổi sinh hoạt đầu ti&ecirc;n của c&aacute;c c&acirc;u lạc bộ</p>

<p>Ng&agrave;y 18/06/2021 th&igrave; CLB đ&atilde; c&oacute; buổi sinh hoạt đầu ti&ecirc;n giữa c&aacute;c th&agrave;nh vi&ecirc;n tại G8.202</p>

<p>Tuy mọi người mới gặp lần đầu nhưng ch&uacute;ng t&ocirc;i cũng đ&atilde; h&ograve;a nhập rất nhanh.</p>

<p>Dưới đ&acirc;y l&agrave; h&igrave;nh ảnh mọi người đang vui vẻ tham gia buổi sinh hoạt</p>

<p><img alt="" src="/assets/images/uploads/images/89-qanh-15653593482361875024127.jpg" style="height:226px; width:500px" /></p>

<p><img alt="" src="/assets/images/uploads/images/unnamed.jpg" style="height:213px; width:300px" /></p>

<p>Mọi người đều chăm ch&uacute; thực h&agrave;nh c&aacute;c b&agrave;i tập</p>

<p>H&ocirc;m nay cảm ơn c&aacute;c th&agrave;nh vi&ecirc;n rất nhiều đ&atilde; đến tham dự buổi sinh, mong rằng ch&uacute;ng ta sẽ tiếp tục c&oacute; những buổi vui vẻ như thế n&agrave;y</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210002', CAST(N'2021-06-18T14:59:27.460' AS DateTime), N'UID1606210004', N'CID1806210001', N'Làm thế nào để căn giữa đoạn văn bảng', N'cangiuavanbang, word', N'AID1606210001', N'<p>M&igrave;nh đang l&agrave;m b&agrave;i tập đ&aacute;nh lại 1 đoạn thơ nhưng kh&ocirc;ng biết căn giữa.</p>

<p>Ai gi&uacute;p m&igrave;nh với</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210003', CAST(N'2021-06-18T19:11:39.667' AS DateTime), N'UID1606210008', N'CID1806210001', N'Nhà nghèo học tin', N'thvp', N'AID1606210001', N'<p>Ch&agrave;o mọi người chiện l&agrave; t&ocirc;i kh&ocirc;ng c&oacute; tiền mua office từ microsoft. C&oacute; ai c&oacute; key hay c&aacute;i g&igrave; đ&oacute; để m&igrave;nh crack sử dụng miễn ph&iacute; kh&ocirc;ng ạ.</p>

<p><img alt="" src="/assets/images/uploads/images/su-dung-Microsoft-Office-lau-1.jpg" style="height:314px; width:600px" /></p>

<p>H&atilde;y gi&uacute;p t&ocirc;i. T&ocirc;i lời ly c&agrave; ph&ecirc; nh&eacute;.</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210004', CAST(N'2021-06-18T19:24:44.343' AS DateTime), N'UID1606210010', N'CID1706210002', N'Bài viết chào mừng các thành viên', N'welcome, physical', N'AID1606210001', N'<p>Ch&agrave;o mừng tất cả c&aacute;c th&agrave;nh vi&ecirc;n đến với CLB đam m&ecirc; m&ocirc;n Vật L&yacute;</p>

<p>H&atilde;y c&ugrave;ng nhau x&acirc;y dựng một CLB ph&aacute;t triển vững mạnh nh&eacute;</p>

<p>Fighting !!</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210005', CAST(N'2021-06-18T19:58:11.110' AS DateTime), N'UID1606210010', N'CID1806210001', N'Bị lỗi gạch chân đỏ dưới mỗi từ', N'loigachchando', N'AID1606210001', N'<p>Ch&agrave;o mọi người kh&ocirc;ng biết c&oacute; ai gi&uacute;p t&ocirc;i sửa lỗi n&agrave;y kh&ocirc;ng nhỉ</p>

<p><img alt="" src="/assets/images/uploads/images/202003191156427869-ec80a7241c6650b21fc140b65c5396fa.jpg" style="height:400px; width:600px" /></p>

<p>N&oacute; cứ bị gạch đỏ dưới ch&acirc;n m&ocirc;i từ</p>

<p>Help me! Help me!</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210006', CAST(N'2021-06-18T20:00:51.653' AS DateTime), N'UID1606210004', N'CID1706210002', N'Kiến thức vật lý số 1', N'vatly1', N'AID1606210001', N'<p>Để tiến tới t&iacute;ch hợp c&aacute;c vật liệu biến h&oacute;a c&oacute; chiết suất &acirc;m trong c&aacute;c thiết bị thực tế, c&aacute;c nghi&ecirc;n cứu hiện tại đang tập trung v&agrave;o sự thiết kế v&agrave; tối ưu ho&aacute; c&aacute;c cấu tr&uacute;c mới c&oacute; hệ số phẩm chất cao. B&ecirc;n cạnh mục ti&ecirc;u đạt được t&iacute;nh chất chiết suất &acirc;m bằng c&aacute;c cộng hưởng điện-từ bậc cao tr&ecirc;n c&aacute;c thiết kế đơn giản, y&ecirc;u cầu về sự đẳng hướng của cấu tr&uacute;c v&agrave;o ph&acirc;n cực của s&oacute;ng điện từ cũng đang l&agrave; một th&aacute;ch thức cần phải vượt qua.</p>

<p><img alt="VẬT LIỆU BIẾN HÓA CÓ CHIẾT SUẤT ÂM: THIẾT KẾ, CHẾ TẠO VÀ TÍNH CHẤT" src="https://vpshvl.org.vn/uploads/news/temp_pic/physics1.jpg" style="width:460px" /></p>

<p><em>Để giải quyết c&aacute;c vấn đề n&ecirc;u tr&ecirc;n, trong b&agrave;i b&aacute;o n&agrave;y ch&uacute;ng t&ocirc;i tr&igrave;nh b&agrave;y về vật liệu biến h&oacute;a c&oacute; cấu tr&uacute;c kh&aacute;c nhau như cấu tr&uacute;c kết hợp (combined structure-CB), cấu tr&uacute;c dạng lưới (fishnet structure-FN), cấu tr&uacute;c h&igrave;nh&nbsp;F, cấu tr&uacute;c cặp đĩa (dish-pair structure-DP) v&agrave; cấu tr&uacute;c lưới đĩa (dish-net structure). T&iacute;nh ưu việt của c&aacute;c cấu tr&uacute;c n&agrave;y sẽ được tối ưu v&agrave; đ&aacute;nh gi&aacute; cụ thể th&ocirc;ng qua phương ph&aacute;p m&ocirc; phỏng v&agrave; thực nghiệm. C&aacute;c cấu tr&uacute;c n&agrave;y hứa hẹn mang lại nhiều ưu điểm vượt trội v&agrave; c&oacute; phạm vi ứng dụng rộng hơn so với c&aacute;c cấu tr&uacute;c truyền thống hiện tại, l&agrave; c&aacute;c tiền đề quan trọng đ&oacute;ng g&oacute;p cho việc hiện thực h&oacute;a c&aacute;c thiết bị sử dụng vật liệu biến h&oacute;a c&oacute; chiết suất &acirc;m trong tương lai.</em><br />
<strong>1. Giới thiệu&nbsp;</strong><strong>c</strong><strong>hung</strong><br />
Dựa tr&ecirc;n &yacute; tưởng ban đầu của Veselago [1], vật liệu chiết suất &acirc;m l&agrave; sự kết hợp ho&agrave;n hảo của hai th&agrave;nh phần điện v&agrave; từ, tạo n&ecirc;n vật liệu đồng thời c&oacute; độ từ thẩm &acirc;m v&agrave; độ điện thẩm &acirc;m (<em>&mu;</em>&lt; 0,&nbsp;<em>&epsilon;</em>&lt; 0). Tuy nhi&ecirc;n việc t&igrave;m ra c&aacute;c loại vật liệu c&oacute; gi&aacute; trị &acirc;m của c&aacute;c th&ocirc;ng số n&agrave;y tr&ecirc;n c&ugrave;ng một dải tần số lại kh&ocirc;ng hề đơn giản v&agrave; đ&atilde; l&agrave;m nản l&ograve;ng c&aacute;c nh&agrave; khoa học trong suốt một thời gian d&agrave;i khiến cho ph&aacute;t hiện của Veselago kh&ocirc;ng nhận được nhiều sự quan t&acirc;m. Cho tới khi Pendry v&agrave; cộng sự [2, 3] c&ocirc;ng bố những kết quả của việc tạo ra m&ocirc;i trường c&oacute; độ điện thẩm &acirc;m v&agrave; độ từ thẩm &acirc;m bằng c&aacute;ch cấu tr&uacute;c lại c&aacute;c vật liệu sẵn c&oacute;, người ta mới tin v&agrave;o sự tồn tại của vật liệu chiết suất &acirc;m v&agrave; mở ra một hướng nghi&ecirc;n cứu mới mẻ v&agrave; đầy hứa hẹn. Từ đ&acirc;y, với mỗi gi&aacute; trị của c&aacute;c tham số điện thẩm v&agrave; từ thẩm, c&aacute;c vật liệu đều c&oacute; thể được ph&acirc;n loại dựa theo giản đồ h&igrave;nh 1 dưới đ&acirc;y.</p>

<p><img alt="image097" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image097.png" style="height:410px; width:542px" /></p>

<p><strong>H&igrave;nh 1.&nbsp;</strong><em>Giản đồ biểu diễn mối li&ecirc;n hệ giữa &epsilon; v&agrave; &nbsp;&mu;</em></p>

<p>Theo đ&oacute;, hầu hết c&aacute;c loại vật liệu trong tự nhi&ecirc;n đều c&oacute; cả hai th&agrave;nh phần độ từ thẩm v&agrave; độ điện thẩm dương (<em>&epsilon; &gt; 0, &mu; &gt; 0</em>) v&agrave; s&oacute;ng điện từ c&oacute; thể lan truyền được trong loại vật liệu n&agrave;y v&agrave; c&oacute; tổn hao. G&oacute;c phần tư thứ hai của giản đồ (<em>&epsilon; &lt; 0, &mu; &gt; 0</em>) thể hiện t&iacute;nh chất của m&ocirc;i trường c&oacute; độ điện thẩm &acirc;m, t&iacute;nh chất n&agrave;y xuất hiện trong kim loại dưới tần số plasma. G&oacute;c phần tư thứ tư (<em>&epsilon; &gt; 0, &mu; &lt; 0</em>) thể hiện t&iacute;nh chất của m&ocirc;i trường c&oacute; độ từ thẩm &acirc;m, t&iacute;nh chất n&agrave;y tồn tại trong một số loại vật liệu từ tại tần số thấp (cỡ MHz). Trong hai trường hợp m&ocirc;i trường chỉ c&oacute; một trong hai gi&aacute; trị độ từ thẩm hoặc độ điện thẩm &acirc;m, gi&aacute; trị c&ograve;n lại dương s&oacute;ng điện từ nhanh ch&oacute;ng bị dập tắt khi truyền v&agrave;o loại vật liệu n&agrave;y. Trường hợp đặc biệt, độ điện thẩm v&agrave; độ từ thẩm đều c&oacute; gi&aacute; trị &acirc;m (<em>&epsilon; &lt; 0, &mu; &lt; 0</em>), m&ocirc;i trường được gọi l&agrave; m&ocirc;i trường chiết suất &acirc;m k&eacute;p như biểu diễn tr&ecirc;n g&oacute;c phần tư thứ ba. Giống như vật liệu chiết suất dương, s&oacute;ng điện từ cũng c&oacute; thể truyền v&agrave;o vật liệu n&agrave;y v&agrave; c&oacute; tổn hao. Tuy nhi&ecirc;n c&oacute; một điểm kh&aacute;c biệt l&agrave; hướng truyền s&oacute;ng v&agrave; hướng truyền năng lượng ngược chiều nhau trong m&ocirc;i trường c&oacute; chiết suất &acirc;m.<br />
Vật liệu biến h&oacute;a c&oacute; chiết suất &acirc;m hiện vẫn chưa được t&igrave;m thấy tồn tại trong tự nhi&ecirc;n nhưng đ&atilde; được chế tạo v&agrave; kiểm chứng đầu ti&ecirc;n bởi nh&oacute;m của Smith [4] dựa tr&ecirc;n m&ocirc; H&igrave;nh lưới d&acirc;y kim loại (th&agrave;nh phần điện) v&agrave; v&ograve;ng cộng hưởng c&oacute; r&atilde;nh (th&agrave;nh phần từ) được đề xuất bởi Pendry [2,3]. H&igrave;nh 2 l&agrave; mẫu chế tạo v&agrave; phổ truyền qua thực nghiệm của mẫu ở v&ugrave;ng tần số GHz. Kết quả cho thấy khi lưới d&acirc;y kim loại (tạo ra&nbsp;<em>e</em>&lt; 0) được th&ecirc;m v&agrave;o, v&ugrave;ng kh&ocirc;ng truyền qua của SRR (tạo ra&nbsp;<em>&micro;</em>&lt; 0) chuyển th&agrave;nh v&ugrave;ng truyền qua. M&ocirc; h&igrave;nh tr&ecirc;n đ&atilde; chứng minh cho giả thuyết của Veselago về sự tồn tại của m&ocirc;i trường c&oacute; đồng thời độ điện thẩm v&agrave; từ thẩm &acirc;m. Tuy nhi&ecirc;n, giả thuyết n&agrave;y sau đ&oacute; được mở rộng khi ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể tạo ra vật liệu chiết suất &acirc;m m&agrave; kh&ocirc;ng cần đồng thời điện thẩm v&agrave; từ thẩm &acirc;m.</p>

<p><img alt="image098" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image098.png" style="height:229px; width:542px" /></p>

<p><strong>a) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b)<br />
H&igrave;nh 2:&nbsp;</strong><em>a) Vật liệu c&oacute; chiết suất &acirc;m hoạt động ở tần số GHz;</em><em>&nbsp;b) Phổ phản xạ v&agrave; truyền qua của vật liệu c&oacute; cấu tr&uacute;c ở h&igrave;nh (a).</em><em>T&iacute;nh chất chiết suất &acirc;m (n &lt; 0) của vật liệu thể hiện ở v&ugrave;ng tần số 4.7 đến 5.2 GHz&nbsp;</em><em>[4]</em><br />
&nbsp;</p>

<p><br />
Kể từ năm 2000 cho đến nay, dựa tr&ecirc;n cấu tr&uacute;c của Smith v&agrave; cộng sự [4] đ&atilde; c&oacute; rất nhiều cấu tr&uacute;c biến đổi kh&aacute;c được đề xuất v&agrave; kiểm chứng c&oacute; thể tạo ra vật liệu Meta c&oacute; chiết suất &acirc;m. C&oacute; thể kể t&ecirc;n một trong c&aacute;c cấu tr&uacute;c đ&oacute; l&agrave;: cấu tr&uacute;c kết hợp, cấu tr&uacute;c fishnet, cấu tr&uacute;c chữ &Phi;, cấu tr&uacute;c cặp đĩa. Để tạo ra chiết suất &acirc;m, c&aacute;c cấu tr&uacute;c tr&ecirc;n đều được cấu tạo từ hai th&agrave;nh phần: i) th&agrave;nh phần từ để tạo ra độ từ thẩm &acirc;m (&micro; &lt; 0), ii) th&agrave;nh phần điện để tạo ra độ điện thẩm &acirc;m (&epsilon; &lt; 0) dưới tần số plasma.<br />
Trong b&agrave;i viết n&agrave;y, nh&oacute;m t&aacute;c giả giới thiệu một số kết quả nghi&ecirc;n cứu của nh&oacute;m về c&aacute;c vật liệu Meta chiết suất &acirc;m với c&aacute;c cấu tr&uacute;c v&agrave; t&iacute;nh chất kh&aacute;c nhau. C&aacute;c mẫu th&iacute; nghiệm được chế tạo dựa tr&ecirc;n phương ph&aacute;p quang khắc tr&ecirc;n c&aacute;c tấm mạch in PCB được phủ đồng v&agrave; cản quang ở hai mặt. C&aacute;c th&ocirc;ng số k&iacute;ch thước của mẫu được tối ưu h&oacute;a&nbsp; dựa tr&ecirc;n Phương ph&aacute;p m&ocirc; phỏng. Cuối c&ugrave;ng, ch&uacute;ng t&ocirc;i sử dụng c&aacute;c m&aacute;y ph&acirc;n t&iacute;ch mạng Vector để đo đạc c&aacute;c t&iacute;nh chất phản xạ, truyền qua của mẫu từ đ&oacute; truy xuất ra c&aacute;c t&iacute;nh chất của h&agrave;m điện m&ocirc;i.<br />
<strong>2. T&iacute;nh chất chiết suất &acirc;m của vật liệu Meta c&oacute; cấu tr&uacute;c kết hợp<br />
2.1. V&ugrave;ng chiết suất &acirc;m, chiết suất dương của vật liệu biến h&oacute;a c&oacute; cấu tr&uacute;c kết hợp</strong><br />
Trong phần n&agrave;y, t&iacute;nh chất điện từ của si&ecirc;u vật liệu sử dụng cấu tr&uacute;c c&oacute; dạng kết hợp (CB) để tạo ra chiết suất &acirc;m&nbsp;<strong>( n&lt; 0 )</strong>&nbsp;sẽ được khảo s&aacute;t. Đồng thời, sự ảnh hưởng của c&aacute;c tham số cấu tr&uacute;c đến t&iacute;nh chất chiết suất &acirc;m của vật liệu cũng được tiến h&agrave;nh nghi&ecirc;n cứu v&agrave; đ&aacute;nh gi&aacute; chi tiết. Như đ&atilde; giới thiệu ở tr&ecirc;n, cấu tr&uacute;c kết hợp l&agrave; cấu tr&uacute;c được tạo bởi hai th&agrave;nh phần: c&aacute;c d&acirc;y kim loại li&ecirc;n tục (c&oacute; vai tr&ograve; điều khiển độ điện thẩm) v&agrave; cặp d&acirc;y bị cắt - CWP (c&oacute; vai tr&ograve; điều khiển độ từ thẩm).<br />
H&igrave;nh 3(a) v&agrave; (b) tr&igrave;nh b&agrave;y &ocirc; cơ sở v&agrave; mẫu đ&atilde; chế tạo của si&ecirc;u vật liệu chiết suất &acirc;m dựa tr&ecirc;n cấu tr&uacute;c CB. Trong đ&oacute;, lớp đồng c&oacute; c&oacute; độ dẫn&nbsp;<img alt="\sigma = 5.88* {10}^7" src="https://latex.codecogs.com/gif.latex?%5Csigma%20%3D%205.88*%20%7B10%7D%5E7" />&nbsp; S/m, độ d&agrave;y 0.036 mm. Lớp điện m&ocirc;i ở giữa c&oacute; độ d&agrave;y&nbsp;<em>ts</em>= 0.4 mm với hằng số điện m&ocirc;i&nbsp;<img alt="\varepsilon = 4.3" src="https://latex.codecogs.com/gif.latex?%5Cvarepsilon%20%3D%204.3" />. Chiều d&agrave;i của thanh kim loại CW l&agrave;&nbsp;<em>l</em>&nbsp;= 5.5 mm, chiều rộng của thanh CW v&agrave; thanh kim loại d&agrave;i li&ecirc;n tục bằng nhau&nbsp;<em>w1&nbsp;</em>=&nbsp;<em>w2&nbsp;</em>= 1.0 mm. K&iacute;ch thước của &ocirc; cơ sở theo hướng&nbsp;<strong>H</strong>&nbsp;v&agrave;&nbsp;<strong>E&nbsp;</strong>của cấu tr&uacute;c kết hợp lần lượt l&agrave; ax&nbsp;= 6.5 mm v&agrave; ay&nbsp;= 7.0 mm. Khoảng c&aacute;ch giữa t&acirc;m của hai thanh kim loại li&ecirc;n tục được giữ ở&nbsp;<em>d</em>&nbsp;= 3.5 mm. Trong trường hợp n&agrave;y, t&iacute;nh chất chiết suất &acirc;m được khảo s&aacute;t cụ thể dựa tr&ecirc;n việc đ&aacute;nh gi&aacute; độc lập tương t&aacute;c điện v&agrave; từ của cấu tr&uacute;c kết hợp. Để kiểm tra t&iacute;nh chiết suất &acirc;m trong cấu tr&uacute;c CB, một trong những c&aacute;ch quen thuộc đ&oacute; l&agrave; dựa tr&ecirc;n phổ truyền qua của ri&ecirc;ng CWP v&agrave; CB. Phương ph&aacute;p n&agrave;y đ&aacute;nh gi&aacute; trực quan vai tr&ograve; đ&oacute;ng g&oacute;p tương t&aacute;c giữa hai th&agrave;nh phần ri&ecirc;ng biệt để tạo ra chiết suất &acirc;m. Một phương ph&aacute;p kh&aacute;c cho ph&eacute;p x&aacute;c định t&iacute;nh chất chiết suất &acirc;m đ&oacute; l&agrave; th&ocirc;ng qua gi&aacute; trị của độ từ thẩm, độ điện thẩm v&agrave; chiết suất hiệu dụng từ c&aacute;c phương tr&igrave;nh t&iacute;nh to&aacute;n của Chen [5].</p>

<p><img alt="image105" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image105.png" style="height:461px; width:356px" /></p>

<p>a)</p>

<p><img alt="image106" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image106.png" style="height:313px; width:331px" /></p>

<p>b)</p>

<p><strong><em>H&igrave;nh 3.</em></strong><em>(a) &Ocirc; cơ sở cấu tr&uacute;c kết hợp v&agrave; (b) mẫu chế tạo với:w1</em>=&nbsp;<em>w2&nbsp;</em>= 1.0 mm<em>,&nbsp;</em>ax&nbsp;= 6.5 mm v&agrave; ay&nbsp;= 7.0 mm.</p>

<p><br />
H&igrave;nh 4(a) v&agrave; (b) tr&igrave;nh b&agrave;y sự so s&aacute;nh phổ truyền qua thực nghiệm v&agrave; m&ocirc; phỏng của cấu tr&uacute;c CWP, thanh kim loại li&ecirc;n tục v&agrave; cấu tr&uacute;c kết hợp (tương ứng với c&aacute;c tham số thiết kế trong H&igrave;nh 4). Độ từ thẩm, độ điện thẩm v&agrave; chiết suất tương ứng được t&iacute;nh to&aacute;n v&agrave; minh hoạ trong H&igrave;nh 4 (c). Từ phổ truyền qua ta thấy, đỉnh truyền qua đầu ti&ecirc;n của cấu tr&uacute;c CB xấp xỉ 13.8 GHz (nằm trong v&ugrave;ng kh&ocirc;ng truyền qua của CWP). Kết quả n&agrave;y ho&agrave;n to&agrave;n ph&ugrave; hợp với những kết quả nghi&ecirc;n cứu trước đ&oacute;, v&agrave; đỉnh n&agrave;y x&aacute;c nhận vật liệu c&oacute; chiết suất &acirc;m [6, 7]. Để khẳng định lại kết quả tr&ecirc;n, phương ph&aacute;p t&iacute;nh to&aacute;n của Chen được sử dụng cho c&aacute;c tham số của vật liệu v&agrave; được tr&igrave;nh b&agrave;y tr&ecirc;n H&igrave;nh 4 (c). Kết quả t&iacute;nh to&aacute;n chiết suất cho thấy, chiết suất &acirc;m đạt được trong tần số cộng hưởng từ 13.4 GHz - 14.8 GHz. Kết quả n&agrave;y do c&aacute;c thanh kim loại li&ecirc;n tục tạo ra độ điện thẩm &acirc;m được kết hợp với độ từ thẩm &acirc;m của cấu tr&uacute;c CWP tr&ecirc;n c&ugrave;ng một dải tần số [quan s&aacute;t H&igrave;nh 4 (c)]. Ngo&agrave;i ra, đỉnh truyền qua thứ hai nằm trong v&ugrave;ng tần số 15.3 GHz - 17.3 GHz cũng xuất hiện. Tuy nhi&ecirc;n, tại v&ugrave;ng n&agrave;y, độ từ thẩm v&agrave; độ điện thẩm đều dương n&ecirc;n đ&acirc;y l&agrave; một v&ugrave;ng truyền qua của của vật liệu th&ocirc;ng thường (Right handed - RH). Cần ch&uacute; &yacute; rằng, sự kết hợp giữa cấu tr&uacute;c CWP v&agrave; c&aacute;c thanh kim loại li&ecirc;n tục kh&ocirc;ng đảm bảo lu&ocirc;n tạo ra v&ugrave;ng c&oacute; chiết suất &acirc;m. Nguy&ecirc;n nh&acirc;n l&agrave; do t&iacute;nh chất cộng hưởng v&ugrave;ng c&oacute; độ từ thẩm &acirc;m chỉ tồn tại tr&ecirc;n một dải tần số hẹp. Muốn tạo ra được v&ugrave;ng c&oacute; chiết suất &acirc;m phải điều chỉnh c&aacute;c tham số một c&aacute;ch th&iacute;ch hợp sao cho hai v&ugrave;ng từ thẩm v&agrave; điện thẩm &acirc;m chồng chập l&ecirc;n nhau. Koschny [6] đ&atilde; chỉ ra rằng, trong cấu tr&uacute;c kết hợp, độ từ thẩm &acirc;m chỉ c&oacute; nguồn gốc từ c&aacute;c cộng hưởng từ do th&agrave;nh phần CWP tạo ra, trong khi độ điện thẩm &acirc;m được tạo ra bởi sự tương t&aacute;c điện tổng cộng của cả c&aacute;c thanh kim loại li&ecirc;n tục v&agrave; c&aacute;c CWs [9]. Do đ&oacute;, việc hiểu r&otilde; c&aacute;c đặc điểm cũng như tối ưu h&oacute;a c&aacute;c th&ocirc;ng số cấu tr&uacute;c của vật liệu rất quan trọng trong việc tạo ra vật liệu chiết suất &acirc;m cũng như tạo ra những t&iacute;nh chất th&uacute; vị khi vật liệu biến h&oacute;a tương t&aacute;c với s&oacute;ng điện từ.</p>

<p><img alt="image110" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image110.jpg" style="height:414px; width:542px" /></p>

<p><img alt="image111" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image111.jpg" style="height:414px; width:542px" /></p>

<p><img alt="image112" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image112.jpg" style="height:414px; width:542px" /></p>

<p><strong><em>H&igrave;nh 4</em></strong><em>&nbsp;a) Phổ truyền qua thực nghiệm v&agrave; b) m&ocirc; phỏng của cấu tr&uacute;c CWP, CB v&agrave; c&aacute;c d&acirc;y kim loại li&ecirc;n tục. (c) T&iacute;nh to&aacute;n độ điện thẩm, độ từ thẩm v&agrave; chiết suất từ dữ liệu m&ocirc; phỏng của cấu tr&uacute;c CB tương ứng&nbsp;</em>[8]<em>.</em></p>

<p>V&igrave; thế, sự ảnh hưởng của c&aacute;c tham số cấu tr&uacute;c l&ecirc;n t&iacute;nh chất của si&ecirc;u vật liệu c&oacute; cấu tr&uacute;c CB, đặc biệt l&agrave; t&iacute;nh chiết suất &acirc;m sẽ được khảo s&aacute;t cụ thể v&agrave; được tr&igrave;nh b&agrave;y trong phần tiếp theo.<br />
2.2 Ảnh hưởng của c&aacute;c tham số cấu tr&uacute;c l&ecirc;n t&iacute;nh chiết suất &acirc;m trong cấu tr&uacute;c kết hợp<br />
2.2.1. Ảnh hưởng của độ rộng thanh kim loại li&ecirc;n tục<br />
H&igrave;nh 5 tr&igrave;nh b&agrave;y kết quả thực nghiệm v&agrave; m&ocirc; phỏng về sự ảnh hưởng của độ rộng của d&acirc;y kim loại li&ecirc;n tục l&ecirc;n t&iacute;nh chất của vật liệu. Đối với nghi&ecirc;n cứu n&agrave;y, chiều rộng của thanh CW được giữ ở 1.0 mm trong khi chiều rộng của thanh kim loại li&ecirc;n tục&nbsp;<em>w2</em>&nbsp;giảm từ 1.0 đến 0.5 mm. Kết quả m&ocirc; phỏng v&agrave; thực nghiệm đều cho thấy đỉnh thứ nhất ( n&lt; 0 ) hầu như kh&ocirc;ng thay đổi (~ 13.8 GHz), đỉnh thứ hai (<em>n&nbsp;</em>&gt; 0 - RH) dịch dần về ph&iacute;a tần số thấp, đồng thời, đỉnh truyền qua thể hiện t&iacute;nh chiết suất &acirc;m được n&acirc;ng l&ecirc;n đ&aacute;ng kể khi giảm độ rộng của d&acirc;y. Để quan s&aacute;t r&otilde; hiện tượng n&agrave;y, c&aacute;c tham số hiệu dụng&nbsp;<img alt="\varepsilon , \mu" src="https://latex.codecogs.com/gif.latex?%5Cvarepsilon%20%2C%20%5Cmu" />&nbsp; v&agrave;&nbsp;<em>n</em>&nbsp;được t&iacute;nh to&aacute;n v&agrave; tr&igrave;nh b&agrave;y tr&ecirc;n H&igrave;nh 5(c) v&agrave; (d). Dễ thấy, tần số plasma điện bị dịch chuyển tới tần số thấp hơn khi giảm chiều rộng của thanh kim loại li&ecirc;n tục, trong khi tương t&aacute;c từ gần như l&agrave; kh&ocirc;ng thay đổi [H&igrave;nh nhỏ trong H&igrave;nh 5(c) cho thấy độ từ thẩm kh&ocirc;ng thay đổi khi&nbsp;<em>w2</em>&nbsp;thay đổi]. Đ&acirc;y ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n giải th&iacute;ch hiện tượng đỉnh RH lại dịch về ph&iacute;a tần số thấp, hệ quả l&agrave; v&ugrave;ng tần số c&oacute; chiết suất &acirc;m bị hẹp đi như trong H&igrave;nh 5(d). Sự n&acirc;ng l&ecirc;n của đỉnh thể hiện t&iacute;nh chiết suất &acirc;m được giải th&iacute;ch bởi sự phối hợp trở kh&aacute;ng của m&ocirc;i trường cấu tr&uacute;c CB với nền ch&acirc;n kh&ocirc;ng[10, 11]. Dựa v&agrave;o kết quả H&igrave;nh 5 c&oacute; thể dự đo&aacute;n rằng, khi độ rộng của d&acirc;y giảm đến một gi&aacute; trị n&agrave;o đ&oacute;, t&iacute;nh chất chiết suất &acirc;m của vật liệu sẽ bị triệt ti&ecirc;u ho&agrave;n to&agrave;n.</p>

<p><img alt="image115" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image115.png" style="height:413px; width:542px" /></p>

<p><strong><em>H&igrave;nh 5.</em></strong><em>&nbsp;(a) Kết quả thực nghiệm v&agrave; (b) kết quả m&ocirc; phỏng phổ truyền qua của cấu tr&uacute;c kết hợp khi chiều rộng của thanh kim loại li&ecirc;n tục thay đổi. (c), (d) phần thực độ điện thẩm v&agrave; chiết suất tương ứng. Độ từ thẩm hiệu dụng được vẽ trong h&igrave;nh nhỏ.</em></p>

<p>&nbsp;</p>

<p><strong>2.2.2 Ảnh hưởng của hằng số mạng theo phương của điện trường E (phương y)</strong></p>

<p><img alt="image116" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image116.jpg" style="height:271px; width:542px" /></p>

<p><img alt="image117" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image117.jpg" style="height:517px; width:542px" /></p>

<p><strong><em>H&igrave;nh 6.</em></strong><em>&nbsp;Phổ truyền qua (a) thực nghiệm v&agrave; (b) m&ocirc; phỏng của cấu tr&uacute;c kết hợp với hằng số</em><em>&nbsp;mạng ax</em><em>=6.5&nbsp; mmtrong khi đ&oacute;&nbsp; ay&nbsp;thay đổi theo</em><em>&nbsp;từ&nbsp;</em><em>6.5</em><em>&nbsp;mm</em><em>&nbsp;đế</em><em>n</em><em>&nbsp; 7.5 mm. Phần thực của c&aacute;c tham số hiệu dụng (c) độ điện thẩm,(d) độ từ thẩm v&agrave; (e) chiết suất&nbsp;</em>[12]<em>.</em></p>

<p>H&igrave;nh 6 tr&igrave;nh b&agrave;y kết quả nghi&ecirc;n cứu sự ảnh hưởng của hằng số mạng&nbsp;<em>ay</em>&nbsp;theo hướng&nbsp;<strong>E</strong>&nbsp;đến t&iacute;nh chất chiết suất &acirc;m của cấu tr&uacute;c kết hợp. Trong trường hợp n&agrave;y, hằng số mạng theo hướng&nbsp;<strong>H&nbsp;</strong>được giữ tại &nbsp;<em>ax</em><em>=6.5&nbsp;</em>mm, trong khi theo hướng&nbsp;<strong>E</strong>&nbsp;hằng số mạng&nbsp;<em>ay&nbsp;</em>thay đổi từ 6.5 mm đến 7.5 mm. Hình 6(a) v&agrave; (b) lần lượt l&agrave; kết quả thực nghiệm v&agrave; m&ocirc; phỏng phổ truyền qua phụ thuộc v&agrave;o hằng số mạng&nbsp;<em>ay</em>&nbsp;của cấu tr&uacute;c CB đều cho thấy&nbsp; tại&nbsp;<em>ay</em><em>=7.5&nbsp;</em>&nbsp;mm tồn tại hai đỉnh chi&ecirc;́t su&acirc;́t &acirc;m (13.8 GHz) và chi&ecirc;́t su&acirc;́t dương (16.5 GHz). Tuy nhi&ecirc;n khi&nbsp;<em>ay</em>&nbsp;giảm, vùng truy&ecirc;̀n qua có chi&ecirc;́t su&acirc;́t dương d&acirc;̀n ti&ecirc;́n lại g&acirc;̀n vùng chi&ecirc;́t su&acirc;́t &acirc;m, sau đó ti&ecirc;́p tục phủ l&ecirc;n nhau, và ho&agrave;n to&agrave;n bi&ecirc;́n m&acirc;́t.&nbsp; Kết quả quan s&aacute;t được c&oacute; thể được giải th&iacute;ch bởi sự giảm của tần số plasma hiệu dụng trong cấu tr&uacute;c kết hợp như ph&acirc;n t&iacute;ch trong t&agrave;i liệu [12].<br />
C&aacute;c kết quả t&iacute;nh to&aacute;n phần thực c&aacute;c tham số hiệu dụng của độ điện thẩm, độ từ thẩm v&agrave; chiết suất được đưa ra lần lượt tr&ecirc;n H&igrave;nh 6(c-e). Dễ thấy, tần số plasma điện dịch chuyển tới tần số thấp hơn khi&nbsp;<em>ay</em>&nbsp;giảm trong khi tương t&aacute;c từ gần như l&agrave; kh&ocirc;ng thay đổi [H&igrave;nh 6(d) cho thấy độ từ thẩm kh&ocirc;ng thay đổi khi&nbsp;<em>ay</em>&nbsp;thay đổi]. Tương tự như giảm&nbsp;<em>w2</em>, khi giảm&nbsp;<em>ay</em>&nbsp;đỉnh RH cũng dịch về ph&iacute;a tần số thấp, hệ quả l&agrave; v&ugrave;ng tần số c&oacute; chiết suất &acirc;m bị hẹp đi thậm ch&iacute; c&oacute; thể sẽ biến mất [H&igrave;nh 6(a) v&agrave; (b)].<br />
<strong>2.2.3. Ảnh hưởng của hằng số mạng theo phương của từ trường H &nbsp;&nbsp;(phương x)</strong><br />
Sự ảnh hưởng của hằng số mạng&nbsp;<em>ax&nbsp;</em>(theo hướng&nbsp;<strong>H</strong>) trong tương t&aacute;c điện từ của cấu tr&uacute;c kết hợp cũng được khảo s&aacute;t chi tiết. Trong trường hợp n&agrave;y,&nbsp;<em>ax&nbsp;</em>được thay đổi từ 6.0 mm đến 7.0 mm, trong khi đ&oacute;&nbsp;<em>ay</em><em>=7.5</em>&nbsp;mm, khoảng c&aacute;ch giữa t&acirc;m của hai thanh kim loại li&ecirc;n tục vẫn được giữ tại gi&aacute; trị&nbsp;<em>d</em>&nbsp;= 3.5 mm. Phổ truyền qua thực nghiệm v&agrave; m&ocirc; phỏng của cấu tr&uacute;c kết hợp khi&nbsp;<em>ax</em>&nbsp;thay đổi được quan s&aacute;t trong H&igrave;nh 7 (a) v&agrave; (b). Kết quả thực nghiệm tr&ugrave;ng khớp với kết quả m&ocirc; phỏng v&agrave; cho thấy v&ugrave;ng truyền qua đầu ti&ecirc;n thể hiện t&iacute;nh chất chiết suất &acirc;m của vật liệu cũng như khoảng c&aacute;ch giữa v&ugrave;ng n&lt;0&nbsp; v&agrave; n&gt;0 gần như kh&ocirc;ng thay đổi khi&nbsp;<em>ax&nbsp;</em>tăng. Điều đ&oacute; ph&ugrave; hợp với hiện tượng quan s&aacute;t được trong trường hợp cấu tr&uacute;c CWP [13]. Qua đ&oacute;, kh&ocirc;ng chỉ c&aacute;c cộng hưởng từ của cấu tr&uacute;c CWP m&agrave; cả cộng hưởng điện của cấu tr&uacute;c CB l&agrave; gần như kh&ocirc;ng bị ảnh hưởng bởi&nbsp;<em>ax</em>. Hiện tượng n&agrave;y c&oacute; thể được giải th&iacute;ch do khi thay đổi&nbsp;<em>ax</em>, mật độ điện t&iacute;ch hiệu dụng biến đổi kh&ocirc;ng đ&aacute;ng kể dẫn tới tần số plasma hầu như kh&ocirc;ng bị dịch đi. Sự giải th&iacute;ch n&agrave;y được củng cố bởi kết quả t&iacute;nh to&aacute;n độ từ thẩm, điện thẩm v&agrave; chiết suất hiệu dụng như tr&igrave;nh b&agrave;y trong H&igrave;nh 7(c) v&agrave; (d). Kết quả cho thấy, chiết suất &acirc;m hầu như kh&ocirc;ng bị ảnh hưởng bởi việc thay đổi k&iacute;ch thước &ocirc; cơ sở theo hướng&nbsp;<strong>H</strong>.<br />
<strong>2.2.4. Ảnh hưởng của khoảng c&aacute;ch hai t&acirc;m thanh kim loại li&ecirc;n tục</strong><br />
H&igrave;nh 8 minh hoạ kết quả m&ocirc; phỏng sự ảnh hưởng của khoảng c&aacute;ch giữa hai t&acirc;m của d&acirc;y li&ecirc;n tục&nbsp;<em>d</em>&nbsp;đến t&iacute;nh chất chiết suất &acirc;m của cấu tr&uacute;c CB. Trong trường hợp n&agrave;y, hằng số mạng theo hướng&nbsp;<strong>H&nbsp;</strong>được giữ tại&nbsp;<em>ax</em><em>=6.5&nbsp;</em>mm, theo hướng&nbsp;<strong>E&nbsp;</strong>được giữ tại&nbsp;<em>ay</em>&nbsp;= 7.5 mm. Quan s&aacute;t hình 8(a) tại&nbsp;<em>d</em>&nbsp;= 3.5&nbsp; mm, ph&ocirc;̉ truy&ecirc;̀n qua tồn tại hai đỉnh: chi&ecirc;́t su&acirc;́t &acirc;m (13.8 GHz) và chi&ecirc;́t su&acirc;́t dương (16.5 GHz). Tuy nhi&ecirc;n khi&nbsp;<em>d</em>&nbsp;tăng, vùng truy&ecirc;̀n qua có chi&ecirc;́t su&acirc;́t dương d&acirc;̀n ti&ecirc;́n lại g&acirc;̀n vùng chi&ecirc;́t su&acirc;́t &acirc;m, sau đó ti&ecirc;́p tục phủ l&ecirc;n nhau, và ho&agrave;n to&agrave;n bi&ecirc;́n m&acirc;́t khi&nbsp;<em>d</em>&nbsp;= 6.5 mm.&nbsp;<br />
Hiện tượng tr&ecirc;n c&oacute; thể được giải th&iacute;ch dựa tr&ecirc;n sự biến đổi của độ điện thẩm, độ từ thẩm v&agrave; chiết suất tr&ecirc;n H&igrave;nh 8(b-d). Dễ thấy, tần số plasma điện dịch chuyển tới tần số thấp hơn khi&nbsp;<em>d</em>&nbsp;tăng trong khi tương t&aacute;c từ gần như l&agrave; kh&ocirc;ng thay đổi. Tương tự như giảm&nbsp;<em>w2</em>&nbsp;v&agrave; giảm&nbsp;<em>ay</em>, đỉnh RH cũng dịch về ph&iacute;a tần số thấp, hệ quả l&agrave; v&ugrave;ng tần số c&oacute; chiết suất &acirc;m bị hẹp đi v&agrave; biến mất khi&nbsp;<em>d</em>&nbsp;= 6.5 mm [H&igrave;nh 8 (d)].</p>

<p><img alt="image124" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image124.png" style="height:415px; width:542px" /></p>

<p><strong><em>H&igrave;nh 7&nbsp;</em></strong><em>Phổ truyền qua (a) thực nghiệm v&agrave; (b) m&ocirc; phỏngcủa cấu tr&uacute;c kết hợp phụ thuộc v&agrave;o hằng số mạng&nbsp;</em><em>theo hướng&nbsp;<strong>H</strong>&nbsp;với sự thay đổi của ax</em><em>&nbsp;từ&nbsp;</em><em>6.0 tới 7.0 mm. Kết quả t&iacute;nh to&aacute;n phần thực của (c) Chiết suất, d) độ điện thẩm v&agrave; độ từ thẩm tương ứng</em>[7]</p>

<p><br />
Dựa tr&ecirc;n kết quả do sự ảnh hưởng của c&aacute;c tham số cấu tr&uacute;c l&ecirc;n t&iacute;nh chiết suất &acirc;m của cấu tr&uacute;c CB, một số kết luận cần ch&uacute; &yacute; như sau:<br />
- Tần số plasma của cấu tr&uacute;c kết hợp bị giảm đ&aacute;ng kể khi chiều rộng của thanh kim loại li&ecirc;n tục giảm hoặc khoảng c&aacute;ch giữa hai thanh đ&oacute; tăng, trong khi cộng hưởng từ gần như kh&ocirc;ng thay đổi. Hệ quả l&agrave; ảnh hưởng rất mạnh đến t&iacute;nh chất chiết suất &acirc;m của cấu tr&uacute;c CB. Trong trường hợp đặc biệt, t&iacute;nh chiết suất &acirc;m ho&agrave;n to&agrave;n c&oacute; thể bị triệt ti&ecirc;u.<br />
- Tương t&aacute;c điện của CB phụ thuộc mạnh v&agrave;o hằng số mạng theo hướng&nbsp;<strong>E</strong>, kh&ocirc;ng thay đổi theo hằng số mạng theo hướng<br />
<strong>H</strong>. Trong khi đ&oacute;, tương t&aacute;c từ của CB kh&ocirc;ng phụ thuộc v&agrave;o c&aacute;c tham số n&agrave;y.<br />
C&aacute;c kết quả đạt được đều cho thấy sự ph&ugrave; hợp tốt giữa thực nghiệm v&agrave; t&iacute;nh to&aacute;n m&ocirc; phỏng. C&aacute;c kết quả n&agrave;y l&agrave; tiền đề quan trọng choviệc tối ưu h&oacute;a c&aacute;c tham số hiệu dụng để tr&aacute;nh những sai lầm trong thiết kế, chế tạo v&agrave; l&agrave; cơ sở để thiết kế vật liệu chiết suất &acirc;m hoạt động trong dải tần rộng sẽ tr&igrave;nh b&agrave;y ở phần sau. C&aacute;c kết quả về sự ảnh hưởng của c&aacute;c tham số h&igrave;nh học kh&aacute;c l&ecirc;n hoạt động của cấu tr&uacute;c CB theo l&yacute; thuyết m&ocirc;i trường hiệu dụng cũng được ph&acirc;n t&iacute;ch cụ thể trong c&aacute;c t&agrave;i liệu tham khảo [9-17]</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>&nbsp;
			<p><img alt="image126" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image126.png" style="height:306px; width:389px" /></p>
			</td>
			<td>
			<p><img alt="image125" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image125.png" style="height:307px; width:408px" /></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p><img alt="image127" src="https://vpshvl.org.vn/uploads/news/so4_vlnn/image127.png" style="height:216px; width:542px" /></p>
			</td>
		</tr>
		<tr>
			<td colspan="2"><strong><em>H&igrave;nh 8.</em></strong><em>(a) Phổ truyền qua m&ocirc; phỏng của cấu tr&uacute;c kết hợp với d</em><em>&nbsp;thay đổi theo</em><em>&nbsp;từ 3</em><em>.5</em><em>&nbsp;mm</em><em>&nbsp;đế</em><em>n6</em><em>.5 mm. Phần thực của c&aacute;c tham số hiệu dụng (b) độ điện thẩm, (c) độ từ thẩm v&agrave; (d) chiết suất.</em><br />
			&nbsp;</td>
		</tr>
	</tbody>
</table>

<p><strong>3.&nbsp; Vật liệu Meta chiết suất &acirc;m c&oacute; cấu tr&uacute;c dạng lưới (Fish-net).</strong><br />
<strong>3.1. Ưu điểm của cấu tr&uacute;c dạng lưới so với cấu tr&uacute;c kết hợp</strong><br />
Xuất ph&aacute;t từ c&aacute;c kết quả đạt được khi nghi&ecirc;n cứu t&iacute;nh chất chiết suất &acirc;m trong cấu tr&uacute;c CB, c&oacute; thể thấy rằng tương t&aacute;c điện từ của cấu tr&uacute;c CB phụ thuộc rất mạnh v&agrave;o chiều rộng của thanh kim loại li&ecirc;n tục&nbsp;<em>w2</em>. Tham số n&agrave;y l&agrave; một trong những yếu tố quyết định đến t&iacute;nh chất chiết suất &acirc;m của cấu tr&uacute;c kết hợp. Kết quả khảo s&aacute;t cho thấy, nếu giữ nguy&ecirc;n thanh kim loại li&ecirc;n tục, chiều rộng của thanh CW trong cặp CWP tăng l&ecirc;n đến khi nhập v&agrave;o cạnh của thanh kim loại li&ecirc;n tục th&igrave; t&iacute;nh chất chiết suất &acirc;m vẫn được duy tr&igrave;. Để thuận tiện, cấu tr&uacute;c kết hợp mới được đặt t&ecirc;n l&agrave; cấu tr&uacute;c dạng lưới (Fish-net - FN). &Ocirc; cơ sởđược thiết kế v&agrave; mẫu chế tạo của cấu tr&uacute;c FN như H&igrave;nh 3.7 (H&igrave;nh 9). Về bản chất vật l&yacute;, hai cấu tr&uacute;c n&agrave;y tương tự nhau về tương t&aacute;c điện từ. Tuy nhi&ecirc;n, cấu tr&uacute;c FN c&oacute; nhiều ưu điểm hơn so với cấu tr&uacute;c kết hợp bởi t&iacute;nh đơn giản trong thiết kế cũng như chế tạo v&agrave; cho tương t&aacute;c điện v&agrave; từ mạnh tr&ecirc;n c&ugrave;ng một dải tần số hoạt động [18-21]. Đồng thời, hệ số phẩm chất ứng với v&ugrave;ng chiết suất &acirc;m của cấu tr&uacute;c FN cũng cao hơn v&agrave; ổn định tr&ecirc;n một dải tần số rộng hơn so với cấu tr&uacute;c CB do dễ d&agrave;ng đạt được điều kiện phối hợp trở kh&aacute;ng. M&ocirc; h&igrave;nh mạch LC tương ứng cho cấu tr&uacute;c FN được tr&igrave;nh b&agrave;y trong t&agrave;i liệu tham khảo [18]&hellip;</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210007', CAST(N'2021-06-18T20:13:30.747' AS DateTime), N'UID1606210009', N'CID1806210001', N'Lấy 2 chữ cái cuối cùng làm như thế nào', N'tach2chu', N'AID1606210001', N'<h2>L&agrave;m thế n&agrave;o để lấy 2 chữ c&aacute;i cuối c&ugrave;ng của &ocirc; vậy mọi người</h2>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID1806210008', CAST(N'2021-06-18T20:42:37.733' AS DateTime), N'UID1806210001', N'CID1806210001', N'Sử dụng phần mềm crack là vi phạm pháp luật', N'khongnensaicrack', N'AID1606210001', N'<p>C&aacute;c CEO ở Indonesia, Philippines, Th&aacute;i Lan đ&atilde; mua phần mềm hợp ph&aacute;p cho khoảng 6.000 m&aacute;y t&iacute;nh tại nước họ, trong khi số lượng ở Việt Nam l&agrave; 200.&nbsp;&nbsp;<a href="https://vnexpress.net/doanh-nghiep-viet-van-su-dung-phan-mem-lau-4022238.html" target="_blank">Tr&iacute;ch dẫn từ VNE v&agrave; BSA.&nbsp;</a>Tỷ lệ sử dụng phần mềm kh&ocirc;ng được cấp ph&eacute;p của Việt Nam l&agrave; 75%, theo&nbsp;Khảo s&aacute;t Phần mềm To&agrave;n cầu BSA 2018. Trong khi đ&oacute;, tỷ lệ trung b&igrave;nh ở ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương l&agrave; 57%.</p>

<p>&ldquo;C&aacute;c CEO phải nh&igrave;n nhận rằng phần mềm hợp ph&aacute;p l&agrave; c&aacute;ch tốt nhất tr&aacute;nh thiệt hại tr&ecirc;n quy m&ocirc; lớn về an ninh mạng, luật ph&aacute;p v&agrave; thiệt hại về danh tiếng. Cần c&oacute; những nỗ lực lớn hơn từ ph&iacute;a ch&iacute;nh phủ v&agrave; c&aacute;c CEO để th&uacute;c đẩy thay đổi văn h&oacute;a doanh nghiệp trong việc sử dụng phần mềm theo hướng hợp ph&aacute;p v&agrave; ch&iacute;nh h&atilde;ng&rdquo;. Đại diện BSA ph&aacute;t biểu.</p>

<p>Việc sử dụng phần mềm crack tức l&agrave; bạn đang sử dụng lậu một phần mềm bản quyền t&iacute;nh ph&iacute;. Điều n&agrave;y l&agrave; vị phạm ph&aacute;p luật ( theo bộ luật sở hữu tr&iacute; tuệ của Việt Nam ). Đặc biệt l&agrave; khi bạn d&ugrave;ng c&aacute;c phần mềm n&agrave;y cho c&ocirc;ng việc kinh doanh của bạn, ở Việt Nam, h&igrave;nh phạt cho vi phạm n&agrave;y c&oacute; thể bị h&igrave;nh sự v&agrave; phạt l&ecirc;n đến hơn 1 tỷ, ngo&agrave;i ra , b&ecirc;n vi phạm c&ograve;n c&oacute; thể phải c&ocirc;ng khai xin lỗi về h&agrave;nh vi sử dụng phần mềm lậu của m&igrave;nh.</p>

<p><a href="https://www.iworld.com.vn/wp-content/uploads/2016/10/crack.png"><img alt="Tại sao không nên sử dụng phần mềm crack ?" src="https://www.iworld.com.vn/wp-content/uploads/2016/10/crack-300x225.png" style="height:360px; width:480px" /></a>Việc xin lỗi của một c&ocirc;ng ty trong nước về h&agrave;nh vi sử dụng phần mềm lậu tr&ecirc;n c&aacute;c b&aacute;o</p>

<h2><strong>Phần mềm crack kh&ocirc;ng chỉ l&agrave; phần mềm đ&atilde; crack</strong></h2>

<p><a href="https://www.iworld.com.vn/wp-content/uploads/2016/10/crack-1.png"><img alt="Tại sao không nên sử dụng phần mềm crack ?" src="https://www.iworld.com.vn/wp-content/uploads/2016/10/crack-1-300x225.png" style="height:286px; width:381px" /></a></p>

<p>Để crack một phần mềm, c&aacute;c hacker sẽ thay đổi c&aacute;c code của chương tr&igrave;nh/phần mềm từ thay đổi c&aacute;c bit nhị ph&acirc;n đơn giản cho đến viết lại một số cấu tr&uacute;c của phần mềm, để l&agrave;m được điều n&agrave;y, c&aacute;c hacker sử dụng kỹ thuật reverse engineer để hiểu quy tắc bảo vệ bản quyền của sản phẩm v&agrave; từ đ&oacute; thay đổi cơ chế bảo vệ n&agrave;y, điều n&agrave;y đồng nghĩa với việc c&aacute;c hacker c&oacute; đủ khả năng &ldquo;biến tấu&rdquo; cấu tr&uacute;c phần mềm theo &yacute; m&agrave; họ muốn.&nbsp;<strong>N&oacute;i một c&aacute;ch kh&aacute;c, phần mềm crack kh&ocirc;ng chỉ l&agrave; phần mềm đ&atilde; crack m&agrave; c&ograve;n c&oacute; thể chứa c&aacute;c phần mềm độc hại, virus, trojan v&agrave; c&aacute;c phần mềm gi&aacute;n điệp kh&aacute;c</strong>. Đ&acirc;y l&agrave; c&aacute;c rủi ro m&agrave; bạn c&oacute; thể gặp phải nếu sử dụng c&aacute;c phần mềm crack :</p>

<p>&ndash; Nguy cơ bị mất dữ liệu, format ổ cứng cao,..</p>

<p>&ndash; Khả năng t&aacute;c động xấu đến hệ thống:nếu bạn đ&atilde; từng sử dụng c&aacute;c bản patch hay c&aacute;c tập tin thực thi để crack một phần mềm n&agrave;o đ&oacute; nhưng do kh&ocirc;ng cẩn thận m&agrave; phi&ecirc;n bản cần crack kh&ocirc;ng ph&ugrave; hợp th&igrave; nhẹ nhất l&agrave; th&ocirc;ng b&aacute;o &ldquo;Wrong&rdquo; xuất hiện, nặng hơn l&agrave; h&agrave;ng chục cửa sổ xuất hiện li&ecirc;n tục g&acirc;y n&ecirc;n t&igrave;nh trạng treo m&aacute;y..v.v</p>

<p>&ndash; Bị đ&aacute;nh cắp th&ocirc;ng tin do c&aacute;c chương tr&igrave;nh gi&aacute;n điệp k&egrave;m c&agrave;i theo phần mềm.</p>

<p>&ndash; Bị biến th&agrave;nh zombie để tấn c&ocirc;ng c&aacute;c website, hệ thống kh&aacute;c khi c&aacute;c hacker cần đến.</p>

<h2><strong>Bạn kh&ocirc;ng nhận được bất k&igrave; hỗ trợ n&agrave;o</strong></h2>

<p>Trong qu&aacute; tr&igrave;nh sử dụng, bạn sẽ kh&ocirc;ng nhận được bất k&igrave; sự hỗ trợ n&agrave;o về sản phẩm cũng như về kỹ thuật nếu sản phẩm bạn d&ugrave;ng l&agrave; phần mềm kh&ocirc;ng hợp ph&aacute;p. Bạn cũng kh&ocirc;ng nhận được c&aacute;c bản cập nhật, n&acirc;ng cấp hay c&aacute;c bản v&aacute; lỗi từ h&atilde;ng , điều n&agrave;y ảnh hưởng kh&ocirc;ng nhỏ đến chất lượng phần mềm cũng như t&iacute;nh bảo mật của phần mềm.</p>
')
INSERT [dbo].[Posts] ([ID], [DateTimeCreated], [UserID], [ClubID], [Title], [Hashtag], [Approval], [Content]) VALUES (N'PID2006210001', CAST(N'2021-06-20T09:47:50.450' AS DateTime), N'UID1606210004', N'CID1706210002', N'Sự khác nhau giữa bom nguyên tử và nhiệt hạch', N'nhiehach', N'AID1606210001', N'<p>Đ&acirc;y l&agrave; hai loại vũ kh&iacute; hạt nh&acirc;n c&oacute; sức c&ocirc;ng ph&aacute; mạnh nhất hiện nay. Bom nhiệt hạch (bom H) được giới khoa học cho rằng c&oacute; sức c&ocirc;ng ph&aacute; mạnh hơn nhưng kh&ocirc;ng phổ biến bằng bom nguy&ecirc;n tử (bom A).</p>

<p><img alt="su-khac-nhau-giua-bom-nguyen-tu-va-nhiet-hach" src="https://i1-vnexpress.vnecdn.net/2015/12/12/anh-1-6277-1449895863.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=l5T2BnYp65VAgamBQWSCmw" /></p>

<p>Vụ nổ bom hạt nh&acirc;n ở Nagasaki v&agrave;o ng&agrave;y 9/8/1945.&nbsp;Ảnh: Wikipedia</p>

<p>Bom nguy&ecirc;n tử</p>

<p>Bom nguy&ecirc;n tử hoạt động theo nguy&ecirc;n l&yacute; ph&acirc;n hủy c&aacute;c hạt nh&acirc;n nặng - kh&ocirc;ng bền như urani hay plutoni th&agrave;nh c&aacute;c hạt nh&acirc;n nhẹ hơn v&agrave; giải ph&oacute;ng năng lượng.</p>

<p>Qu&aacute; tr&igrave;nh nổ bom nguy&ecirc;n tử xảy ra theo một phản ứng d&acirc;y chuyền, bắt đầu khi một neutron (hạt trung h&ograve;a điện trong hạt nh&acirc;n nguy&ecirc;n tử) va chạm với một hạt nh&acirc;n urani hoặc plutoni, l&agrave;m hạt nh&acirc;n n&agrave;y vỡ ra th&agrave;nh c&aacute;c nguy&ecirc;n tố bền hơn (thường l&agrave; barium v&agrave; krypton).</p>

<p>Qu&aacute; tr&igrave;nh n&agrave;y giải ph&oacute;ng năng lượng dưới dạng nhiệt, ph&oacute;ng xạ tia gamma v&agrave; một số neutron. C&aacute;c neutron n&agrave;y lặp lại qu&aacute; tr&igrave;nh tr&ecirc;n cho tới khi hết nhi&ecirc;n liệu phản ứng. Phản ứng d&acirc;y chuyền n&agrave;y diễn ra trong thời gian rất ngắn, cỡ một phần triệu gi&acirc;y. Sức c&ocirc;ng ph&aacute; của một quả bom nguy&ecirc;n tử tương đương với từ 1.000 tấn (1 KT) đến v&agrave;i trăm ngh&igrave;n tấn thuốc nổ TNT.</p>

<p><img alt="su-khac-nhau-giua-bom-nguyen-tu-va-nhiet-hach-1" src="https://i1-vnexpress.vnecdn.net/2015/12/12/anh-2-3872-1449895863.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5z-YSP-WcW4MNYMPMAvDKw" /></p>

<p>&nbsp;Hai c&aacute;ch k&iacute;ch nổ bom nguy&ecirc;n tử. Ảnh:&nbsp;<em>Wikipedia</em></p>

<p>Với mỗi loại nhi&ecirc;n liệu bom nguy&ecirc;n tử c&oacute; một khối lượng đặc trưng, gọi l&agrave; khối lượng tới hạn. Khi khối lượng nhi&ecirc;n liệu nhỏ hơn khối lượng n&agrave;y th&igrave; phản ứng d&acirc;y chuyền kh&ocirc;ng xảy ra. Nhi&ecirc;n liệu phản ứng trong mỗi quả bom sẽ được chia t&aacute;ch ra c&aacute;c phần dưới hạn để đảm bảo an to&agrave;n. Muốn k&iacute;ch nổ chỉ cần gh&eacute;p c&aacute;c phần ri&ecirc;ng rẽ n&agrave;y th&agrave;nh một khối. Khối lượng n&agrave;y của urani 235 tinh khiết l&agrave; 50kg.</p>

<p>Cho tới nay, Mỹ l&agrave; nước duy nhất sử dụng bom nguy&ecirc;n tử trong chiến tranh. Quả bom thứ nhất m&agrave; Mỹ thả xuống th&agrave;nh phố Hiroshima ng&agrave;y 6/8/1945 c&oacute; sức c&ocirc;ng ph&aacute; khoảng 15 KT, quả thứ hai thả xuống Nagasaki ba ng&agrave;y sau đ&oacute; c&oacute; sức c&ocirc;ng ph&aacute; khoảng 20 KT. Đ&acirc;y l&agrave; một phần kết quả của dự &aacute;n Manhattan nghi&ecirc;n cứu về vũ kh&iacute; hạt nh&acirc;n của Mỹ ở Thế chiến II.</p>

<p>Bom nhiệt hạch</p>

<p>Được Mỹ bắt đầu nghi&ecirc;n cứu ph&aacute;t triển v&agrave;o những năm đầu 1950, bom nhiệt hạch được cho l&agrave; c&oacute; sức c&ocirc;ng ph&aacute; mạnh gấp h&agrave;ng ng&agrave;n lần bom nguy&ecirc;n tử.</p>

<p>Sự kh&aacute;c nhau cơ bản giữa hai loại l&agrave; bom ph&acirc;n hạch giải ph&oacute;ng năng lượng từ qu&aacute; tr&igrave;nh tổng hợp hai hạt nh&acirc;n nhẹ (hydro) th&agrave;nh một hạt nh&acirc;n nặng hơn (heli). Đ&acirc;y cũng l&agrave; phản ứng đang diễn ra tr&ecirc;n Mặt Trời.</p>

<p>Tuy nhi&ecirc;n, do c&aacute;c hạt nh&acirc;n đều t&iacute;ch điện dương v&agrave; đẩy nhau, cần phải c&oacute; một năng lượng rất lớn, hay một nhiệt độ rất cao để đưa ch&uacute;ng tới khoảng c&aacute;ch đủ gần để xảy ra phản ứng tổng hợp hạt nh&acirc;n. Điều kiện n&agrave;y chỉ c&oacute; thể đạt được nhờ cho nổ một quả bom nguy&ecirc;n tử.</p>

<p>Như vậy, một quả bom nhiệt hạch l&agrave; một quả bom k&eacute;p, trước ti&ecirc;n phải cho nổ bom nguy&ecirc;n tử để tạo điều kiện cho phản ứng nhiệt hạch xảy ra.</p>

<p><img alt="su-khac-nhau-giua-bom-nguyen-tu-va-nhiet-hach-2" src="https://i1-vnexpress.vnecdn.net/2015/12/12/anh-3-6930-1449895864.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vEg5Sn928maUn5_Dc1mJRA" /></p>

<p>Qu&aacute; tr&igrave;nh tổng hợp 2 hạt nh&acirc;n đồng vị của hydro (deuterium v&agrave; tritium) th&agrave;nh heli v&agrave; giải ph&oacute;ng năng lượng trong phản ứng nhiệt hạch. Ảnh:&nbsp;<em>Chemwiki</em></p>

<p>Năng lượng giải ph&oacute;ng từ một vụ nổ nhiệt hạch c&oacute; thể ngay lập tức ph&aacute; hủy mọi thứ trong v&ograve;ng b&aacute;n k&iacute;nh v&agrave;i km. Nhiệt lượng cực lớn c&oacute; thể g&acirc;y ra c&aacute;c cơn b&atilde;o lửa; &aacute;nh s&aacute;ng trắng cường độ cao từ vụ nổ c&oacute; thể g&acirc;y m&ugrave; l&ograve;a. Bụi ph&oacute;ng xạ v&agrave; c&aacute;c sản phẩm phụ của phản ứng như cesium-137 v&agrave; strontium-90 c&oacute; thể đầu độc c&aacute;c sinh vật sống, &ocirc; nhiễm kh&ocirc;ng kh&iacute;, đất v&agrave; nguồn nước trong h&agrave;ng trăm năm.</p>

<p>C&ocirc;ng nghệ hiện nay đ&atilde; cho ph&eacute;p chế tạo ra c&aacute;c đầu đạn nhiệt hạch đủ nhỏ để gắn v&agrave;o t&ecirc;n lửa đạn đạo hoặc đạn ph&aacute;o.</p>

<p>Hiện c&oacute; 9 nước tuy&ecirc;n bố c&oacute; sở hữu vũ kh&iacute; hạt nh&acirc;n, bao gồm Mỹ, Anh, Ph&aacute;p, Nga, Trung Quốc, Ấn Độ, Pakistan v&agrave; Triều Ti&ecirc;n. Trong đ&oacute;, chỉ c&oacute; 5 nước Mỹ, Anh, Ph&aacute;p, Nga, Trung Quốc c&oacute; bom nhiệt hạch.&nbsp;<a href="https://vnexpress.net/kim-jong-un-tuyen-bo-se-dung-bom-nhiet-hach-bao-ve-pham-gia-3325810.html">Triều Ti&ecirc;n mới đ&acirc;y cũng đ&atilde; tuy&ecirc;n bố c&oacute; bom nhiệt hạch&nbsp;</a>nhưng chưa c&oacute; bằng chứng cụ thể. Iran v&agrave; Syria từng bị Mỹ c&aacute;o buộc t&agrave;ng trữ vũ kh&iacute; hạt nh&acirc;n.</p>

<p>Lo ngại nguy cơ xảy ra chiến tranh hạt nh&acirc;n, Hiệp ước kh&ocirc;ng phổ biến Vũ kh&iacute; Hạt nh&acirc;n (NPT) được nhiều nước k&yacute; kết từ năm 1968, nhằm ngăn ngừa sự phổ biến rộng r&atilde;i v&agrave; sở hữu loại vũ kh&iacute; n&agrave;y, đồng thời khuyến kh&iacute;ch nghi&ecirc;n cứu sử dụng kỹ thuật hạt nh&acirc;n cho mục đ&iacute;ch h&ograve;a b&igrave;nh. Cho tới nay đ&atilde; c&oacute; 190 nước tham gia. Việt Nam tham gia năm 1981.</p>
')
GO
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210001', N'CID1706210001', 3, CAST(N'2021-06-17T11:37:09.770' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210001', N'CID1806210001', 2, CAST(N'2021-06-18T14:55:09.460' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210002', N'CID1706210001', 1, CAST(N'2021-06-18T00:08:15.367' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210003', N'CID1806210001', 2, CAST(N'2021-06-18T20:16:09.077' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210004', N'CID1706210002', 2, CAST(N'2021-06-18T19:04:35.470' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210004', N'CID1806210001', 2, CAST(N'2021-06-18T14:02:22.733' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210004', N'CID1806210002', 3, CAST(N'2021-06-20T09:31:59.680' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210004', N'CID2006210001', 3, CAST(N'2021-06-20T09:32:01.163' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210004', N'CID2006210003', 1, CAST(N'2021-06-20T09:45:28.703' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210006', N'CID1706210001', 2, CAST(N'2021-06-17T18:11:43.703' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210007', N'CID1806210001', 3, CAST(N'2021-06-18T13:50:17.220' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210008', N'CID1806210001', 2, CAST(N'2021-06-18T14:06:29.247' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210008', N'CID2006210004', 3, CAST(N'2021-06-20T09:44:50.580' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210009', N'CID1806210001', 2, CAST(N'2021-06-18T14:06:56.627' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210010', N'CID1706210002', 3, CAST(N'2021-06-18T13:50:15.470' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1606210010', N'CID1806210001', 2, CAST(N'2021-06-18T14:07:20.927' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1806210001', N'CID1806210001', 2, CAST(N'2021-06-18T20:34:24.500' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID1906210001', N'CID1806210001', 1, CAST(N'2021-06-20T08:18:24.167' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID2006210001', N'CID2006210002', 3, CAST(N'2021-06-20T09:44:46.923' AS DateTime))
INSERT [dbo].[UserClubRoles] ([UserID], [ClubID], [Role], [DateTimeJoined]) VALUES (N'UID2006210001', N'CID2006210003', 3, CAST(N'2021-06-20T09:44:48.307' AS DateTime))
GO
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210001', N'hoangson', N'bmhvbTFjbnR0QXVBZ0N1RmU=', CAST(N'2021-06-16' AS Date), N'Hoàng Thanh', N'Sơn', CAST(N'2000-02-25' AS Date), N'NTU', N'hoangson@gmail.com', N'Cam Lâm - Khánh Hòa', N'9752359c-a27b-4085-8a91-fb8e4090c455.jpeg', N'0365558787', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210002', N'letruong', N'bmhvbTJjbnR0QXVBZ0N1RmU=', CAST(N'2021-06-16' AS Date), N'Lê Lâm', N'Trường', CAST(N'2000-09-13' AS Date), N'NTU', N'letruong@gmail.com', N'Nha Trang - Khánh Hòa', N'av.png', N'0377895858', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210003', N'nguyentai', N'bmhvbTJjbnR0QXVBZ0N1RmU=', CAST(N'2021-06-16' AS Date), N'Nguyễn Tiến', N'Tài', CAST(N'2000-03-25' AS Date), N'NTU', N'nguyentai@gmail.com', N'Vạn Giã - Khánh Hòa', N'av.png', N'0335564787', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210004', N'nguyentung', N'bmhvbTJjbnR0QXVBZ0N1RmU=', CAST(N'2021-06-16' AS Date), N'Nguyễn Sơn', N'Tùng', CAST(N'2000-02-11' AS Date), N'NTU', N'sontung12c3@gmail.com', N'Nha Trang - Khánh Hòa', N'av.png', N'0394322491', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210005', N'lenhung', N'bmhvbjJjbnR0QXVBZ0N1RmU=', CAST(N'2021-06-16' AS Date), N'Lê Thị Hồng', N'Nhung', CAST(N'2001-05-03' AS Date), N'NTU', N'lenhung@gmail.com', N'Baghdad - Iraq', N'av.png', N'0344477474', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210006', N'sakura11', N'd2lidWNoaW5oaGlldUF1QWdDdUZl', CAST(N'2021-06-16' AS Date), N'Nina', N'Sakura', CAST(N'2002-12-14' AS Date), N'Công ty Hoa Anh Đào', N'sakura11@gmail.com', N'Tokyo - Japan', N'f1c63016-e149-42ad-acb3-03899b28017b.jpeg', N'0332544254', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210007', N'khoimy33', N'Y2FzeWtob2lteUF1QWdDdUZl', CAST(N'2021-06-16' AS Date), N'Khởi', N'My', CAST(N'1998-02-25' AS Date), N'Streamer tại nhà', N'khoimy@gmail.com', N'Quận 7 - TP. Hồ Chí Minh', N'4ad062ea-275c-4bfb-9e55-9b8c1b4ad211.jpeg', N'0247778542', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210008', N'tienlinh22', N'ZG9pdHV5ZW52bkF1QWdDdUZl', CAST(N'2021-06-16' AS Date), N'Nguyễn Tiến', N'Linh', CAST(N'1992-09-14' AS Date), N'Becamex Bình Dương', N'tienlinh@gmail.com', N'Thủ Dầu Một - Bình Dương', N'av.png', N'0366554141', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210009', N'tranlan2k', N'dHJhbmxhbjJrQXVBZ0N1RmU=', CAST(N'2021-06-16' AS Date), N'Trần Ngọc', N'Lan', CAST(N'2000-02-23' AS Date), N'UKH', N'tranngoclan@gmail.com', N'Diên Khánh - Khánh Hòa', N'av.png', N'0399988740', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1606210010', N'longcute9x', N'bG9uZ2RlcHRyYWlBdUFnQ3VGZQ==', CAST(N'2021-06-16' AS Date), N'Hà Thanh', N'Long', CAST(N'1993-04-14' AS Date), N'Công ty CP Việt Nam', N'hathanhlong@gmail.com', N'Nha Trang - Khánh Hòa', N'04382750-72a2-4c0b-817d-599adbfdf363.jpeg', N'0322247410', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1806210001', N'hathithanhanh', N'YW5oYmFieTExQXVBZ0N1RmU=', CAST(N'2021-06-18' AS Date), N'Hà Thị Thanh', N'Anh', CAST(N'2000-05-11' AS Date), N'NTU', N'thanhanhcute@gmail.com', N'Nha Trang - Khánh Hòa', N'3f536b20-9cb4-4a9e-ac97-5d72b4d0542c.jpeg', N'0255411147', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID1906210001', N'huykhanh47', N'dGF5bmd1eWVuQXVBZ0N1RmU=', CAST(N'2021-06-19' AS Date), N'Trần Huy', N'Khánh', CAST(N'2000-11-24' AS Date), N'NTU', N'huykhanh47@gmail.com', N'Buôn Ma Thuột - Đăk Lăk', N'av.png', N'0366666656', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID2006210001', N'levalinh', N'bGluaDIwMDFBdUFnQ3VGZQ==', CAST(N'2021-06-20' AS Date), N'Lê Văn', N'Linh', CAST(N'2001-11-30' AS Date), N'NTU', N'levanlinh2k1@gmail.com', N'Quy Nhơn - Bình Định', N'av.png', N'0332545454', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [DateCreated], [FirstName], [LastName], [DateOfBirth], [Workplace], [Email], [Address], [Avatar], [Phone], [Gender]) VALUES (N'UID2006210002', N'nickao11', N'MTExMTExMTFBdUFnQ3VGZQ==', CAST(N'2021-06-20' AS Date), N'1', N'1', CAST(N'0001-01-01' AS Date), N'', N'tung@gmail.com', N'', N'av.png', N'', 1)
GO
ALTER TABLE [dbo].[Administrators] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Clubs] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT (getdate()) FOR [DateTimeCreated]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT (getdate()) FOR [DateTimeCreated]
GO
ALTER TABLE [dbo].[UserClubRoles] ADD  DEFAULT (getdate()) FOR [DateTimeJoined]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Clubs]  WITH CHECK ADD  CONSTRAINT [FK_Clubs_Administrators] FOREIGN KEY([Approval])
REFERENCES [dbo].[Administrators] ([ID])
GO
ALTER TABLE [dbo].[Clubs] CHECK CONSTRAINT [FK_Clubs_Administrators]
GO
ALTER TABLE [dbo].[Clubs]  WITH CHECK ADD  CONSTRAINT [FK_Clubs_Users] FOREIGN KEY([UserCreated])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Clubs] CHECK CONSTRAINT [FK_Clubs_Users]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Administrators] FOREIGN KEY([Approval])
REFERENCES [dbo].[Administrators] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Administrators]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Plans]  WITH CHECK ADD  CONSTRAINT [FK_Plans_Clubs] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubs] ([ID])
GO
ALTER TABLE [dbo].[Plans] CHECK CONSTRAINT [FK_Plans_Clubs]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Admin] FOREIGN KEY([Approval])
REFERENCES [dbo].[Administrators] ([ID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Admin]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Clubs] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubs] ([ID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Clubs]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Users]
GO
ALTER TABLE [dbo].[UserClubRoles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Clubs] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubs] ([ID])
GO
ALTER TABLE [dbo].[UserClubRoles] CHECK CONSTRAINT [FK_Roles_Clubs]
GO
ALTER TABLE [dbo].[UserClubRoles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserClubRoles] CHECK CONSTRAINT [FK_Roles_Users]
GO
