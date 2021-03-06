USE [QLyTiecCuoi]
GO
/****** Object:  Table [dbo].[CTDichVu]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTDichVu](
	[MaDV] [varchar](6) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[SoLuong] [char](2) NULL,
	[GiaDV] [int] NULL,
	[MaTiecCuoi] [char](4) NOT NULL,
 CONSTRAINT [PK_CTDV] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC,
	[MaTiecCuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTMonAn]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTMonAn](
	[MaMonAn] [varchar](4) NOT NULL,
	[MaTiecCuoi] [varchar](6) NOT NULL,
	[TenMonAn] [nvarchar](50) NULL,
	[GiaMonAn] [int] NULL,
	[GhiChi] [nvarchar](200) NULL,
 CONSTRAINT [PK_CTMonAn] PRIMARY KEY CLUSTERED 
(
	[MaMonAn] ASC,
	[MaTiecCuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [varchar](6) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[GiaDV] [int] NULL,
 CONSTRAINT [PK_DV] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoanhSo]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhSo](
	[ThangNam] [nvarchar](10) NOT NULL,
	[TongDanhThu] [int] NULL,
 CONSTRAINT [PK_DoanhSo] PRIMARY KEY CLUSTERED 
(
	[ThangNam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [varchar](6) NOT NULL,
	[MaTiecCuoi] [varchar](6) NULL,
	[NgayThuTien] [date] NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [int] NULL,
	[TongTienDichVu] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanh]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanh](
	[MaLoaiSanh] [nvarchar](5) NOT NULL,
	[TenLoaiSanh] [nvarchar](50) NULL,
	[GiaBanToiThieu] [int] NULL,
 CONSTRAINT [PK_LoaiSanh] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonAn](
	[MaMonAn] [varchar](4) NOT NULL,
	[TenMonAn] [nvarchar](50) NULL,
	[GiaMonAn] [int] NULL,
	[GhiChi] [nvarchar](200) NULL,
 CONSTRAINT [PK_MonAn] PRIMARY KEY CLUSTERED 
(
	[MaMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sanh]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sanh](
	[MaSanh] [varchar](5) NOT NULL,
	[TenSanh] [nvarchar](50) NULL,
	[MaLoaiSanh] [nvarchar](5) NULL,
	[SoLuongBanToiThieu] [int] NULL,
	[SoLuongBanToiDa] [int] NULL,
 CONSTRAINT [PK_Sanh] PRIMARY KEY CLUSTERED 
(
	[MaSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiecCuoi]    Script Date: 4/1/2018 9:46:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiecCuoi](
	[MaTiecCuoi] [varchar](6) NOT NULL,
	[TenChuRe] [nvarchar](50) NULL,
	[TenCoDau] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[NgayCuoi] [date] NULL,
	[Ca] [char](1) NULL,
	[MaSanh] [varchar](5) NULL,
	[SoBan] [char](3) NULL,
	[SoBanDuTru] [char](2) NULL,
	[TienCoc] [int] NULL,
 CONSTRAINT [PK_MaTiecCuoi] PRIMARY KEY CLUSTERED 
(
	[MaTiecCuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV1 ', N'Dịch vụ 1', 50000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV2 ', N'Dịch vì 2', 20000)
INSERT [dbo].[LoaiSanh] ([MaLoaiSanh], [TenLoaiSanh], [GiaBanToiThieu]) VALUES (N'A', N'Loại A', 1000000)
INSERT [dbo].[LoaiSanh] ([MaLoaiSanh], [TenLoaiSanh], [GiaBanToiThieu]) VALUES (N'B', N'Loại B', 1100000)
INSERT [dbo].[LoaiSanh] ([MaLoaiSanh], [TenLoaiSanh], [GiaBanToiThieu]) VALUES (N'C', N'Loại C', 1200000)
INSERT [dbo].[LoaiSanh] ([MaLoaiSanh], [TenLoaiSanh], [GiaBanToiThieu]) VALUES (N'D', N'Loại D', 1400000)
INSERT [dbo].[LoaiSanh] ([MaLoaiSanh], [TenLoaiSanh], [GiaBanToiThieu]) VALUES (N'E', N'Loại E', 1600000)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [GiaMonAn], [GhiChi]) VALUES (N'MA1 ', N'Cơm', 100000, NULL)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [GiaMonAn], [GhiChi]) VALUES (N'MA2 ', N'Mì xào', 100000, NULL)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [GiaMonAn], [GhiChi]) VALUES (N'MA3 ', N'Món ăn 3', 10000, NULL)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [GiaMonAn], [GhiChi]) VALUES (N'MA4 ', N'Món ăn 4', 213, NULL)
INSERT [dbo].[MonAn] ([MaMonAn], [TenMonAn], [GiaMonAn], [GhiChi]) VALUES (N'MA5 ', N'Món ăn 5', 5456, NULL)
INSERT [dbo].[Sanh] ([MaSanh], [TenSanh], [MaLoaiSanh], [SoLuongBanToiThieu], [SoLuongBanToiDa]) VALUES (N'S1', N'Sảnh 1    ', N'A', 10, 20)
INSERT [dbo].[Sanh] ([MaSanh], [TenSanh], [MaLoaiSanh], [SoLuongBanToiThieu], [SoLuongBanToiDa]) VALUES (N'S2', N'Sảnh 2    ', N'B', 10, 20)
ALTER TABLE [dbo].[CTDichVu]  WITH CHECK ADD  CONSTRAINT [FK_CTDichVu_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[CTDichVu] CHECK CONSTRAINT [FK_CTDichVu_DichVu]
GO
ALTER TABLE [dbo].[CTDichVu]  WITH CHECK ADD  CONSTRAINT [FK_CTDichVu_TiecCuoi] FOREIGN KEY([MaDV])
REFERENCES [dbo].[TiecCuoi] ([MaTiecCuoi])
GO
ALTER TABLE [dbo].[CTDichVu] CHECK CONSTRAINT [FK_CTDichVu_TiecCuoi]
GO
ALTER TABLE [dbo].[CTMonAn]  WITH CHECK ADD  CONSTRAINT [FK_CTMonAn_MonAn] FOREIGN KEY([MaMonAn])
REFERENCES [dbo].[MonAn] ([MaMonAn])
GO
ALTER TABLE [dbo].[CTMonAn] CHECK CONSTRAINT [FK_CTMonAn_MonAn]
GO
ALTER TABLE [dbo].[CTMonAn]  WITH CHECK ADD  CONSTRAINT [FK_CTMonAn_TiecCuoi] FOREIGN KEY([MaTiecCuoi])
REFERENCES [dbo].[TiecCuoi] ([MaTiecCuoi])
GO
ALTER TABLE [dbo].[CTMonAn] CHECK CONSTRAINT [FK_CTMonAn_TiecCuoi]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TiecCuoi] FOREIGN KEY([MaTiecCuoi])
REFERENCES [dbo].[TiecCuoi] ([MaTiecCuoi])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TiecCuoi]
GO
ALTER TABLE [dbo].[Sanh]  WITH CHECK ADD  CONSTRAINT [FK_Sanh_LoaiSanh] FOREIGN KEY([MaLoaiSanh])
REFERENCES [dbo].[LoaiSanh] ([MaLoaiSanh])
GO
ALTER TABLE [dbo].[Sanh] CHECK CONSTRAINT [FK_Sanh_LoaiSanh]
GO
ALTER TABLE [dbo].[TiecCuoi]  WITH CHECK ADD  CONSTRAINT [FK_TiecCuoi_Sanh] FOREIGN KEY([MaSanh])
REFERENCES [dbo].[Sanh] ([MaSanh])
GO
ALTER TABLE [dbo].[TiecCuoi] CHECK CONSTRAINT [FK_TiecCuoi_Sanh]
GO
