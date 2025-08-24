
/****** Object:  Table [dbo].[BoMon]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBoMon] [varchar](10) NOT NULL,
	[TenBoMon] [nvarchar](200) NULL,
	[TenTiengAnh] [varchar](200) NULL,
	[MaKhoa] [varchar](10) NULL,
	[TruongBoMon] [varchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [pk_BoMon] PRIMARY KEY CLUSTERED 
(
	[MaBoMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhDaoTao]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhDaoTao](
	[MaCTDT] [varchar](25) NOT NULL,
	[TenCTDT] [nvarchar](200) NULL,
	[TenCTDTTiengAnh] [varchar](200) NULL,
	[MaKhoa] [varchar](10) NULL,
	[NganhApDung] [nvarchar](200) NULL,
	[KhoaHocApDung] [varchar](10) NULL,
 CONSTRAINT [pk_ChuongTrinhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDT_HocPhan]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDT_HocPhan](
	[MaCTDT] [varchar](25) NOT NULL,
	[MaHocPhan] [varchar](25) NOT NULL,
	[KyHoc] [int] NULL,
 CONSTRAINT [pk_CTDT_HocPhan] PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC,
	[MaHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGiangVien] [varchar](10) NOT NULL,
	[HoDem] [nvarchar](35) NULL,
	[Ten] [nvarchar](35) NULL,
	[MaBoMon] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[HocHam] [nvarchar](20) NULL,
	[HocVi] [nvarchar](20) NULL,
	[ChucDanh] [nvarchar](20) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [pk_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhan]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhan](
	[MaHocPhan] [varchar](25) NOT NULL,
	[TenHocPhan] [nvarchar](200) NULL,
	[TenTiengAnh] [nvarchar](200) NULL,
	[MaBoMon] [varchar](10) NULL,
	[SoTinChi] [int] NULL,
	[TrongSoDiemQuaTrinh] [float] NULL,
	[TrongSoDiemThiKTHP] [float] NULL,
 CONSTRAINT [pk_HocPhan] PRIMARY KEY CLUSTERED 
(
	[MaHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhanTienQuyet]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhanTienQuyet](
	[MaHocPhan] [varchar](25) NOT NULL,
	[MaHocPhanTienQuyet] [varchar](25) NOT NULL,
	[RangBuoc] [bit] NULL,
 CONSTRAINT [pk_HocPhanTienQuyet] PRIMARY KEY CLUSTERED 
(
	[MaHocPhan] ASC,
	[MaHocPhanTienQuyet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [varchar](10) NOT NULL,
	[TenKhoa] [nvarchar](200) NULL,
	[TenTiengAnh] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Website] [ntext] NULL,
 CONSTRAINT [pk_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](25) NOT NULL,
	[TenLop] [nvarchar](200) NULL,
	[MaKhoa] [varchar](10) NULL,
	[KhoaHoc] [varchar](10) NULL,
 CONSTRAINT [pk_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[MaHocPhan] [varchar](25) NOT NULL,
	[MaLopHocPhan] [varchar](25) NOT NULL,
	[TenLopHocPhan] [nvarchar](200) NULL,
	[MaGiangVien] [varchar](10) NULL,
	[NamHoc] [varchar](20) NULL,
	[HocKy] [int] NULL,
	[DotHoc] [int] NULL,
 CONSTRAINT [pk_LopHocPhan] PRIMARY KEY CLUSTERED 
(
	[MaHocPhan] ASC,
	[MaLopHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan_SinhVien]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan_SinhVien](
	[MaHocPhan] [varchar](25) NOT NULL,
	[MaLopHocPhan] [varchar](25) NOT NULL,
	[MaSinhVien] [varchar](10) NOT NULL,
	[DiemQuaTrinh] [float] NULL,
	[DiemThiKTHP] [float] NULL,
	[DiemTKHP] [float] NULL,
	[DiemHeChu] [varchar](10) NULL,
	[LanHoc] [int] NULL,
 CONSTRAINT [pk_LopHocPhan_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaHocPhan] ASC,
	[MaLopHocPhan] ASC,
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 21/8/2024 2:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [varchar](10) NOT NULL,
	[HoDem] [nvarchar](35) NULL,
	[Ten] [nvarchar](35) NULL,
	[MaCTDT] [varchar](25) NULL,
	[MaLop] [varchar](25) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](250) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [pk_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BoMon] ([MaBoMon], [TenBoMon], [TenTiengAnh], [MaKhoa], [TruongBoMon], [DiaChi], [DienThoai], [Email]) VALUES (N'CPM', N'C�NG NGH? PH?N M?M', N'SOFTWARE TECHNOLOGY', N'CNTT', N'0172', N'310A9', N'0247899234', N'cpm@utc.edu.vn')
GO
INSERT [dbo].[BoMon] ([MaBoMon], [TenBoMon], [TenTiengAnh], [MaKhoa], [TruongBoMon], [DiaChi], [DienThoai], [Email]) VALUES (N'KHM', N'KHOA H?C M�Y T�NH', N'COMPUTER SCIENCE', N'CNTT', N'1680', N'309A9', N'0243344556', N'khm@utc.edu.vn')
GO
INSERT [dbo].[BoMon] ([MaBoMon], [TenBoMon], [TenTiengAnh], [MaKhoa], [TruongBoMon], [DiaChi], [DienThoai], [Email]) VALUES (N'MHT', N'M?NG V� C�C H? TH?NG TH�NG TIN', N'NETWORKS AND INFORMATION SYSTEMS', N'CNTT', N'1387', N'308A9', N'0248899889', N'mht@utc.edu.vn')
GO
INSERT [dbo].[ChuongTrinhDaoTao] ([MaCTDT], [TenCTDT], [TenCTDTTiengAnh], [MaKhoa], [NganhApDung], [KhoaHocApDung]) VALUES (N'7.48.01.01', N'KHOA H?C M�Y T�NH', NULL, NULL, NULL, N'63')
GO
INSERT [dbo].[ChuongTrinhDaoTao] ([MaCTDT], [TenCTDT], [TenCTDTTiengAnh], [MaKhoa], [NganhApDung], [KhoaHocApDung]) VALUES (N'7.48.02.01', N'C�NG NGH? TH�NG TIN', N'INFORMATION TECHNOLOGY', N'CNTT', N'CNTT', N'tu khoa 61')
GO
INSERT [dbo].[ChuongTrinhDaoTao] ([MaCTDT], [TenCTDT], [TenCTDTTiengAnh], [MaKhoa], [NganhApDung], [KhoaHocApDung]) VALUES (N'7.48.02.01QT(IE3)', N'CH?T L??NG CAO C�NG NGH? TH�NG TIN VI?T ANH', N'HIGH QUALITY INFORMATION TECHNOLOGY', N'CNTT', N'CNTT', N'62')
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT0.004.2', 1)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.106.3', 3)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.107.3', 3)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.110.3', 4)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.113.3', 3)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.217.3', 6)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.220.3', 7)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01', N'IT1.223.2', 5)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IE3.002.3', 4)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IE3.003.3', 5)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IE3.004.3', 6)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IT1.110.3', 4)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IT1.115.3', 5)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IT1.223.2', 5)
GO
INSERT [dbo].[CTDT_HocPhan] ([MaCTDT], [MaHocPhan], [KyHoc]) VALUES (N'7.48.02.01QT(IE3)', N'IT1.227.2', 6)
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'0172', N'Nguy?n Tr?ng', N'Ph�c', N'CPM', CAST(N'1976-01-01' AS Date), NULL, N'TS', N'GV', N'0888869999', N'NguyenTrongPhuc@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'0175', N'Nguy?n Tr?n ', N'H?nh', N'KHM', CAST(N'1979-05-05' AS Date), NULL, N'ThS', N'GV', N'0967897777', N'NguyenTranHanh@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'0849', N'Nguy?n Anh', N'T�m', N'MHT', CAST(N'2001-03-03' AS Date), NULL, N'KS', N'GV', N'0984000000', N'NguyenAnhTam@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'0896', N'B�i Ng?c', N'Quang', N'MHT', CAST(N'1977-02-02' AS Date), NULL, N'TS', N'GVC', N'0919333999', N'BuiNgocQuang@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1207', N'Nguy?n H?u', N'Th�i', N'KHM', CAST(N'2000-07-07' AS Date), NULL, N'KS', N'GV', N'0944998888', N'NguyenHuuThai@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1268', N'L?i M?nh', N'D?ng', N'MHT', CAST(N'1981-01-01' AS Date), NULL, N'TS', N'GV', N'0888888866', N'LaiManhDung@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1387', N'Nguy?n Qu?c', N'Tu?n', N'CPM', CAST(N'1978-12-12' AS Date), NULL, N'TS', N'GVC', N'0969969969', N'NguyenQuocTuan@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1406', N'Nguy?n L�', N'M?nh', N'KHM', CAST(N'1999-08-08' AS Date), NULL, N'ThS', N'GV', N'0912777999', N'NguyenLeManh@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1614', N'Nguy?n Th? H?ng', N'Nhung', N'KHM', CAST(N'1998-06-06' AS Date), NULL, N'ThS', N'GV', N'0983888888', N'NguyenThiHongNhung@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1673', N'Nguy?n Thanh ', N'Tr�', N'CPM', CAST(N'1969-11-11' AS Date), N'PGS', N'TS', N'GVCC', N'0839099999', N'NguyenThanhTra@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1674', N'Nguy?n Kim', N'Sao', N'CPM', CAST(N'1979-10-10' AS Date), NULL, N'TS', N'GVC', N'0987988888', N'NguyenKimSao@utc.edu.vn')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoDem], [Ten], [MaBoMon], [NgaySinh], [HocHam], [HocVi], [ChucDanh], [DienThoai], [Email]) VALUES (N'1679', N'Ph?m Thanh', N'H?i', N'MHT', CAST(N'1971-04-04' AS Date), N'PGS', N'TS', N'GVCC', N'0911222222', N'PhamThanhHai@utc.edu.vn')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IE3.002.3', N'C�ng ngh? Java', N'Java Programming Language', N'CPM', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IE3.003.3', N'L?p tr�nh web', N'Web Programming', N'MHT', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IE3.004.3', N'L?p tr�nh thi?t b? di ??ng', N'Mobile Device Programming', N'MHT', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT0.004.2', N'Tin h?c ??i c??ng', N'Fundamental Informatics', N'CPM', 2, 0.4, 0.6)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.106.3', N'Thi?t k? web', N'Front End Web Design', N'MHT', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.107.3', N'Ki?n tr�c v� t? ch?c m�y t�nh', N'Computer Organization and Architecture', N'MHT', 3, 0.4, 0.6)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.110.3', N'C? s? d? li?u', N'Database', N'MHT', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.113.3', N'C�ng ngh? Java', N'Java Programming Language', N'CPM', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.115.3', N'M?ng m�y t�nh', N'Computer Networking', N'MHT', 3, 0.4, 0.6)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.118.2', N'Thu?t to�n v� ?ng d?ng', N'Algorithms and applications', N'KHM', 3, 0.4, 0.6)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.217.3', N'L?p tr�nh Web', N'Web Programming  ', N'MHT', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.220.3', N'Tr� tu? nh�n t?o', N'Artificial Intelligence', N'MHT', 3, 0.5, 0.5)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.223.2', N'H? qu?n tr? CSDL SQL Server', N'Microsoft SQL Server Management', N'KHM', 3, 0.4, 0.6)
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [TenTiengAnh], [MaBoMon], [SoTinChi], [TrongSoDiemQuaTrinh], [TrongSoDiemThiKTHP]) VALUES (N'IT1.227.2', N'H? ?i?u h�nh UNIX', N'Unix Operating System', N'KHM', 2, 0.4, 0.6)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IE3.003.3', N'IT0.004.2', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IE3.003.3', N'IT1.106.3', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IE3.003.3', N'IT1.110.3', 1)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IE3.003.3', N'IT1.115.3', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IE3.004.3', N'IT0.004.2', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.107.3', N'IT0.004.2                ', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.110.3', N'IT0.004.2', 1)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.217.3', N'IT0.004.2', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.217.3', N'IT1.106.3', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.217.3', N'IT1.110.3', 0)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.223.2', N'IT1.110.3', 1)
GO
INSERT [dbo].[HocPhanTienQuyet] ([MaHocPhan], [MaHocPhanTienQuyet], [RangBuoc]) VALUES (N'IT1.227.2', N'IT0.004.2', 0)
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [TenTiengAnh], [DiaChi], [DienThoai], [Email], [Website]) VALUES (N'CNTT', N'C�NG NGH? TH�NG TIN', N'INFORMATION TECHNOLOGY', N'306A9   ', N'02435568668', N'cntt@utc.edu.vn', N'fit.utc.vn')
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [KhoaHoc]) VALUES (N'K61.CNTT2', N'C�NG NGH? TH�NG TIN 2', N'CNTT', N'61  ')
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [KhoaHoc]) VALUES (N'K62.CNTTVA2', N'C�NG NGH? TH�NG TIN CH?T L??NG CAO VI?T - ANH 2', N'CNTT', N'62  ')
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'C�ng ngh? Java-1-2-22(QT02)', N'0172', N'2022-2023', 2, 1)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'L?p tr�nh thi?t b? di ??ng-1-2-23(QT02)', N'1268', N'2023-2024', 2, 1)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'C? s? d? li?u-1-2-22(N01)', N'1674', N'2022-2023', 2, 1)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'C? s? d? li?u-1-2-22(QT08)', N'1674', N'2023-2024', 2, 1)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IT1.110.3', N'1-2-24-N01', N'C? s? d? li?u-1-2-24(N01)', N'1674', N'2024-2025', 2, 1)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'C? s? d? li?u-2-2-22(N01)', N'1674', N'2023-2024', 2, 2)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'L?p tr�nh web-1-2-22(N02)', N'1674', N'2022-2023', 2, 1)
GO
INSERT [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan], [TenLopHocPhan], [MaGiangVien], [NamHoc], [HocKy], [DotHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'Tr� tu? nh�n t?o-1-2-23(N03)', N'1387', N'2023-2024', 2, 1)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212600556', 6.5, 8.8, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212601105', 8.5, 8.5, 8.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212602500', 7, 9.6, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212602565', 9.2, 2.6, 5.9, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212602719', 8, 2.8, 5.4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212602930', 8.6, 10, 9.3, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212603983', 8.5, 8.6, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212604007', 6, 9.7, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212606012', 6.2, 8.8, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212606014', 8.5, 8.5, 8.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212606016', 9.1, 8.2, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212606018', 5.6, 9.5, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212610094', 6, 5.8, 5.9, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212610442', 9, 8.8, 8.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212610443', 7.5, 9, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212610781', 9.5, 8.6, 9.1, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212611377', 10, 9.6, 9.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212612471', 9, 8.5, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212612929', 8.1, 9.5, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212613775', 7.2, 8.3, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212616010', 10, 8.8, 9.4, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212630022', 7.5, 10, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212630095', 7.5, 8.5, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212630184', 8.3, 9, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212630895', 7.6, 9.7, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212630972', 8.3, 7.6, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212631446', 7.6, 8.8, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212632702', 9.5, 8.8, 9.2, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212633564', 7.3, 8.6, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212633819', 6.8, 9.5, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212633820', 9.3, 8.8, 9.1, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212633938', 7, 8.5, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212634149', 8, 9.5, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212640397', 10, 9.8, 9.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212642248', 7.3, 7.5, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'212643488', 9.6, 9.8, 9.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'882126003', 4, 0, 2, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'882126009', 8.5, 7.8, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'882126013', 7.3, 7.7, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'882126017', 6.6, 8.7, 7.6, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'882126030', 7.8, 9, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.002.3', N'1-2-22-QT02', N'882126033', 9, 7.2, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212600556', 8.3, 8.6, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212601105', 8.5, 10, 9.3, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212602500', 7.8, 9.6, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212602565', 7.2, 8.6, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212602719', 7.3, 9.5, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212602930', 2.1, 8.5, 5.3, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212603983', 8.5, 8.6, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212604007', 7.3, 8, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212606012', 0.6, 0, 0.3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212606014', 5.5, 9.2, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212606016', 7.1, 1, 4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212606018', 9.8, 9.5, 9.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212610094', 6.5, 0.3, 3.4, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212610442', 9.8, 8.2, 9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212610443', 9.2, 9.8, 9.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212610781', 8.2, 8.5, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212611377', 7.6, 7.8, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212612471', 7.2, 8.6, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212612929', 0.6, 9.6, 5.1, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212613775', 8.7, 7.6, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212616010', 8, 6.8, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212630022', 6.8, 9.8, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212630095', 10, 10, 10, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212630184', 10, 10, 10, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212630895', 6, 8.5, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212630972', 9.1, 6.5, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212631446', 1.5, 5.7, 3.6, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212632702', 8.1, 9.3, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212633564', 7.6, 9.2, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212633819', 0.2, 9.5, 4.8, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212633820', 8.5, 8.2, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212633938', 6.5, 9, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212634149', 8, 9.7, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212640397', 7.1, 8.8, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212642248', 6.5, 7.6, 7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'212643488', 7.7, 8.5, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'882126003', 10, 8.8, 9.4, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'882126009', 7.3, 8.8, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'882126013', 6.3, 10, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'882126017', 6.3, 8.6, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'882126030', 8.3, 9.5, 8.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IE3.004.3', N'1-2-23-QT02', N'882126033', 6.7, 7, 6.8, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'183000703', 2, 3.5, 2.8, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200161', 3, 4, 3.5, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200168', 2.5, 4, 3.3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200177', 3.5, 4.5, 4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200185', 1.5, 2.5, 2, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200190', 4, 2, 3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200203', 4, 3, 3.5, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200206', 4.5, 3, 3.8, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200211', 3.5, 2.5, 3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200226', 2, 2, 2, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200229', 3, 1.5, 2.3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200234', 1.5, 4, 2.8, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200235', 3, 4, 3.5, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201200245', 3.5, 4.5, 4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-N01', N'201210225', 2.5, 3.5, 3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212600556', 8.8, 4.7, 6.8, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212601105', 8.5, 8, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212602500', 0.6, 4.5, 2.5, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212602565', 7.6, 7.5, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212602719', 8.1, 9, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212602930', 9.2, 7.2, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212603983', 8, 8.6, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212604007', 8.7, 7.5, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212606012', 8, 8, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212606014', 7.7, 6.8, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212606016', 9.8, 8.8, 9.3, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212606018', 8.8, 8, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212610094', 8.2, 8.2, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212610442', 3.3, 8, 5.7, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212610443', 9.2, 7.1, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212610781', 8, 3.8, 5.9, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212611377', 9, 7.5, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212612471', 7.5, 7, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212612929', 8, 6.7, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212613775', 8.8, 8.6, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212616010', 8, 8.1, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212630022', 8.1, 9.1, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212630095', 9, 8.3, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212630184', 9, 9, 9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212630895', 9.8, 9.7, 9.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212630972', 0, 7.2, 3.6, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212631446', 8, 0.3, 4.2, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212632702', 9, 7.1, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212633564', 8.6, 7.5, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212633819', 8.1, 6.5, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212633820', 7.7, 0.5, 4.1, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212633938', 8.8, 8, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212634149', 8, 9.5, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212640397', 2, 2, 2, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212642248', 7.6, 8.5, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'212643488', 8.1, 0, 4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'882126003', 7.6, 7.5, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'882126009', 8.1, 7.3, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'882126013', 8.6, 7.8, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'882126017', 8.5, 8, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'882126030', 8.8, 10, 9.4, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'1-2-22-QT08', N'882126033', 7.7, 9.5, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'183000703', 10, 9.8, 9.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200161', 10, 8.8, 9.4, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200168', 8.3, 7.6, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200177', 8.5, 7.8, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200185', 6, 5.8, 5.9, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200190', 7.3, 7.7, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200203', 7.3, 8.6, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200206', 9.6, 9.8, 9.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200211', 8, 2.8, 5.4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200226', 8.5, 8.6, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200229', 4, 4, 4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200234', 4, 4.5, 4.3, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200235', 4.5, 5, 4.8, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201200245', 6, 4.5, 5.3, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.110.3', N'2-2-22-N01', N'201210225', 9.5, 8.6, 9.1, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'171202737', 9.5, 7.5, 8.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'191200482', 9, 8.7, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'191213486', 8.3, 8.5, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200005', 7.5, 7.2, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200014', 7.3, 7.5, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200021', 8, 6.8, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200026', 8.7, 7, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200029', 9.1, 9.5, 9.3, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200043', 9.8, 6, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200053', 9.3, 6.8, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200057', 9.8, 8.7, 9.3, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200060', 9.1, 0.2, 4.6, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200066', 8.6, 9.5, 9.1, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200085', 9.5, 8.8, 9.2, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200087', 8.5, 9.5, 9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200102', 8, 9.3, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200108', 8.2, 8.5, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200116', 8.5, 8, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200130', 7.3, 9.3, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200137', 9.5, 8.1, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200138', 8, 8, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200160', 9, 7.5, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200163', 7.8, 6.2, 7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200173', 5, 9, 7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200179', 7.6, 7.3, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200188', 9.3, 9.5, 9.4, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200193', 9.2, 9.8, 9.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200212', 8.6, 9.8, 9.2, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200217', 10, 7.6, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200248', 2.7, 8.2, 5.4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200263', 8.8, 8.1, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200265', 8.5, 8.3, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200266', 8.1, 7.8, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200267', 7.6, 7.6, 7.6, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200281', 3.8, 0, 1.9, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200288', 4.2, 8.5, 6.3, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200292', 4.8, 8.1, 6.4, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200295', 8.8, 7.1, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200302', 7.5, 7.8, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200316', 8.3, 7.8, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200322', 9.5, 8.2, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200324', 8.6, 6.5, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200341', 6.2, 1, 3.6, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200342', 9, 6.5, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200346', 8.2, 3.8, 6, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200361', 8.5, 8.1, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200382', 10, 9.1, 9.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200385', 9, 7.8, 8.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200392', 9, 6.6, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200399', 7.3, 7, 7.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200412', 0, 8, 4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201200422', 6.5, 5.2, 5.8, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201205542', 8, 7.5, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201206522', 8.3, 6.3, 7.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201206931', 8.7, 9.3, 9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201207282', 7.6, 0, 3.8, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201207326', 3.3, 7.2, 5.3, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210114', 9.3, 4.3, 6.8, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210159', 8.6, 6.8, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210176', 9.7, 7.5, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210256', 8.7, 2.1, 5.4, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210294', 9.6, 0.6, 5.1, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210305', 0, 8.5, 4.3, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210356', 7.1, 8.5, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201210407', 9, 7.2, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201216824', 9, 9, 9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'201240414', 4, 1.5, 2.8, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.217.3', N'1-2-22-N02', N'991790002', 8.1, 7.8, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'171202737', 7.7, 9, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'191200482', 6.6, 9.2, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'191213486', 9.1, 8.8, 8.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200005', 7.6, 6.5, 7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200014', 8.1, 7.6, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200021', 7.5, 9.6, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200026', 6.8, 8.8, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200029', 7, 8.8, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200043', 8.2, 9.7, 8.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200053', 10, 9.2, 9.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200057', 8, 6, 7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200060', 8.5, 8.7, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200066', 8.7, 7.6, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200085', 0, 9.2, 4.6, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200087', 7.7, 7.1, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200102', 7.6, 7.3, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200108', 9, 6.8, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200116', 9.5, 9.1, 9.3, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200130', 0, 6.6, 3.3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200137', 8.5, 6.5, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200138', 9.2, 6.7, 7.9, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200160', 9, 8.1, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200163', 8.1, 8.2, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200173', 8.3, 7.8, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200179', 7.5, 9, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200188', 5.5, 7.3, 6.4, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200193', 9, 8, 8.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200212', 8.5, 7.5, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200217', 7.8, 7.8, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200248', 0, 6.5, 3.3, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200263', 8.8, 7.5, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200265', 8.8, 7.3, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200266', 9.2, 6.5, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200267', 8.5, 9.5, 9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200281', 7.8, 10, 8.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200288', 9.6, 8.6, 9.1, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200292', 8.8, 8.7, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200295', 8.8, 9.6, 9.2, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200302', 10, 7.5, 8.8, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200316', 7.6, 8.5, 8.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200322', 6.8, 8.1, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200324', 5.6, 10, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200341', 0.6, 7.3, 3.9, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200342', 8.5, 6.8, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200346', 6.8, 8, 7.4, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200361', 7.8, 4.6, 6.2, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200382', 7, 8, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200385', 7.2, 8.8, 8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200392', 7.2, 9.5, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200399', 9.1, 9.3, 9.2, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200412', 8.2, 6, 7.1, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201200422', 7.5, 0.3, 3.9, N'F', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201205542', 9.5, 6.8, 8.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201206522', 9.2, 8.6, 8.9, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201206931', 8.8, 8.6, 8.7, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201207282', 7.8, 7.6, 7.7, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201207326', 2, 7.8, 4.9, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210114', 9.2, 7.8, 8.5, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210159', 8.8, 6.8, 7.8, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210176', 6.7, 8.5, 7.6, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210256', 7.1, 10, 8.6, N'A', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210294', 5.1, 9.3, 7.2, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210305', 6.5, 8.5, 7.5, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210356', 5.2, 8.2, 6.7, N'C', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201210407', 5.6, 5, 5.3, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201216824', 9.6, 7.1, 8.3, N'B', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'201240414', 8.5, 1.3, 4.9, N'D', NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaHocPhan], [MaLopHocPhan], [MaSinhVien], [DiemQuaTrinh], [DiemThiKTHP], [DiemTKHP], [DiemHeChu], [LanHoc]) VALUES (N'IT1.220.3', N'1-2-23-N03', N'991790002', 9.6, 7.1, 8.3, N'B', NULL)
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'171202737', N'L� Thi�n', N'Khang', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-11' AS Date), N's? 275, V? T�ng Phan, P. Kh??ng Trung, Q.Thanh Xu�n, TP H� N?i ', N'0968809252', N'LeThienKhang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'183000703', N'Cao H�ng', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-03' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'191200482', N'Ho�ng Kim', N'D?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-21' AS Date), N'Nh� s? 2 , x�m T�y Ph??n , ph??ng Trang H? , th? x� T? S?n , t?nh B?c Ninh ', N'0966090629', N'HoangKimDung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'191213486', N'Chu M?nh', N'Qu�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-09' AS Date), N'S? 5 t? d�n ph? Th�p ph??ng ??i m? Nam t? li�m H� n?i', N'0982129703', N'ChuManhQuan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200005', N'Nguy?n V?n', N'Th?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-24' AS Date), NULL, N'0385548856', N'NguyenVanThang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200014', N'Ph?m Nguy?n Ph�c', N'Th?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-25' AS Date), N's? nh� 102 ???ng minh xu�n, th�n tr??ng an, x� an kh�nh, ho�i ??c, h� n?i', N'0394049011', N'PhamNguyenPhucThang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200021', N'Nguy?n V?', N'Thi?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-01-18' AS Date), N'S�? 15/175 ?i?nh c�ng - thi?nh li�?t- hoa?ng mai', N'0914851967', N'NguyenVuThien@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200026', N'Nguy?n ??c', N'Thu?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-09-09' AS Date), N' 14A4 Khu t?p Th? Pin V?n ?i?n, Thanh Tr�, H� N?i', N'0982791899', N'NguyenDucThuan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200029', N'Nguy?n V?n', N'Ti?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-24' AS Date), N'0978238503 s? 5 ng�ch 99/141 ??nh C�ng Ho�ng Mai', N'0368754143', N'NguyenVanTien@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200043', N'Tri?u Vi?t', N'Trung', N'7.48.02.01', N'K61.CNTT2', CAST(N'2001-12-27' AS Date), NULL, N'', N'TrieuVietTrung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200053', N'?? Anh', N'Tu?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-07-12' AS Date), NULL, N'0917390319', N'DoAnhTuan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200057', N'Nguy?n B�', N'Tu?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-01-11' AS Date), NULL, N'0397759286', N'NguyenBoTuan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200060', N'V? Trung', N'Tu?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-05' AS Date), NULL, N'0913010872', N'VuTrungTuan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200066', N'Ph?m Xu�n', N'T�ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-24' AS Date), NULL, N'0946279422', N'PhamXuonTung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200085', N'Nguy?n Tr?ng', N'V?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-06-29' AS Date), NULL, N'0979917356', N'NguyenTrongVan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200087', N'L� Quang', N'Vi?t', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-05' AS Date), NULL, N'0946069818', N'LoQuangViet@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200102', N'Tr?n ??c', N'An', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-12' AS Date), N'P.1505, t�a nh� Vinaconex 6, s? 61, t? 15, ph??ng C?u Di?n, qu?n Nam T? Li�m, th�nh ph? H� N?i', N'0878758412', N'TranDucAn@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200108', N'Nguy?n Qu?nh', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-14' AS Date), N'P306, 21B4 CT2 K?T TPGL, 234 Ph?m V?n ??ng, TDP Ho�ng 22, C? Nhu? 1, B?c T? Li�m, H� N?i', N'0965731615', N'NguyenQuynhAnh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200116', N'Tr?nh Xu�n', N'B�ch', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-11' AS Date), N'X�m m?i - x� thu? l�i-kim b?ng- h� nam', N'0932290479', N'TrinhXuonBoch@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200130', N'Nguy?n Ph??ng', N'B?c', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-20' AS Date), N'X�m M? H?ng, th�n Quang Trung, x� Qu?nh M?, huy?n Qu?nh Ph?, t?nh Th�i B�nh', N'0789377434', N'NguyenPhuongBac@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200137', N'Nguy?n ??ng Ho�ng', N'B�nh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-08' AS Date), NULL, N'0397615693', N'NguyenDangHoangBonh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200138', N'Mai Duy', N'Chinh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-02' AS Date), N'P506-B3, Ng?c Kh�nh, Ba ?�nh, H� N?i', N'0346954746', N'MaiDuyChinh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200160', N'Ph?m Ti?n', N'D?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-17' AS Date), N'S? 915, t? d�n ph? 9, Ph� L�m, H� ?�ng, H� N?i', N'0383645108', N'PhamTienDung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200161', N'Nguy?n B?o', N'H?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-07-08' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200163', N'T?ng Trung', N'?o�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-01-29' AS Date), N'X�m 10 X� H?i Trung Huy?n H?i H?u T?nh Nam ??nh', N'0376981003', N'TongTrungDoan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200168', N'Nguy?n ??c', N'An', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-30' AS Date), NULL, NULL, NULL)
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200173', N'Ho�ng Minh', N'??c', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-27' AS Date), N'??i 5-th�n Ph??ng La-x� C?m Ch?-huy?n Thanh H�-t?nh H?i D??ng', N'0795255527', N'HoangMinhDuc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200177', N'Nguy?n H?u', N'An', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-26' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200179', N'?? Quang', N'Gi�p', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-29' AS Date), N'B�i C? - C�c Ph??ng - Nho Quan - Ninh B�nh', N'0962745975', N'DoQuangGiop@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200185', N'?o�n Th? Mai', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-03' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200188', N'V? ??c', N'H?i', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-07' AS Date), N'Th�n Kim L? - x� Ph� ?ng - huy?n �n Thi - t?nh H?ng Y�n', N'0392049560', N'VuDucHai@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200190', N'Nguy?n Th? Ph??ng', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-01' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200193', N'L� C�ng', N'Hi?p', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-13' AS Date), N'SN 263 - t? 7- ph??ng t�n thanh -Tp.?i?n Bi�n Ph? -t?nh ?i?n Bi�n', N'0888457996', N'LoCungHiep@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200203', N'Nguy?n Vi?t', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-01-02' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200206', N'V? Ho�ng', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-24' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200211', N'Ph?m Kh?c', N'Chi?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-31' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200212', N'??ng Th?', N'Hoa', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-22' AS Date), N'C8, c?u thang 3, khu TT Kim Li�n, ??ng ?a, H� N?i', N'0386204932', N'DangThiHoa@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200217', N'Nguy?n Huy', N'Ho�ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-26' AS Date), N'Ch? 3D X� Ti?n Th?nh Huy?n M� Linh Th�nh Ph? H� N?i', N'0969341115', N'NguyenHuyHoang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200226', N'?�o Th?', N'Di?m', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-01-31' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200229', N'Ho�ng Anh', N'D?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-04-18' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200234', N'Nguy?n C�ng Tu?n', N'D?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-09-01' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200235', N'?inh Nguy?n T�ng', N'Duy', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-28' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200245', N'?? Th�nh', N'??t', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-20' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200248', N'Nguy?n V?n', N'Ho�ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-05-09' AS Date), N'S? 16 H�ng ??u, ph??ng ??ng Xu�n, qu?n Ho�n Ki?m, TP H� N?i', N'0928492950', N'NguyenVanHoang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200263', N'?? ??c', N'Huy', N'7.48.02.01', N'K61.CNTT2', CAST(N'2001-01-26' AS Date), N's? nh� 102 ???ng minh xu�n, th�n tr??ng an, x� an kh�nh, ho�i ??c, h� n?i', N'0919952816', N'DoDucHuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200265', N'Nguy?n ?�nh An', N'Huy', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-18' AS Date), N'S�? 15/175 ?i?nh c�ng - thi?nh li�?t- hoa?ng mai', N'0789036150', N'NguyenDonhAnHuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200266', N'Nguy?n Quang', N'Huy', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-02' AS Date), N'14A4 Khu t?p Th? Pin V?n ?i?n, Thanh Tr�, H� N?i', N'0707871103', N'NguyenQuangHuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200267', N'Nguy?n Quang', N'Huy', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-06-21' AS Date), N's? 5 ng�ch 99/141 ??nh C�ng Ho�ng Mai', N'0345764892', N'NguyenQuangHuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200281', N'Nguy?n Tu?n', N'H?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-05-11' AS Date), N'Th�i Kh� C?n H?u Qu?c Oai H� N?i', N'0936114598', N'NguyenTuanHung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200288', N'Tr?n ??c', N'H?u', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-31' AS Date), N'TDP 5 - V�n Gia - Trung H?ng - S?n T�y - H� N?i', N'0981356325', N'TranDucHuu@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200292', N'L� M?nh', N'Kh�nh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-05-11' AS Date), N' ??a ch? : s? nh� 12 ???ng ch�a T?ng Ph�c, Ph??ng ?�ng C??ng, Th�nh Ph? Thanh H�a', N'0989799065', N'LoManhKhonh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200295', N'V? Trung', N'Ki�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-10' AS Date), NULL, N'0912538138', N'VuTrungKion@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200302', N'Nguy?n ?�nh', N'L?c', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-05-05' AS Date), N'th�n 2 Do D?o x� Nh�n Th?nh huy?n L� Nh�n t?nh H� Nam', N'0857533287', N'NguyenDonhLoc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200316', N'Nguy?n Huy', N'Ngh?a', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-06-28' AS Date), N'th�ng ?�ng Th??ng Li?t - x� ?�ng T�n - ?�ng H?ng- Th�i B�nh', N'0795298940', N'NguyenHuyNghia@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200322', N'Nguy?n Xu�n', N'Ng?c', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-17' AS Date), N'19 ng� 74 An Tr?ch, C�t Linh, ??ng ?a, H� N?i', N'0325762795', N'NguyenXuonNgoc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200324', N'V? Th?', N'Nhung', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-17' AS Date), N'X�m ???ng B�ng-x� ?�ng T?o-huy?n Kho�i Ch�u-t?nh H?ng Y�n', N'0382090703', N'VuThiNhung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200341', N'Tr?n Quang', N'Ninh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-08' AS Date), N'SN 09 - Ng� 02 - ???ng 03 - th�n ??t T�i 2 - x� Ho?ng H� - huy?n Ho?ng H�a -  t?nh Thanh H�a', N'0379457583', N'TranQuangNinh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200342', N'Tr?n V?n', N'Ninh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-14' AS Date), N'A6 Chung c? An B�nh City ,Ph??ng C? Nhu? 1,Qu?n B?c T? Li�m ,H� N?i', N'0382672329', N'TranVanNinh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200346', N'H� Ho�ng', N'Oanh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-14' AS Date), NULL, N'0963025745', N'HaHoangOanh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200361', N'?�o M?nh', N'Quang', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-05' AS Date), N'S? 3/26, ng� 78, t? 6 Ng?c Th?y, Long Bi�n, H� N?i', N'0889762488', N'DaoManhQuang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200382', N'Nguy?n Ho�ng', N'Qu�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-23' AS Date), N'C?u c?,  x�m 14, x� Xu�n Ki�n, huy?n Xu�n Tr??ng, t?nh Nam ??nh', N'0383307634', N'NguyenHoangQuon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200385', N'Nguy?n Ng?c', N'Qu�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-06' AS Date), N' s? 9 ph� l�m h� ?�ng h� n?i', N'0383645108', N'NguyenNgocQuon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200392', N'V??ng Anh', N'Qu�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-22' AS Date), N'S? 132 t? 2 ph??ng Giang Bi�n Qu?n Long Bi�n H� N?i', N'0941895386', N'VuongAnhQuon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200399', N'Tr?n B?o', N'Qu?c', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-05' AS Date), N'19 ng� 74 An Tr?ch, C�t Linh, ??ng ?a, H� N?i', N'0325762795', N'TranBaoQuoc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200412', N'?�o ??c', N'S?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-01-31' AS Date), N'C8, c?u thang 3, khu TT Kim Li�n, ??ng ?a, H� N?i', N'0912307158', N'DaoDucSon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201200422', N'Ng� ??c', N'T�i', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-30' AS Date), N' s? 16 H�ng ??u, ph??ng ??ng Xu�n, qu?n Ho�n Ki?m, TP H� N?i', N'', N'NguDucTai@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201205542', N'Nguy?n Ho�ng', N'Lan', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-07-05' AS Date), N'SN 263 - t? 7 - P. T�n Thanh - TP. ?i?n Bi�n Ph? - t?nh ?i?n Bi�n ', N'0888457996', N'NguyenHoangLan@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201206522', N'Nguy?n Ng?c', N'Hi?p', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-05' AS Date), N'10/82 ng� Trung T?, Ph??ng Th? Quan, ??ng ?a, H� N?i ', N'0966421283', N'NguyenNgocHiep@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201206931', N'Ph�ng Th?o', N'Trang', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-07-20' AS Date), NULL, N'0945887961', N'PhungThaoTrang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201207282', N'Nguy?n V?n', N'V?', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-17' AS Date), NULL, N'0913098071', N'NguyenVanVu@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201207326', N'Tr?n Minh', N'Quang', N'7.48.02.01', N'K61.CNTT2', CAST(N'2000-01-16' AS Date), N'??i 8 - Tranh Xuy�n - ??ng T�m - Ninh Giang - H?i D??ng ', N'0364518268', N'TranMinhQuang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210114', N'Tr?n Lan', N'Anh', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-09-06' AS Date), N'??i 8- Tranh Xuy�n- ??ng T�m- Ninh Giang- H?i D??ng ', N'0364518268', N'TranLanAnh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210159', N'Nguy?n Qu?c', N'D?ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-24' AS Date), N'Th�n N�ng L?c, X� H?ng V?, huy?n B?c S?n, t?nh L?ng S?n', N'0915649920', N'NguyenQuocDung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210176', N'V? Ph?m Anh', N'??c', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-08' AS Date), N'62-???ng T�n An-ph? T�n An-ph??ng T�n Th�nh-TP Ninh B�nh', N'0919933413', N'VuPhamAnhDuc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210225', N'L?i V?n', N'C??ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-02-11' AS Date), N'NULL', N'NULL', N'NULL')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210256', N'Chu Xu�n', N'H�ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-11' AS Date), NULL, N'0397189950', N'ChuXuonHung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210294', N'Ng� Trung', N'Ki�n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-08-15' AS Date), N'X�m 4, th�n Ngo?i Ho�ng, x� L?u Ho�ng, huy?n ?ng Ho�, th�nh ph? H� N?i ', N'0961196480', N'NguTrungKion@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210305', N'T? Quang', N'L?i', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-21' AS Date), N'X�m 2 - Xu�n Ch�u - Xu�n Tr??ng - Nam ??nh', N'0375139334', N'TaQuangLoi@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210356', N'L� Th?', N'Ph??ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-10-08' AS Date), N'Trung Ch�nh-H?i Ho�-Nghi S?n-Thanh Ho�', N'0912538138', N'LoThiPhuong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201210407', N'Nguy?n Minh', N'Qu�', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-12-04' AS Date), N'10/82 ng� Trung T?, Ph??ng Th? Quan, ??ng ?a, H� N?i ', N'0983890905', N'NguyenMinhQuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201216824', N'Nguy?n Tu?n', N'D??ng', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-11-04' AS Date), N'Th�n 1 ,v�n tr�nh , th??ng ho� , nho quan , ninh b�nh', N'0862357149', N'NguyenTuanDuong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'201240414', N'Tr?n H?ng', N'S?n', N'7.48.02.01', N'K61.CNTT2', CAST(N'2002-03-29' AS Date), NULL, N'', N'TranHongSon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212600556', N'Ph?m Huy', N'Ho�ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-07-09' AS Date), N's? 10-ng� 11- ???ng th�n 7-Y�n S?-Ho�i ??c-H� N?i', N'0969561907', N'PhamHuyHoang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212601105', N'L� B�i Tr??ng', N'Giang', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-14' AS Date), N'Th�n Hi?u Thi?n - X� V? H?i - Huy?n V? Th? - T?nh Th�i B�nh', N'0328709355', N'LoBuiTruongGiang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212602500', N'Tr?n ??c', N'Ho�ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-11-13' AS Date), N'S? nh� 15, Ti?u khu 5, th? tr?n �t Ong, M??ng La, S?n La', N'0837361877', N'TranDucHoang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212602565', N'Chu Th? Thu', N'H�', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-08-10' AS Date), N'Ng�ch 29/33 t? 15 H?ng Ph�c, ph??ng Y�n S?, qu?n Ho�ng Mai, H� N?i.', N'0386839489', N'ChuThiThuHa@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212602719', N'?�o Quang', N'T�ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-02-07' AS Date), N'A2712, KNOCC Viglacera TLNO1, T�a, C?u Gi?y, H� N?i', N'0904106878', N'DaoQuangTung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212602930', N'L� Tr�', N'My', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-11-03' AS Date), N'Th�n An ?p, x� An ?p, huy?n Qu?nh Ph?, t?nh Th�i B�nh', N'0975670766', N'LoTraMy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212603983', N'Tr?n H�', N'Vinh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-23' AS Date), N'X�m Tr� m�t, x� Ngh?a Kh�nh, huy?n Ngh?a ?�n, t?nh Ngh? An', N'0327054171', N'TranHaVinh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212604007', N'L� V?n', N'H?i', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-12-22' AS Date), N' ??ng Ti?n - H� Ti?n - H� Trung - Thanh Ho�', N'0983634115', N'LoVanHai@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212606012', N'V? Quang', N'Vinh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-19' AS Date), N'S? 77, ???ng H�n Th??ng, ph??ng B�nh H�n, Th�nh ph? H?i D??ng, t?nh H?i D??ng', N'0585866191', N'VuQuangVinh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212606014', N'Ng� Vi?t', N'D?ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-09-14' AS Date), N'Th�n Ba- x� T�n M?- TP B?c Giang- B?c Giang', N'0962766786', N'NguVietDung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212606016', N'B�i ?o�n Quang', N'H?ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-01-21' AS Date), N'Nh� s? 8 - ng� 3 - x�m l� - th�n thanh th?n - x� thanh cao-huy?n thanh oai- h� n?i', N'0983980202', N'BuiDoanQuangHung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212606018', N'N�ng ??c', N'M?nh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-04' AS Date), N'X�m 11 . X� H?i V�n Huy?n H?i H?u T?nh Nam ??nh', N'0342673803', N'NungDucManh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212610094', N'?inh Th�y', N'Qu?nh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-11-07' AS Date), N'x�m L�m Hoan - x� Giao Phong - huy?n Giao Thu? - t?nh Nam ??nh', N'0921426339', N'DinhThyyQuynh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212610442', N'Nguy?n M?nh', N'H�ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-11-07' AS Date), N' S? 4 , Ng�ch 4 , Ng� 8 , ???ng L� Tr?ng T?n , Ph??ng La Kh� , H� ?�ng , H� N?i', N'0388369089', N'NguyenManhHung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212610443', N'V?', N'Kh�nh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-05-06' AS Date), N'38,ng� 2,t? 1,Tr?ng Nh?, Ph�c Y�n, V?nh Ph�c', N'0989357950', N'VuKhonh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212610781', N'Ho�ng ?�nh', N'T�ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-20' AS Date), N'th�n An Khang, x� Y�n Th?ch, S�ng L�, V?nh Ph�c', N'0983689634', N'HoangDonhTung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212611377', N'V? Tu?n', N'??t', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-04-12' AS Date), N'Th�n Chi�m- Li�n Hi?p- H?ng H� - Th�i B�nh ', N'0981791325', N'VuTuanDat@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212612471', N'??ng H�', N'Duy', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-01-16' AS Date), N'Kim 3- x� Ph??ng S?n- huy?n L?c Ng?n- t?nh B?c Giang', N'0395238535', N'DongHaDuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212612929', N'Ng� Th? H??ng', N'Giang', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-05-04' AS Date), N'X� Ph� L??ng huy?n ?�ng H?ng t?nh Th�i B�nh ', N'0332196131', N'NguThiHuongGiang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212613775', N'Nguy?n S?n', N'Anh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-09-23' AS Date), N'L?ng K�nh-??c Giang-Ho�i ??c-H� N?i', N'0978871942', N'NguyenSonAnh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212616010', N'L� Xu�n', N'Ph�c', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-09-06' AS Date), N'Th�n2 ?inh x� ph? l� H� Nam', N'0387005637', N'LoXuonPhyc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212630022', N'Chu H?i', N'Phong', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-11-28' AS Date), N'Nh� s? 8 -ng� 3-x�m l�- thanh th?n-thanh cao- thanh oai - h� n?i', N'0382060143', N'ChuHaiPhong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212630095', N'Tr?nh Quang', N'D??ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-28' AS Date), N'X�m 2- th�n C? Tr�- x� Ng? H�ng - huy?n Thanh Mi?n- t?nh H?i D??ng', N'0975179251', N'TrinhQuangDuong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212630184', N'Ph?m Thanh', N'H?ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-08-19' AS Date), N'Nh� s? 7, ng�ch 197/12, TDP Trung 5, ph??ng T�y T?u, qu?n B?c T? Li�m, H� N?i', N'0866438580', N'PhamThanhDuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212630895', N'Nguy?n Trung', N'Ki�n', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-01-29' AS Date), N'S? nh� 34 ng�ch 25 ng� 1009 tdp gi�p ti�u ph??ng d?nh k? th�nh ph? b?c giang', N'0976937260', N'NguyenTrungKion@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212630972', N'Nguy?n ??c', N'Ph�c', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-12-06' AS Date), N'X�m ?�ng - x� ??ng Du - huy?n B�nh L?c - t?nh H� Nam', N'0388440736', N'NguyenDacPhyc@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212631446', N'Tr?nh ??c', N'L??ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-01-12' AS Date), N'??a ch? :Minh Loan- x�m Tr�n- C?nh L�m- T�n vi?t- Y�n m?- H?ng Y�n', N'0988455749', N'TrinhDucLuong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212632702', N'Nguy?n Th? Ninh', N'Giang', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-11-02' AS Date), N'Khu 12, x� V?nh L?i, huy?n L�m Thao, t?nh Ph� Th?', N'0398878408', N'NguyenThiNinhGiang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212633564', N'?? ??c', N'Th?nh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-08-11' AS Date), N'Th�n th�nh c�ng - X� Nhu? D??ng -Huy?n Kho�i Ch�u - T?nh H?ng Y�n', N'0353658184', N'DoDucThinh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212633819', N'Tr?n Th? Anh', N'D?ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-05' AS Date), N'Tam � gia ?�ng thu�nu th�nh b?c ninh', N'0385638359', N'TranTheAnhDung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212633820', N'Nguy?n Tr?ng', N'H?ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-07-18' AS Date), N'T? 13 c?m 4 ph??ng ?�ng kh�- ng� quy?n - h?i ph�ng ', N'0834860039', N'NguyenTrongHung@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212633938', N'Nghi�m Qu?c', N'Huy', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-02-09' AS Date), N'Th�n V?n M?, x� Ho�ng V?n Th?, huy?n Ch??ng M?, TP.H� N?i', N'0986177528', N'NghiomQuocHuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212634149', N'Tr?n V?n', N'Nh�n', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-02-27' AS Date), N'Ba h�ng , th? s? ,ti�n l? ,h?ng y�n', N'0973399912', N'TranVanNhon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212640397', N'Ki?u Ki�n', N'Quy?t', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-19' AS Date), N'107- c?m6 - T�n H?i - ?an ph??ng - H� N?i', N'0334841068', N'KieuKionQuyet@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212642248', N'Nguy?n Th? H?ng', N'Giang', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-06-02' AS Date), N's? nh� 17 t? 23 khu ?� th? Tr?n L�m th�nh ph? Th�i B�nh', N'0333041194', N'NguyenThiHongGiang@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'212643488', N'L� Xu�n', N'Tr??ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-07-17' AS Date), N'Th�n ?�ng Duy - Y�n Quang - � Y�n - Nam ??nh', N'0346256817', N'LyXuonTruong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'882126003', N'Nguy?n Ph� Thi?n', N'Nh�n', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-09-15' AS Date), N'??i 2 - v?nh kh�c - v?n giang - hunge y�n', N'0961356098', N'NguyenPhyThienNhon@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'882126009', N'L� ??t', N'Qu�', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2002-12-24' AS Date), N'Khu 5 ?? xuy�n thanh ba ph� th?', N'0836513357', N'LoDatQuy@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'882126013', N'V? Ph�c', N'Th�nh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-04-07' AS Date), N's? nh� 89 - th�n 3 - x� Y�n S? - huy?n Ho�i ??c - th�nh ph? H� N?i', N'0384926612', N'VuPhycThanh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'882126017', N'Nguy?n Th? V�n', N'Anh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-10-07' AS Date), N'Nh� s? 6 t? 18 khu 3 C?a �ng C?m Ph? Qu?ng Ninh', N'0362817808', N'NguyenThiVonAnh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'882126030', N'N�ng B?o', N'Khanh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-06-19' AS Date), N'S? nh� 301- T? 10- Khu Nhu? H?- Ph??ng Kim S?n- Th? x� ?�ng Tri?u- T?nh Qu?ng Ninh', N'0962411665', N'NungBaoKhanh@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'882126033', N'Tr?n Nguy?n Nam', N'Long', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2003-08-23' AS Date), N'Kh�n Th�n - Minh C??ng - Th??ng T�n - H� N?i', N'0359726417', N'TranNguyenNamLong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'991790002', N'Tr?n Khoa', N'Tr??ng', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2001-11-17' AS Date), NULL, N'0386', N'TranKhoaTruong@utc.edu.vn')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoDem], [Ten], [MaCTDT], [MaLop], [NgaySinh], [DiaChi], [DienThoai], [Email]) VALUES (N'991790005', N'Nguy?n ??c', N'Anh', N'7.48.02.01QT(IE3)', N'K62.CNTTVA2', CAST(N'2001-11-17' AS Date), NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_Khoa]
GO
ALTER TABLE [dbo].[ChuongTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_ChuongTrinhDaoTao_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[ChuongTrinhDaoTao] CHECK CONSTRAINT [FK_ChuongTrinhDaoTao_Khoa]
GO
ALTER TABLE [dbo].[CTDT_HocPhan]  WITH CHECK ADD  CONSTRAINT [FK_CTDT_HocPhan_ChuongTrinhDaoTao] FOREIGN KEY([MaCTDT])
REFERENCES [dbo].[ChuongTrinhDaoTao] ([MaCTDT])
GO
ALTER TABLE [dbo].[CTDT_HocPhan] CHECK CONSTRAINT [FK_CTDT_HocPhan_ChuongTrinhDaoTao]
GO
ALTER TABLE [dbo].[CTDT_HocPhan]  WITH CHECK ADD  CONSTRAINT [FK_CTDT_HocPhan_HocPhan] FOREIGN KEY([MaHocPhan])
REFERENCES [dbo].[HocPhan] ([MaHocPhan])
GO
ALTER TABLE [dbo].[CTDT_HocPhan] CHECK CONSTRAINT [FK_CTDT_HocPhan_HocPhan]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_BoMon] FOREIGN KEY([MaBoMon])
REFERENCES [dbo].[BoMon] ([MaBoMon])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_BoMon]
GO
ALTER TABLE [dbo].[HocPhan]  WITH CHECK ADD  CONSTRAINT [FK_HocPhan_BoMon] FOREIGN KEY([MaBoMon])
REFERENCES [dbo].[BoMon] ([MaBoMon])
GO
ALTER TABLE [dbo].[HocPhan] CHECK CONSTRAINT [FK_HocPhan_BoMon]
GO
ALTER TABLE [dbo].[HocPhanTienQuyet]  WITH CHECK ADD  CONSTRAINT [FK_HocPhanTienQuyet_HocPhan] FOREIGN KEY([MaHocPhan])
REFERENCES [dbo].[HocPhan] ([MaHocPhan])
GO
ALTER TABLE [dbo].[HocPhanTienQuyet] CHECK CONSTRAINT [FK_HocPhanTienQuyet_HocPhan]
GO
ALTER TABLE [dbo].[HocPhanTienQuyet]  WITH CHECK ADD  CONSTRAINT [FK_HocPhanTienQuyet_HocPhan1] FOREIGN KEY([MaHocPhanTienQuyet])
REFERENCES [dbo].[HocPhan] ([MaHocPhan])
GO
ALTER TABLE [dbo].[HocPhanTienQuyet] CHECK CONSTRAINT [FK_HocPhanTienQuyet_HocPhan1]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Khoa]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_GiangVien] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GiangVien] ([MaGiangVien])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_GiangVien]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_HocPhan] FOREIGN KEY([MaHocPhan])
REFERENCES [dbo].[HocPhan] ([MaHocPhan])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_HocPhan]
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_SinhVien_LopHocPhan] FOREIGN KEY([MaHocPhan], [MaLopHocPhan])
REFERENCES [dbo].[LopHocPhan] ([MaHocPhan], [MaLopHocPhan])
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien] CHECK CONSTRAINT [FK_LopHocPhan_SinhVien_LopHocPhan]
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_SinhVien_SinhVien] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SinhVien] ([MaSinhVien])
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien] CHECK CONSTRAINT [FK_LopHocPhan_SinhVien_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_ChuongTrinhDaoTao] FOREIGN KEY([MaCTDT])
REFERENCES [dbo].[ChuongTrinhDaoTao] ([MaCTDT])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_ChuongTrinhDaoTao]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
