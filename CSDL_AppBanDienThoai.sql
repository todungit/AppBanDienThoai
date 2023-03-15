-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 09:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `loai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'ip 14 Pro 2022', '46600000', 'https://cdn1.viettelstore.vn/Images/Product/ProductImage/1739838412.jpeg', '\"Bộ xử lý: Intel Core i5 dual-core 3.1GHz, Turbo Boost up to 3.5GHz, with 64MB of eDRAM\r\nRAM: 8GB 2133MHz LPDDR3 memory\r\nỔ cứng SSD: 512GB\r\nCard đồ hoạ: Intel Iris Plus Graphics 650\"', 2),
(2, 'Điện thoại iPhone 13 Pro', '33990000', 'https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-sierra-blue-600x600.jpg', '\"Kích thước màn hình 6.1 inches\r\nCông nghệ màn hình OLED\r\nCamera sau Camera góc rộng: 12MP, f/1.6\r\nCamera góc siêu rộng: 12MP, ƒ/2.4\r\nCamera trước 12MP, f/2.2\r\nChipset Apple A15\r\nDung lượng RAM 4 GB\"', 1),
(3, 'Samsung Galaxy Note 20 Ultra 5G', '20500000', 'https://image.cellphones.com.vn/358x/media/catalog/product/y/e/yellow_final_2.jpg', '\"Kích thước màn hình 6.9 inches\r\nCông nghệ màn hình Dynamic AMOLED\r\nCamera sau 108 MP, f/1.8, 26mm (wide), 1/1.33\"\", 0.8µm, PDAF, Laser AF, OIS\r\n12 MP, f/3.0, 103mm (periscope telephoto), 1.0µm, PDAF, OIS, 5x optical zoom, 50x hybrid zoom\r\n12 MP, f/2.2, 13mm (ultrawide), 1/2.55\"\", 1.4µm\r\nCamera trước 10 MP, f/2.2, 26mm (wide), 1/3.2\"\", 1.22µm, Dual Pixel PDAF\r\nChipset Exynos 990 (7 nm+)\r\nDung lượng RAM 12 GB\"', 1),
(4, 'iPhone 13 Pro Max 128GB', '29350000', 'https://image.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_13-_pro-4_2.jpg', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.7\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Cụm 3 camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', 1),
(5, 'Xiaomi 11T', '9300000', 'https://image.cellphones.com.vn/358x/media/catalog/product/x/i/xiaomi-mi-11t-1_1.jpg', 'Màn hình giải trí cực đỉnh - Màn hình AMOLED 6.67 inch Full HD+, 120Hz\r\nCấu hình vượt trội, chuyện động mượt mà - Chip MediaTek Dimensity 1200-Ultra cùng RAM 8GB\r\nĐẳng cấp camera chuyện nghiệp - Cụm camera sau 108 MP, hỗ trợ lấy nét, chống rung\r\nPin cực lớn, sạc cực nhanh - Viên pin lớn 5000 mAh, sạc nhanh 67W', 1),
(6, 'Samsung Galaxy S21 FE 5G (6GB - 128GB)', '11690000', 'https://image.cellphones.com.vn/358x/media/catalog/product/s/m/sm-g990_s21fe_backfront_lv_7.png', 'Thiết kế cao cấp - Vẻ đẹp tinh tế cùng nhiều màu sắc thời thượng\r\nTrọn vẹn từng khung hình - Màn hình 6.4\"\", độ sáng cao cùng tần số quét 120Hz\r\nSắc nét từng khung hình - Bộ ba camera 12MP, hỗ trợ quay video 4K, chống rung điện từ EIS\r\nMượt mà mọi tác vụ - Chip Exynos 2100 tiến trình 5nm mạnh mẽ', 1),
(7, 'Tecno Spark 8C', '2990000', 'https://image.cellphones.com.vn/358x/media/catalog/product/d/o/download_2__3_9.png', 'Màn hình hiển thị sống động, sắc nét - Màn hình IPS LCD 6.6 inches kết hợp cùng tần số quét 90Hz\r\nXử lí ổn định mọi tác vụ - Trang bị chipset UNISOC T606 mạnh mẽ, RAM 4GB hỗ trợ RAM ảo 3GB\r\nCamera thông minh, nhiều tính năng ấn tượng - Camera sau chính 13MP, còn camera selfie 8MP\r\nDung lượng pin cực trâu, cho trải nghiệm cực đã - Viên pin 5.000 mAh, chế độ siêu tiết kiệm pin', 1),
(8, 'Xiaomi Redmi 9C', '3000000', 'https://image.cellphones.com.vn/358x/media/catalog/product/r/e/redmi-9c_1_.jpg', 'Màn hình lớn, giải trí đã hơn - Màn hình 6.53 inch, độ phân giải FullHD, chứng nhận bảo vệ mắt khỏi ánh sáng xanh\r\nThời lượng pin vượt trội, bền bỉ hơn - Dung lượng 5000mAh, tuổi thọ chu kỳ sạc lên đến 1000 lần\r\nGiải trí mượt mà và ổn định - Vi xử lý Helio G35 cung cấp hiệu suất vượt trội, tăng trải nghiệm chơi game mượt mà với công nghệ HyperEngine\r\nNhiếp ảnh độc đáo - Bộ 3 camera tích hợp AI mạnh mẽ', 1),
(9, 'dien thoai nokia', '1', '19.jpg', 'gia soc', 1),
(10, 'lap', '1', '71.jpg', '1', 2),
(11, 'smung1', '2', '72.jpg', '2', 1),
(12, 'Samsung A52', '6390000', '73.jpg', 'new', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sapham`
--

CREATE TABLE `sapham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sapham`
--

INSERT INTO `sapham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'https://icon-library.com/images/home-icon/home-icon-5.jpg'),
(2, 'Điện thoại', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4JwV4mi-_eNd94e8oC7pR35Y6yysqUFzFNvsjyi43cjFPDoGtJ3Vdg6qTYT2l5HmqOQA&usqp=CAU'),
(4, 'Thông tin', 'https://ngochieu.name.vn/img/info.png'),
(5, 'Liên hệ', 'https://ngochieu.name.vn/img/contact.png'),
(6, 'Lịch sử đơn hàng', 'data:image/png;base64,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');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapham`
--
ALTER TABLE `sapham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sapham`
--
ALTER TABLE `sapham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
