-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2022 lúc 02:42 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(28, '4095', 8, 2),
(29, '4095', 7, 1),
(34, '4469', 12, 1),
(35, '4469', 13, 1),
(36, '6875', 12, 1),
(37, '6875', 13, 1),
(38, '3524', 12, 1),
(39, '3524', 13, 1),
(40, '4922', 13, 1),
(41, '2007', 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `hovaten` varchar(250) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` text NOT NULL,
  `chucvu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `hovaten`, `taikhoan`, `matkhau`, `sodienthoai`, `email`, `diachi`, `chucvu`) VALUES
(4, 'Trần Phạm Tân Tri', 'trilx3', '25f9e794323b453885f5181f1b624d0b', 912859367, 'trilx333@gmail.com', 'an giang', 0),
(5, 'Trần Vũ Luân', 'luan', '25f9e794323b453885f5181f1b624d0b', 12345, '@gmail.com', 'LX', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(4, 'SÁCH THAM KHẢO', 4),
(5, 'SÁCH HỌC NGOẠI NGỮ', 1),
(6, 'TIỂU THUYẾT', 2),
(7, 'VĂN HỌC', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(11) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_payment`) VALUES
(36, 3, '', 0, 'tienmat'),
(37, 3, '', 0, 'Chuyển Khoảng'),
(38, 4, '', 0, 'Tiền Mặt'),
(39, 4, '', 0, 'Tiền Mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `masanpham` varchar(100) NOT NULL,
  `giasanpham` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `id_danhmuc`, `trangthai`) VALUES
(5, 'Bồi Dưỡng Học Sinh Giỏi Toán Đại Số - Giải Tích 12 - Tập 2', 'TK4', 50000, 20, 'thamkhao4.jpg', '', '', 4, 1),
(6, 'Sổ Tay Học Nhanh Toàn Diện Kiến Thức Và Dạng Bài Hóa Học Lớp 10 - 11 - 12', 'TK3', 100000, 25, 'thamkhao3.jpg', '', '', 4, 1),
(7, 'Giải Thích Ngữ Pháp Tiếng Anh (Tái Bản 2022)', 'NN2', 108000, 8, 'ngoaingu2.jpg', '', '', 5, 1),
(8, 'Chàng Thẩm Định Viên Và Nữ Tác Giả Tập Sự', 'TT7', 79000, 33, 'tieuthuyet7.jpg', '', '', 6, 1),
(10, 'Nghịch Lý Của Tình Yêu Và Số Phận - Xuân Quỳnh', 'VH3', 70000, 23, 'vanhoc3.jpg', '', '', 7, 0),
(11, 'Gọi Tên Kẻ Chết', 'VH2', 102000, 14, 'vanhoc2.jpg', '', '', 7, 1),
(12, 'Cứ Khóc, Cứ Tan Vỡ Và Trưởng Thành', 'VH1', 62000, 15, 'vanhoc1.jpg', '', '', 7, 1),
(13, 'Thám Tử Lừng Danh Conan - Tiểu Thuyết - Cầu Thủ Ghi Bàn Số 11', 'TT6', 50000, 20, 'tieuthuyet6.jpg', '', '', 6, 0),
(14, 'Tài Liệu Dạy Và Học Vật Lý 9 - Tập 2 (2022)', 'TK2', 50000, 20, 'thamkhao2.jpg', '', '', 4, 1),
(15, '30 Chủ Đề Từ Vựng Tiếng Anh (Tập 1)', 'NN1', 120000, 12, 'ngoaingu1.jpg', '', '', 5, 1),
(16, 'Tiểu Thuyết One Piece Film RED - Tặng Kèm Bìa Áo Và Poster Gập Sẵn Bên Trong', 'TT5', 65000, 34, 'tieuthuyet5.jpg', '', '', 6, 0),
(17, 'Thám Tử Lừng Danh Conan - Tiểu Thuyết - Hoa Hướng Dương Trong Biển Lửa', 'TT4', 42000, 30, 'tieuthuyet4.jpg', '', '', 6, 1),
(18, 'Thám Tử Lừng Danh Conan - Tiểu Thuyết - 15 Phút Trầm Mặc', 'TT3', 50000, 30, 'tieuthuyet3.jpg', '', '', 6, 1),
(19, 'Spy X Family Tiểu Thuyết: Bức Chân Dung Gia Đình - Tặng Kèm Standee PVC', 'TT2', 36000, 55, 'tieuthuyet2.jpg', '', '', 6, 1),
(20, 'Tiểu Thuyết Thanh Gươm Diệt Quỷ - Bản Điện Ảnh: Chuyến Tàu Vô Tận - Tặng Kèm Bookmark PVC Reigen', 'TT1', 40000, 40, 'tieuthuyet1.jpg', '', '', 6, 1),
(21, 'Sổ Tay Học Nhanh Toàn Diện Kiến Thức Và Dạng Bài Hóa Học Lớp 8-9', 'TK1', 40800, 10, 'thamkhao1.jpg', '\r\n', '', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `adress`, `note`, `id_dangky`) VALUES
(3, 'Trần Phạm Tân Tri', '', '', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
