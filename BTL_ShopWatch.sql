USE [BTL_WebApp7]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [varchar](20) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[MaKhachHang] [varchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK_DonHang_1] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC,
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaSanPham] [varchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](20) NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](12) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](20) NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[MaChucVu] [varchar](20) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](20) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaThuongHieu] [varchar](20) NOT NULL,
	[TomTat] [nvarchar](100) NOT NULL,
	[Anh] [text] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[SoLuongTonKho] [int] NOT NULL,
	[GiaNhap] [money] NOT NULL,
	[GiaDeXuat] [money] NOT NULL,
	[GiaBan] [money] NOT NULL,
	[BaoHiem] [nvarchar](50) NOT NULL,
	[BaoHanh] [nvarchar](50) NOT NULL,
	[ThamDinhThatGia] [nvarchar](50) NOT NULL,
	[GiaoHang] [nvarchar](50) NOT NULL,
	[ThuongHieu] [nvarchar](50) NOT NULL,
	[XuatXu] [nvarchar](50) NOT NULL,
	[DHDanhCho] [nvarchar](50) NOT NULL,
	[KieuMay] [nvarchar](50) NOT NULL,
	[KichCo] [nvarchar](50) NOT NULL,
	[ChatLieuVo] [nvarchar](50) NOT NULL,
	[ChatLieuDay] [nvarchar](50) NOT NULL,
	[ChatLieuKinh] [nvarchar](50) NOT NULL,
	[ChucNang] [nvarchar](50) NOT NULL,
	[DoChiuNuoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 17/08/2021 2:50:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [varchar](20) NOT NULL,
	[TenThuongHieu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV01', N'Giám đốc')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV02', N'Nhân viên')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaSanPham], [MaKhachHang], [SoLuong], [ThoiGian], [TinhTrang]) VALUES (N'DH01', N'SP01', N'KH01', 1, CAST(N'2021-01-01' AS Date), 0)
INSERT [dbo].[DonHang] ([MaDonHang], [MaSanPham], [MaKhachHang], [SoLuong], [ThoiGian], [TinhTrang]) VALUES (N'DH01', N'SP02', N'KH01', 1, CAST(N'2021-01-01' AS Date), 0)
INSERT [dbo].[DonHang] ([MaDonHang], [MaSanPham], [MaKhachHang], [SoLuong], [ThoiGian], [TinhTrang]) VALUES (N'DH02', N'SP01', N'KH01', 1, CAST(N'2021-03-03' AS Date), 1)
GO
INSERT [dbo].[GioHang] ([MaSanPham], [SoLuong]) VALUES (N'SP01', 1)
INSERT [dbo].[GioHang] ([MaSanPham], [SoLuong]) VALUES (N'SP02', 1)
INSERT [dbo].[GioHang] ([MaSanPham], [SoLuong]) VALUES (N'SP03', 1)
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenDangNhap], [MatKhau], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH01', N'sonphan', N'123@abc', N'Phan Đắc Sơn', N'Hải Dương', N'0123456789', N'abc@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenDangNhap], [MatKhau], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH02', N'thanhnguyen', N'123@abc', N'Nguyễn Tuấn Thành', N'Hải Dương', N'0000000', N'abc@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenDangNhap], [MatKhau], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH04', N'quanghh', N'fc76c4a86c56becc717a88f651264622', N'Hồ Hữu Quang', N'Nghệ An', N'1234567890', N'123@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenDangNhap], [MatKhau], [TenNhanVien], [MaChucVu]) VALUES (N'NV01', N'thangpham', N'123@abc', N'Phạm Văn Thắng', N'CV01')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenDangNhap], [MatKhau], [TenNhanVien], [MaChucVu]) VALUES (N'NV02', N'quypham', N'123@abc', N'Phạm Thanh Quý', N'CV02')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaThuongHieu], [TomTat], [Anh], [SoLuongNhap], [SoLuongTonKho], [GiaNhap], [GiaDeXuat], [GiaBan], [BaoHiem], [BaoHanh], [ThamDinhThatGia], [GiaoHang], [ThuongHieu], [XuatXu], [DHDanhCho], [KieuMay], [KichCo], [ChatLieuVo], [ChatLieuDay], [ChatLieuKinh], [ChucNang], [DoChiuNuoc]) VALUES (N'SP01', N'Seiko SNK809K2', N'TH01', N'Không có gì', N'A01', 1000, 800, 3000000.0000, 3200000.0000, 3100000.0000, N'Phát hiện Fake đền gấp 10 lần', N'1 năm miễn phí - 5 năm hậu mãi', N'Miễn phí', N'Miễn phí toàn quốc', N'Seiko', N'Nhật Bản', N'Nam', N'Automantic', N'37mm', N'Thép không gỉ 316L', N'Dây vải', N'Hardlex Crystal', N'24h, lịch ngày, thứ', N'30M')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaThuongHieu], [TomTat], [Anh], [SoLuongNhap], [SoLuongTonKho], [GiaNhap], [GiaDeXuat], [GiaBan], [BaoHiem], [BaoHanh], [ThamDinhThatGia], [GiaoHang], [ThuongHieu], [XuatXu], [DHDanhCho], [KieuMay], [KichCo], [ChatLieuVo], [ChatLieuDay], [ChatLieuKinh], [ChucNang], [DoChiuNuoc]) VALUES (N'SP02', N'Seiko SNXS80', N'TH01', N'Không có gì', N'A01', 1000, 800, 3000000.0000, 3200000.0000, 3100000.0000, N'Phát hiện Fake đền gấp 10 lần', N'1 năm miễn phí - 5 năm hậu mãi', N'Miễn phí', N'Miễn phí toàn quốc', N'Seiko', N'Nhật Bản', N'Nam', N'Automantic', N'37mm', N'Thép không gỉ 316L', N'Dây vải', N'Hardlex Crystal', N'24h, lịch ngày, thứ', N'30M')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaThuongHieu], [TomTat], [Anh], [SoLuongNhap], [SoLuongTonKho], [GiaNhap], [GiaDeXuat], [GiaBan], [BaoHiem], [BaoHanh], [ThamDinhThatGia], [GiaoHang], [ThuongHieu], [XuatXu], [DHDanhCho], [KieuMay], [KichCo], [ChatLieuVo], [ChatLieuDay], [ChatLieuKinh], [ChucNang], [DoChiuNuoc]) VALUES (N'SP03', N'Alo123', N'TH01', N'Không có gì', N'A01', 15, 5, 3000000.0000, 3200000.0000, 3100000.0000, N'Phát hiện Fake đền gấp 10 lần', N'1 năm miễn phí - 5 năm hậu mãi', N'Miễn phí', N'Miễn phí toàn quốc', N'Seiko', N'Nhật Bản', N'Nam', N'Automantic', N'37mm', N'Thép không gỉ 316L', N'Dây vải', N'Hardlex Crystal', N'24h, lịch ngày, thứ', N'30M')
GO
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH01', N'SEIKO')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH02', N'ORIENT')
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
