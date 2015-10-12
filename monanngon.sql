-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2015 at 09:03 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `monanngon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitiethocvien`
--

CREATE TABLE IF NOT EXISTS `tbl_chitiethocvien` (
`IdCTHV` int(5) NOT NULL,
  `IdHocVien` int(5) NOT NULL,
  `IdCTKH` int(5) NOT NULL,
  `TrangThai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietkhoahoc`
--

CREATE TABLE IF NOT EXISTS `tbl_chitietkhoahoc` (
`IdCTKH` int(5) NOT NULL,
  `IdKhoaHoc` int(5) NOT NULL,
  `IdKM` int(5) NOT NULL,
  `SoBuoi` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KhaiGiang` date NOT NULL,
  `GhiChu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` int(1) NOT NULL,
  `GiaNY` int(15) NOT NULL,
  `GiaKM` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
`IdComment` int(5) NOT NULL,
  `IdTinTuc` int(5) NOT NULL,
  `NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giaovien`
--

CREATE TABLE IF NOT EXISTS `tbl_giaovien` (
`IdGv` int(5) NOT NULL,
  `TenGv` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sdt` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiThieuGv` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hocvien`
--

CREATE TABLE IF NOT EXISTS `tbl_hocvien` (
`IdHocVien` int(5) NOT NULL,
  `IdCTKH` int(5) NOT NULL,
  `TenHocVien` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sdt` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoahoc`
--

CREATE TABLE IF NOT EXISTS `tbl_khoahoc` (
`IdKhoaHoc` int(5) NOT NULL,
  `TenKhoaHoc` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khuyenmai`
--

CREATE TABLE IF NOT EXISTS `tbl_khuyenmai` (
`IdKM` int(5) NOT NULL,
  `TenKM` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThoiGian` date NOT NULL,
  `TrangThai` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loaitintuc`
--

CREATE TABLE IF NOT EXISTS `tbl_loaitintuc` (
`IdLoaiTT` int(5) NOT NULL,
  `TenLoaiTT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhomquyen`
--

CREATE TABLE IF NOT EXISTS `tbl_nhomquyen` (
`IdNhomQuyen` int(5) NOT NULL,
  `TenNhomQuyen` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTaNhomQuyen` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quyen`
--

CREATE TABLE IF NOT EXISTS `tbl_quyen` (
`IdQuyen` int(5) NOT NULL,
  `IdCha` int(5) NOT NULL,
  `TenQuyen` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quyen_nhomquyen`
--

CREATE TABLE IF NOT EXISTS `tbl_quyen_nhomquyen` (
`IdQuyenNhomQuyen` int(5) NOT NULL,
  `IdNhomQuyen` int(5) NOT NULL,
  `IdQuyen` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taikhoan`
--

CREATE TABLE IF NOT EXISTS `tbl_taikhoan` (
`IdTk` int(5) NOT NULL,
  `IdNhomQuyen` int(5) NOT NULL,
  `TenTk` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tintuc`
--

CREATE TABLE IF NOT EXISTS `tbl_tintuc` (
`IdTinTuc` int(5) NOT NULL,
  `IdLoaiTT` int(5) NOT NULL,
  `IdTk` int(5) NOT NULL,
  `TieuDe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_chitiethocvien`
--
ALTER TABLE `tbl_chitiethocvien`
 ADD PRIMARY KEY (`IdCTHV`,`IdHocVien`,`IdCTKH`), ADD KEY `IdStudent` (`IdHocVien`), ADD KEY `IdCTKH` (`IdCTKH`);

--
-- Indexes for table `tbl_chitietkhoahoc`
--
ALTER TABLE `tbl_chitietkhoahoc`
 ADD PRIMARY KEY (`IdCTKH`,`IdKhoaHoc`,`IdKM`), ADD KEY `IdKhoaHoc` (`IdKhoaHoc`), ADD KEY `IdKM` (`IdKM`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
 ADD PRIMARY KEY (`IdComment`,`IdTinTuc`), ADD KEY `IdTinTuc` (`IdTinTuc`);

--
-- Indexes for table `tbl_giaovien`
--
ALTER TABLE `tbl_giaovien`
 ADD PRIMARY KEY (`IdGv`);

--
-- Indexes for table `tbl_hocvien`
--
ALTER TABLE `tbl_hocvien`
 ADD PRIMARY KEY (`IdHocVien`,`IdCTKH`), ADD KEY `IdCTKH` (`IdCTKH`);

--
-- Indexes for table `tbl_khoahoc`
--
ALTER TABLE `tbl_khoahoc`
 ADD PRIMARY KEY (`IdKhoaHoc`);

--
-- Indexes for table `tbl_khuyenmai`
--
ALTER TABLE `tbl_khuyenmai`
 ADD PRIMARY KEY (`IdKM`);

--
-- Indexes for table `tbl_loaitintuc`
--
ALTER TABLE `tbl_loaitintuc`
 ADD PRIMARY KEY (`IdLoaiTT`);

--
-- Indexes for table `tbl_nhomquyen`
--
ALTER TABLE `tbl_nhomquyen`
 ADD PRIMARY KEY (`IdNhomQuyen`);

--
-- Indexes for table `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
 ADD PRIMARY KEY (`IdQuyen`);

--
-- Indexes for table `tbl_quyen_nhomquyen`
--
ALTER TABLE `tbl_quyen_nhomquyen`
 ADD PRIMARY KEY (`IdQuyenNhomQuyen`,`IdNhomQuyen`,`IdQuyen`), ADD KEY `IdCategory` (`IdQuyen`), ADD KEY `IdAuthority` (`IdNhomQuyen`);

--
-- Indexes for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
 ADD PRIMARY KEY (`IdTk`,`IdNhomQuyen`), ADD KEY `IdNhomQuyen` (`IdNhomQuyen`);

--
-- Indexes for table `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
 ADD PRIMARY KEY (`IdTinTuc`,`IdLoaiTT`,`IdTk`), ADD KEY `IdMember` (`IdTk`), ADD KEY `IdLoaiTT` (`IdLoaiTT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_chitiethocvien`
--
ALTER TABLE `tbl_chitiethocvien`
MODIFY `IdCTHV` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_chitietkhoahoc`
--
ALTER TABLE `tbl_chitietkhoahoc`
MODIFY `IdCTKH` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
MODIFY `IdComment` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_giaovien`
--
ALTER TABLE `tbl_giaovien`
MODIFY `IdGv` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_hocvien`
--
ALTER TABLE `tbl_hocvien`
MODIFY `IdHocVien` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_khoahoc`
--
ALTER TABLE `tbl_khoahoc`
MODIFY `IdKhoaHoc` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_khuyenmai`
--
ALTER TABLE `tbl_khuyenmai`
MODIFY `IdKM` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_loaitintuc`
--
ALTER TABLE `tbl_loaitintuc`
MODIFY `IdLoaiTT` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nhomquyen`
--
ALTER TABLE `tbl_nhomquyen`
MODIFY `IdNhomQuyen` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
MODIFY `IdQuyen` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_quyen_nhomquyen`
--
ALTER TABLE `tbl_quyen_nhomquyen`
MODIFY `IdQuyenNhomQuyen` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
MODIFY `IdTk` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
MODIFY `IdTinTuc` int(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_chitiethocvien`
--
ALTER TABLE `tbl_chitiethocvien`
ADD CONSTRAINT `tbl_chitiethocvien_ibfk_1` FOREIGN KEY (`IdCTKH`) REFERENCES `tbl_chitietkhoahoc` (`IdCTKH`);

--
-- Constraints for table `tbl_chitietkhoahoc`
--
ALTER TABLE `tbl_chitietkhoahoc`
ADD CONSTRAINT `tbl_chitietkhoahoc_ibfk_1` FOREIGN KEY (`IdKhoaHoc`) REFERENCES `tbl_khoahoc` (`IdKhoaHoc`),
ADD CONSTRAINT `tbl_chitietkhoahoc_ibfk_2` FOREIGN KEY (`IdKM`) REFERENCES `tbl_khuyenmai` (`IdKM`);

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
ADD CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`IdTinTuc`) REFERENCES `tbl_tintuc` (`IdTinTuc`);

--
-- Constraints for table `tbl_hocvien`
--
ALTER TABLE `tbl_hocvien`
ADD CONSTRAINT `tbl_hocvien_ibfk_1` FOREIGN KEY (`IdCTKH`) REFERENCES `tbl_chitietkhoahoc` (`IdCTKH`),
ADD CONSTRAINT `tbl_hocvien_ibfk_2` FOREIGN KEY (`IdHocVien`) REFERENCES `tbl_chitiethocvien` (`IdHocVien`);

--
-- Constraints for table `tbl_nhomquyen`
--
ALTER TABLE `tbl_nhomquyen`
ADD CONSTRAINT `tbl_nhomquyen_ibfk_1` FOREIGN KEY (`IdNhomQuyen`) REFERENCES `tbl_quyen_nhomquyen` (`IdNhomQuyen`);

--
-- Constraints for table `tbl_quyen_nhomquyen`
--
ALTER TABLE `tbl_quyen_nhomquyen`
ADD CONSTRAINT `tbl_quyen_nhomquyen_ibfk_1` FOREIGN KEY (`IdQuyen`) REFERENCES `tbl_quyen` (`IdQuyen`);

--
-- Constraints for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
ADD CONSTRAINT `tbl_taikhoan_ibfk_1` FOREIGN KEY (`IdNhomQuyen`) REFERENCES `tbl_nhomquyen` (`IdNhomQuyen`);

--
-- Constraints for table `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
ADD CONSTRAINT `tbl_tintuc_ibfk_1` FOREIGN KEY (`IdLoaiTT`) REFERENCES `tbl_loaitintuc` (`IdLoaiTT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
