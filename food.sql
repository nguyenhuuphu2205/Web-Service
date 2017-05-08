-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2017 lúc 06:11 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DanhGia` int(11) NOT NULL,
  `id_User` int(10) UNSIGNED NOT NULL,
  `id_MonAn` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `NoiDung`, `DanhGia`, `id_User`, `id_MonAn`, `created_at`, `updated_at`) VALUES
(1, 'hãy bày tỏ cảm xúc\r\n', 0, 1, 25, '2017-05-01 14:35:10', '2017-05-01 14:35:10'),
(3, 'Thực sự chứ món này chả khác nào Shit\r\n', 0, 3, 25, '2017-05-01 14:37:57', '2017-05-01 14:37:57'),
(4, 'Phát Đại ca đẹp trai ,nấu ăn gỏi  thật ngưỡng mộ', 0, 3, 25, '2017-05-01 14:39:40', '2017-05-01 14:39:40'),
(5, 'Món này ngon lắm các bác ạ,em đã làm thử...', 0, 6, 21, '2017-05-01 14:42:30', '2017-05-01 14:42:30'),
(6, 'Cám ơn bạn đã quan tâm,chúc bạn nấu ăn ngon miệng....', 0, 1, 21, '2017-05-01 14:43:44', '2017-05-01 14:43:44'),
(7, 'Món Này như shit ấy\r\n', 0, 9, 25, '2017-05-01 18:25:59', '2017-05-01 18:25:59'),
(8, 'Món này ngọt lắm,không mặn như muối nhể...\r\n', 0, 14, 13, '2017-05-02 02:15:23', '2017-05-02 02:15:23'),
(9, 'Thằng ngu kia,Pudding chuối chả ngọt thì mặn à mày...\r\n', 0, 5, 13, '2017-05-02 02:18:30', '2017-05-02 02:18:30'),
(10, 'Đề nghị các thành viên không được xúc phạm nhau trên diễn đàn,nếu không xẽ bị xóa tài khoản OK?', 0, 1, 13, '2017-05-02 02:19:49', '2017-05-02 02:19:49'),
(11, 'món này chả khác gì shit\r\n', 0, 4, 24, '2017-05-02 02:35:51', '2017-05-02 02:35:51'),
(12, 'tuy nhiên nó ngon phết\r\n', 0, 4, 24, '2017-05-02 02:36:09', '2017-05-02 02:36:09'),
(13, 'tôi đã ăn,cảm nhận,các bạn cũng hãy thử đi', 0, 4, 24, '2017-05-02 02:36:31', '2017-05-02 02:36:31'),
(14, 'Món này ngon lắm các bạn ạ\r\n', 0, 4, 3, '2017-05-02 03:00:19', '2017-05-02 03:00:19'),
(16, '10010101010101010101010101001010 you are understand?', 0, 1, 3, '2017-05-02 11:01:47', '2017-05-02 11:01:47'),
(17, 'xin chào mọi người\r\n', 0, 1, 21, '2017-05-02 11:22:18', '2017-05-02 11:22:18'),
(18, 'fvvascs', 0, 1, 26, '2017-05-04 00:00:33', '2017-05-04 00:00:33'),
(19, 'Món này ngon vãi cứt...', 0, 3, 28, '2017-05-04 00:18:13', '2017-05-04 00:18:13'),
(20, 'mons nayf nhuw shit\r\n', 0, 1, 14, '2017-05-08 02:50:02', '2017-05-08 02:50:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahang`
--

CREATE TABLE `cuahang` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_khong_dau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_thieu` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vi_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cuahang`
--

INSERT INTO `cuahang` (`id`, `ten`, `ten_khong_dau`, `gioi_thieu`, `link`, `vi_chi`, `created_at`, `updated_at`) VALUES
(1, 'Bách Khoa Restaurent', 'bach-khoa-restaurent', '<p>Phạm Văn Khánh (sinh năm 1992). Khánh từng là Thủ khoa đầu vào đại học Bách khoa Hà Nội năm 2010. Mới đây, Khánh được bầu chọn là điển hình xuất sắc của Viettel năm 2016. Sở thích của Phạm Khánh là đọc sách (kĩ thuật, tiểu thuyết), chơi cầu lông, chơi game và tìm hiểu bảo mật. Hiện tại Khánh dành nhiều thời gian cho công việc. Khi rảnh rỗi, anh thường mày mò, tìm hiểu thêm về bảo mật.</p>\r\n', 'http://dantri.com.vn/giao-duc-khuyen-hoc/cuu-thu-khoa-bach-khoa-hn-kiem-6000-usd-nho-tim-ra-lo-hong-cua-facebook-20170503081706201.htm', '', '2017-05-05 06:48:21', '2017-05-08 10:28:15'),
(2, 'Ốc Nướng Trần Đại Ngĩa', 'oc-nuong-tran-dai-ngia', '<p>Đa dạng, ngon, rẻ, Trần Đại Nghĩa được ví như khu phố ẩm thực của các bạn trẻ quanh khu vực Đại học Kinh tế Quốc dân, Đại học Xây dựng và Đại học Bách Khoa Hà Nội. Không chỉ nổi tiếng với bánh mì chảo Hiệu Lực hay Sữa chua Ông già Tóc bạc, khu vực này còn rất nhiều món ăn hấp dẫn đang chờ bạn khám phá. Cùng Vi vu khám phá nhé!</p>\r\n', 'https://www.food.vn', '', '2017-05-05 06:50:54', '2017-05-08 10:28:28'),
(4, 'Bạch Mai Lẩu-Nướng-Chiên Sinh Viên', 'bach-mai-lau-nuong-chien-sinh-vien', '<div class=\"ftr-title\" style=\"box-sizing: inherit; font-size: 30px; margin-top: 0px; margin-bottom: 20px; line-height: 35px; color: rgb(111, 111, 111); font-family: \">Cộng đồng đăng bán được yêu thích nhất Việt Nam</div>\r\n\r\n<p style=\"text-align:justify\">Lozi là một ứng dụng đăng bán được yêu thích nhất Việt Nam. Ngoài các chia sẻ món ăn mang đậm trải nghiệm cá nhân, bạn còn có thể đăng bán miễn phí trên Lozi tất tật mọi thứ: mỹ phẩm tự làm, quần áo cũ mới đủ loại, sách truyện không đọc nữa, cả mấy món do chính tay bạn nấu...&nbsp;</p>\r\n', 'https://lozi.vn/b/pepperonis-restaurant-bach-mai-492-bach-mai-quan-hai-ba-trung-ha-noi-283', '', '2017-05-06 16:07:03', '2017-05-08 10:28:41'),
(5, 'Bách Khoa Ốc Nướng', 'bach-khoa-oc-nuong', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n\r\n<p>aaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n\r\n<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n', 'https://www.hust.edu.vn', '', '2017-05-08 02:39:44', '2017-05-08 10:29:18'),
(6, 'Bách Khoa Mì Bánh-Pate-Susi', 'bach-khoa-mi-banh-pate-susi', '<p>Ngon vãi nồi</p>\r\n', 'https://www.bachkhoa.com.vn', '', '2017-05-08 10:18:37', '2017-05-08 10:28:53'),
(7, 'Bách Khoa Lẩu Thập Cẩm', 'bach-khoa-lau-thap-cam', '<p>Ngon,bổ,rẻ...</p>\r\n', 'googlemap', '', '2017-05-08 10:21:14', '2017-05-08 10:29:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimon`
--

CREATE TABLE `loaimon` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_khong_dau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_TheLoai` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaimon`
--

INSERT INTO `loaimon` (`id`, `ten`, `ten_khong_dau`, `id_TheLoai`, `created_at`, `updated_at`) VALUES
(1, 'Món Ngọt', 'mon-ngot', 1, '2017-04-28 14:32:13', '2017-04-28 14:32:13'),
(2, 'Món Mặn', 'mon-man', 1, '2017-04-28 14:32:29', '2017-04-28 14:32:29'),
(3, 'Món Sống', 'mon-song', 1, '2017-04-28 14:32:43', '2017-04-28 14:32:43'),
(4, 'Món Từ Hoa Quả', 'mon-tu-hoa-qua', 10, '2017-04-28 14:33:13', '2017-04-28 14:33:13'),
(5, 'Món Từ Tinh Bột', 'mon-tu-tinh-bot', 11, '2017-04-28 14:33:29', '2017-04-28 14:33:29'),
(6, 'Món Từ Động Vật', 'mon-tu-dong-vat', 14, '2017-04-28 14:33:56', '2017-04-28 14:33:56'),
(7, 'Món Từ Lưỡng Cư', 'mon-tu-luong-cu', 14, '2017-04-28 15:39:37', '2017-04-28 15:39:37'),
(8, 'Bánh', 'banh', 1, '2017-05-03 16:04:31', '2017-05-03 16:04:31'),
(9, 'Gà Gô', 'ga-go', 2, '2017-05-03 16:04:43', '2017-05-03 16:04:43'),
(10, 'Làm Từ Cá', 'lam-tu-ca', 3, '2017-05-03 16:04:59', '2017-05-03 16:04:59'),
(11, 'Làm Từ Thịt Bò', 'lam-tu-thit-bo', 5, '2017-05-03 16:05:17', '2017-05-03 16:05:17'),
(12, 'Hoa Quả Miền Nam', 'hoa-qua-mien-nam', 8, '2017-05-03 16:05:39', '2017-05-03 16:05:39'),
(13, 'Súp Vi Cá', 'sup-vi-ca', 11, '2017-05-03 16:05:55', '2017-05-03 16:05:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_04_25_012855_create_TheLoai_table', 1),
('2017_04_25_013201_create_Slide_table', 1),
('2017_04_28_023041_create_VungMien_table', 1),
('2017_04_25_013003_create_LoaiMon_table', 2),
('2017_04_25_013056_create_MonAn_table', 3),
('2017_04_25_013307_create_Comment_table', 3),
('2017_05_05_200835_create_CuaHang_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Chu_Y` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `SoLuotXem` int(11) NOT NULL DEFAULT '0',
  `id_LoaiMon` int(10) UNSIGNED NOT NULL,
  `id_VungMien` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`id`, `TieuDe`, `TieuDeKhongDau`, `TenMon`, `TomTat`, `NoiDung`, `Hinh`, `Chu_Y`, `NoiBat`, `SoLuotXem`, `id_LoaiMon`, `id_VungMien`, `created_at`, `updated_at`) VALUES
(1, 'Cách làm ngô chiên xù giòn, thơm ngon, bắt mắt', 'cach-lam-ngo-chien-xu-gion-thom-ngon-bat-mat', 'Ngô chiên xù', '- Ngô chiên bơ giòn là một trong những món ăn vặt ngon và hấp dẫn, được nhiều bạn trẻ mến mộ nhất hiện nay. Cách làm ngô chiên giòn cũng khá đơn giản, tuy nhiên không phải bạn nào cũng biết cách làm đâu nhé! Một dĩa ngô chiên bơ ngon khi hạt ngô chín ngọt vị vừa ăn, bên ngoài là lớp bột phủ giòn rụm và thơm lừng mùi bơ. Hãy cùng chúng tôi vào bếp học cách làm ngô chiên giòn xù bằng bơ thơm ngon bắt mắt cho cả nhà cùng thưởng thức nhé!', '1, Nguyên liệu làm ngô chiên:\r\n - Một hộp ngô Ayam Brand hay 3 trái ngô tươi\r\n - Bột nở lion \r\n - Bột chiên giòn\r\n - Bột năng\r\n - Bột bắp\r\n - 1 trái trứng\r\n - Bơ chiên\r\n - Dầu ăn\r\n - Đường\r\n - Muối\r\n - Hạt nêm\r\n - 1 cái rây loại lớn\r\n\r\n2, Cách làm ngô chiên:\r\n - Nếu dùng ngô hộp thì bạn khui nắp và lấy ngô ra để ráo nhé. Nếu dùng ngô tươi thì bạn tách hạt sau đó cho vào nồi cùng 1/2 muỗng cà phê muối, 2 muỗng cà phê đường rồi đổ nước xâm xấp mặt ngô luộc chín trong 2 phút thì vớt ngô ra. Cho thêm 1 muỗng cà phê hạt nêm vào dĩa ngô rồi trộn đều cho thấm vị.\r\n - Lấy một cái âu cho và 20g bột chiên giòn, 20g bột năng, 20g bột bắp, 5g bột lion vào trộn đều.\r\n - Đập trứng ra tô sau đó đánh đều trứng rồi cho ngô đã luộc vào trộn đều rồi rây để loại bỏ bớt phần trứng thừa.\r\n - Cho ngô vào âu bột trộn đều cho ngô được bao kín bởi một lớp bột sau đó cho ngô vào rổ, lắc nhẹ để loại bỏ bột dư và mày ngô.\r\n - Cho nhiều dầu ăn vào chảo nấu, khi nóng thì cho 10g bơ vào nấu chảy mới cho ngô vào chiên. Ban đầu bạn để ngô chiên trong 2 phút sau đó mới dùng đũa đảo để bột bám chắc vào ngô. Chiên đến khi ngô chín vàng giòn, căng tròn thì vớt ra rây hoặc giấy thấm dầu để ráo dầu.\r\n\r\n3, Trình bày và thưởng thức:\r\n - Cho ngô chiên ra dĩa.\r\n - Bày ra bàn cùng chén tương ớt và mời mọi người thưởng thức.\r\n\r\n-> Như vậy là chúng ta đã hoàn tất cách làm ngô chiên giòn xù bằng bơ thơm ngon bắt mắt cho cả nhà rồi. Món ngô chiên giòn xù này ngoài dùng làm món ăn vặt ngon còn có thể dùng làm món khai vị cho các buổi tiệc. Từng hạt ngô vàng ươm căng tròn trông bắt mắt khi ăn hòa cùng chút vị cay của tương ớt tạo nên một món ăn vô cùng thú vị. Hãy trải nghiệm và chia sẻ Cách làm ngô chiên giòn xù bằng bơ thơm ngon bắt mắt với mọi người bạn nhé! Chúng tôi chúc các bạn thành công và ngon miệng với cách làm ngô chiên trên. Hãy luôn đồng hành cùng chúng tôi để được chia sẻ thật nhiều món ngon ẩm thực 3 miền nhé!', 'ngo-chien.jpg', '', 1, 0, 5, 1, '2017-04-29 16:55:49', '2017-04-29 16:55:49'),
(2, 'Tự làm nem chua. Đơn giản hay phức tạp?', 'tu-lam-nem-chua-don-gian-hay-phuc-tap', 'Nem chua', 'Ngày tết đến, các mẹ thường biếu nhau những cây nem chua thật ngon để mọi người có thêm một món ăn ngon ngày tết. Nem chua - 1 đặc sản không thể không nhắc tới của tỉnh Thanh Hóa, từ lâu đã trở thành một món ăn hấp dẫn vừa có thể nhậu, vừa có thể ăn vặt. Vậy làm nem chua có thực sự phức tạp? Hãy cùng chúng tôi vào bếp học Cách làm nem chua tại nhà ngon để biếu tết hay làm món ngon ngày tết cho gia đình nhé!', '1, Nguyên liệu làm nem chua:\r\n - 300g thịt nạc mông heo\r\n - 150g bì heo thái sợi\r\n - 1 quả ớt chỉ thiên\r\n - 2 củ tỏi\r\n - 20g đường\r\n - ½ muỗng cà phê tiêu xay\r\n - ½ muỗng cà phê mắm nhĩ\r\n - 10g thính gạo xay\r\n - ½ gói gia vị làm nem\r\n - 1 nắm rau răm\r\n\r\n2, Cách làm nem chua:\r\n - Thịt nạc mông mua về các bạn rửa sạch sau đó để ráo nước rồi cắt khối vuông quân cờ cho vào túi zip kéo kín cho vào ngăn đá 1 giờ.\r\n - Cho phần thịt nạc vào máy xay xay thật nhuyễn rồi cho lại vào túi zip, cho vào ngăn đá ướp thêm 30 phút.\r\n - Tỏi ớt các bạn thái lát mỏng.\r\n - Bì heo mua về các bạn dùng kéo cắt ngắn 1 cm.\r\n - Lấy một cái âu cho thịt xay, bì heo, đường, tiêu, mắm, thính, gia vị làm nem vào, sau đó dùng bao tay đeo vào bóp nhẹ để trộn đều.\r\n - Trải 1 miếng màng bọc thực phẩm ra thớt sau đó cho 2 lát tỏi, 2 lát ớt, 2 lá rau răm vào giữa.\r\n - Múc 1 muỗng canh nem cho vào chính giữa và tiến hành cuộn chặt nem. Sau đó bọc lá chuối bên ngoài.\r\n - Cho nem vào hộp nhựa kín ủ ở nhiệt độ phòng trong 36 giờ thì nem đã chín có thể ăn được rồi.\r\n\r\n3, Trình bày và sử dụng:\r\n - Nem chín khi dùng thì lấy nem ra bóc giấy kính và cắt lát nem thành miếng vừa ăn.\r\n - Bày ra bàn và mời mọi người thưởng thức.\r\n\r\n-> Như vậy là chúng ta vừa hoàn tất Cách làm nem chua tại nhà ngon để biếu tết hay làm món ngon ngày tết cho gia đình rồi. Món ăn thơm ngon đặc trưng với vị chua của nem hòa vào vị thơm nồng của tỏi và chút cay của ớt tạo nên món nem ngon danh bất hư truyền. Ngày tết mâm cơm gia đình khó có thể mà thiếu một dĩa nem chua. Hãy trải nghiệm và chia sẻ Cách làm nem chua tại nhà ngon để biếu tết hay làm món ngon ngày tết cho gia đình với mọi người bạn nhé! Luôn đồng hành cùng chúng tôi để được cập nhật thật nhiều món ngon hơn nữa nhé. Chúc các bạn thành công và ngon miệng với cách làm nem chua ngon này!', 'nem-chua.jpg', '- Khi cho gia vị chúng ta nên cho ít, vì nếu như gia vị quá nhiều sẽ khiến nem bị dậy mùi sẽ mất ngon.\r\n- Sau khi ủ nem chín bạn cho hộp nem vào ngăn mát tủ lạnh để bảo quản giúp nem không bị quá chua nhé.', 1, 1, 2, 2, '2017-04-29 17:32:37', '2017-05-08 09:07:19'),
(3, 'Há cảo tôm thịt - Món ngon cho ngày cuối tuần', 'ha-cao-tom-thit-mon-ngon-cho-ngay-cuoi-tuan', 'Há cảo tôm thịt', 'Há cảo hay còn gọi là hoành thánh chiên là món ăn có nguồn gốc từ Triều Châu, Trung Quốc và được dùng phổ biến trong các bữa ăn sáng trong món điểm sấm. Đối với ẩm thực Philippines thì món này dùng trong bữa xế. Món bánh này có thể tự làm vừa nhanh lại vừa dễ dàng, cũng có thể dùng làm món khai vị. Há cảo dễ chế biến và không gây nặng bụng, nó còn là món ăn lý tưởng để làm mồi nhậu. Với lớp vỏ trong mờ lấp ló nhân tôm thịt hồng hồng đẹp mắt với chút xanh của hành lá cùng mùi thơm hấp dẫn khiến thực khách cảm thấy hấp dẫn. Cùng chúng tôi vào bếp học Cách làm há cảo tôm thịt hấp dẫn cho ngày cuối tuần bạn nhé!', '1, Nguyên liệu làm há cảo:\r\n- 200g bột há cảo hoặc 100g bột năng trộn với 100g bột gạo\r\n - 3g muối\r\n - 400g tôm tươi\r\n - 50g thịt xay\r\n - 2 củ cà rốt\r\n - Gừng\r\n - Tiêu\r\n - Hành lá\r\n\r\n2, Cách làm há cảo:\r\n - Cho 180g bột há cảo vào âu trộn đều với 3 g muối sau đó cho nước từ từ vào đồng thời dùng đũa trộn đều đến khi đặc quánh lại là được.\r\n - Dùng một cái khăn sạch ẩm phủ lên trên để bột nghỉ 8 phút.\r\n - Sau khi ủ xong cho thêm 20g bột còn lại vào âu và dùng tay trộn đều cho đến khi bột mịn là được.\r\n - Tôm sau khi làm sạch lột bỏ vỏ ta cho vào cối giã nhuyễn. Hành lá và gừng làm sạch băm nhuyễn. Cà rốt làm sạch băm nhỏ.\r\n - Cho tôm, thịt, gừng vào trộn đều.\r\n - Thêm cà rốt và hành lá vào trộn đều.\r\n - Cho một thìa dầu ăn vào chảo sau đó cho nhân vào xào chín.\r\n - Bột há cảo sau khi nhào xong ta lăn thành thanh dài sau đó cắt bột thành từng viên bằng 4 đốt ngón tay.\r\n - Dùng cây lăn cán bột thành miếng mỏng tròn.\r\n - Cho 1 muỗng canh nhân vào giữa phần bột rồi khéo léo nắn các mép bột lại.\r\n - Bắc một nồi nước lên bếp nấu sôi. Đặt một lát cà rốt lên khay hấp rồi đặt há cảo lên trên cho đến khi kín mặt khay. Cho vào nồi hấp từ 6 đến 8 phút cho đến khi lớp bột há cảo trong lại là đã chín.\r\n\r\n3, Trình bày và thưởng thức:\r\n - Khi ăn cho há cảo ra dĩa cùng chén tương ớt.\r\n - Bày ra bàn và mời mọi người thưởng thức.\r\n\r\n-> Như vậy là chúng ta đã hoàn tất Cách làm há cảo tôm thịt hấp dẫn cho ngày cuối tuần rồi. Trông từng chiếc há cảo thật đẹp mắt phải không nào? Khi thưởng thức ta sẽ cảm nhận được vị dẻo của lớp vỏ và lớp nhân ngọt thanh thơm ngon khó cưỡng. Ngoài ra sau khi hấp chín bạn có thể cho há cảo vào chiên vàng giòn để có món há cảo chiên vàng giòn thơm lừng. Hãy trải nghiệm và chia sẻ Cách làm há cảo tôm thịt hấp dẫn cho ngày cuối tuần với mọi người bạn nhé! Chúc các bạn thành công và ngon miệng với cách làm há cảo trên. Luôn đồng hành cùng chúng tôi để được cập nhật thật nhiều món ăn ngon khác nữa nhé.', 'ha-cao.jpg', '', 1, 0, 6, 5, '2017-04-29 18:02:12', '2017-04-29 18:02:12'),
(4, 'Bí quyết làm món gà chiên giòn theo phong cách gà Mạnh Hoạch', 'bi-quyet-lam-mon-ga-chien-gion-theo-phong-cach-ga-manh-hoach', 'Gà chiên', 'Nhắc đến đặc sản của tỉnh Hải Dương, người ta không thể không nhắc tới gà Mạnh Hoạch - 1 món ăn đã trở thành thương hiệu, xuất phát từ \"ông vua\" gà đến từ Hải Dương - Phạm Hồng Hoạch. Để có được một món gà chiên giòn thơm ngon thì bí quyết có lẽ nằm ở gia vị được chọn lựa khi tẩm ướp. Gà Mạnh Hoạch khi được dùng chế biến làm món gà chiên giòn thì quả là tuyệt cú mèo. Sau đây, chúng tôi xin được bật mí công thức chế biến món gà chiên giòn, thơm ngon theo phong cách gà Mạnh Hoạch Hải Dương để bạn hoàn toàn có thể tự làm tại nhà. Hãy cùng chúng tôi vào bếp nhé!', '1, Nguyên liệu:\r\n   Chọn lựa gà ta thịt săn chắc sẽ làm món gà chiên giòn thêm hoàn hảo hơn. Các bạn chú ý không nên dùng gà công nghiệp để làm món này vì thịt gà sẽ rất bở và khô.\r\n - Gà ta (Gà Mạnh Hoạch nếu có), trọng lượng khoảng 1kg là ngon nhất\r\n - Gia vị tẩm ướp: tiêu, muối, tỏi\r\n - Dầu ăn: 1 chai\r\n - Ngũ vị hương: đây chính là gia vị mà bạn dùng tẩm ướp để không cần phải dùng bột.\r\n\r\n2, Cách làm:\r\n - Ướp gà với các gia vị trên khoảng từ 1 đến 2 tiếng trước khi rán. Bôi đều gia vị ngoài da gà và nhét vào bên trong, nhớ cho thêm chút dầu ăn khi ướp (để gà khỏi bị chảy nước).\r\n - Sau đó hấp gà (hấp cách thủy) trong khoảng 5 đến 7 phút để thịt gà từ bên trong đã chín sơ. Như vậy khi chiên giòn, gà sẽ không bị khô thịt mà vẫn giòn da.\r\n - Đun dầu tới khoảng 160 độ C, thả gà (cho dầu ngập gần hết gà để có được lớp da đều) vào chiên giòn. Nhớ đảo lật gà đều tay.\r\n - Chiên khoảng 10 phút thì nhấc ra, dùng giấy thấm dầu để gà không bị quá ngấy.\r\n\r\n3, Trình bày và thưởng thức:\r\n - Sau khi đã chín, các bạn bày gà ra đĩa sao cho đẹp mắt và mời mọi người thưởng thức.\r\n - Các bạn có thể dùng món gà chiên giòn này với gia vị chanh muối, hay nước mắm ngon pha với ớt tỏi và đường.\r\n\r\n-> Như vậy là chúng ta đã có được một món gà chiên theo chuẩn phong cách của gà Mạnh Hoạch. Hãy tiếp tục đồng hành cùng chúng tôi để khám phá thêm nhiều món ăn và đặc sản 3 miền bạn nhé. Chúc các bạn ngon miệng với món gà Mạnh Hoạch chiên giòn thơm ngon.', 'ga-manh-hoach.jpg', '', 1, 0, 6, 1, '2017-04-30 01:37:31', '2017-04-30 01:37:31'),
(5, 'Món ngon từ cá linh: Lẩu cá linh bông điên điển', 'mon-ngon-tu-ca-linh-lau-ca-linh-bong-dien-dien', 'Lẩu cá linh bông điên điển', 'Từ tháng 9 đến tháng 11 hàng năm, khi mùa nước nổi của Đồng Tháp bắt đầu thì thường sẽ xuất hiện nhiều cá linh, vào đầu mùa cũng chính là lúc cá ngon nhất, xương không cứng do chưa quá lớn, bụng cá có mỡ nên ăn rất béo. Cá linh được coi là đặc sản của mùa nước nổi và cũng là mùa mà những bông hoa điên điển nở vàng khoe sắc rực rỡ khắp cả mé sông. Hoa điên điển có hương vị đặc biệt, giòn, thơm, bùi, béo lại nồng đượm hương. Cá linh được chế biến theo cách nào cũng vẫn thơm ngon và hấp dẫn, dù là cá đầu mùa hay cuối mùa. Tiêu biểu phải kế đến như cá linh tẩm bột chiên giòn, cá linh kho mắm ruốc, kho mía, kho khóm, canh chua cá linh, hay để làm mắm; trong đó lẩu cá linh bông điên điển là một món ăn bình dị, đặc sản nổi tiếng, và là niềm tự hào của người dân miền Tây khi nước lũ về. Không thể chần chừ thêm nữa. Ngay bây giờ, các bạn hãy cùng chúng tôi vào bếp và tìm hiểu công thức chế biến của món ăn đặc sản này nhé!', '1, Nguyên liệu chế biến lẩu cá linh bông điên điển:\r\n - Cá linh: 500 gram\r\n - Xương ống heo: 1 kg\r\n - Mỡ heo: 100 gram\r\n - Bông điên điển: 300 gram\r\n - Bông súng: 200 gram\r\n - Lá me non: 20 gram (bạn có thể thay bằng lá giang: 100 gram, hay me chín: 20 gram)\r\n - Rau ngò gai: 20 gram\r\n - Tỏi bằm: 2 muỗng cà phê\r\n - Dầu ăn, mắm, đường, bột ngọt, ớt sừng, tiêu\r\n\r\n2, Cách nấu lẩu cá linh bông điên điển:\r\n - Móc bỏ ruột cá linh, rửa sạch. Cho cá vào rổ thưa, để ráo. Ướp cá với 1 muỗng cà phê tỏi, 1/6 muỗng cà phê bột ngọt, 1/2 muỗng cà phê đường, 1/4 muỗng cà phê tiêu. Đặt cá vừa ướp vào ngăn mát tủ lạnh để cá thấm gia vị mà vẫn tươi.\r\n - Rửa sạch xương heo, trụng sơ với nước sôi để loại bỏ tạp chất. Hầm xương heo với 2 lít nước bằng lửa lớn trong vòng 1 tiếng. Lưu ý vớt bọt để nước trong. Lọc bỏ xương heo, lấy nước dùng.\r\n - Lột vỏ của cọng bông súng, bẻ khúc, ngâm sơ với nước muối pha loãng, xả sạch, để ráo.\r\n - Nhặt bỏ cọng của bông điên điển, rửa với vòi nước đang chảy, để ráo.\r\n - Rửa sạch mỡ heo, xắt quân cờ. Làm nóng chảo, cho mỡ vào, đảo đều để mỡ tươm ra. Tách tóp mỡ để riêng.\r\n - Cho tỏi vào chảo mỡ, phi thơm. Cho tiếp lá me non, rau ngò gai vào, xào thơm. Trút phần vừa xào vào nước dùng, khi nước dùng sôi lần nữa, nêm nếm vừa ăn. Cuối cùng cho ớt sừng cắt lát vào là bạn đã hoàn thành nước lẩu. \r\n - Dọn nồi nước lẩu cùng cá linh đã ướp, bông điên điển, bông súng và bún.\r\n\r\n-> Như vậy là chúng ta đã có một nồi lẩu cá linh bông điên điển thơm ngon đúng điệu của miền tây sông nước rồi. Hãy tiếp tục đồng hành cùng chúng tôi để khám phá thêm nhiều món ngon hấp dẫn khác nhé. Chúc các bạn thành công với món lẩu cá linh bông điên điển.', 'lau-ca-linh-bong-dien-dien.jpg', '- Nếu không có xương heo, bạn có thể thay bằng xương gà. Thời gian hầm là 30 phút.\r\n- Ngoài ra, để tiết kiệm thời gian và chi phí, bạn có thể thay nước hầm xương gà hay xương heo bằng nước dừa tươi. Trong trường hợp này, bạn chế biến nước lẩu như sau: nấu sôi nước dừa tươi, rồi trút phần xào có tóp mỡ, lá me non vào, nêm nếm vừa ăn. ', 1, 0, 6, 4, '2017-04-30 01:58:30', '2017-04-30 01:58:30'),
(6, 'Dồi lươn rim nước cốt dừa - Đặc sản Đồng Tháp', 'doi-luon-rim-nuoc-cot-dua-dac-san-dong-thap', 'Dồi lươn rim nước cốt dừa', 'Dồi lươn là món ăn khoái khẩu của người dân vùng Đồng Tháp Mười, mang hương vị đặc trưng của nước dừa, hành và đậu phộng rất hấp dẫn. Vậy làm món ăn này khó hay dễ? Chúng ta hãy cùng đi tìm hiểu nhé!', '1, Nguyên liệu:\r\n - Lươn to: 500 gram\r\n - Thịt lợn nạc (thịt vai): 250 gram\r\n - Miến: 50 gram\r\n - Nước cốt dừa: 100 ml\r\n - Lạc rang: 150 - 200 gram\r\n - Mộc nhĩ, ớt tươi, hành tây\r\n - Mắm, đường, hạt tiêu, dầu ăn\r\n\r\n2, Cách làm:\r\n - Để chế biến món dồi lươn, trước hết ta phải làm cho lươn chết rồi dùng tro hoặc cám tuốt sạch nhớt, mổ moi bỏ ruột rồi rửa sạch. Sau đó, dùng dao sắc cắt phần thịt ở phía cổ lươn nhưng không làm đứt rời da lươn để đảm bảo da được liền từ đầu tới đuôi.\r\n - Thịt lươn đem băm nhuyễn rồi trộn đều với thịt nạc xay, mộc nhĩ thái chỉ, miến cắt nhỏ, cùng đường, nước mắm, tiêu nguyên hạt.\r\n - Sau đó, dùng một thìa nhỏ nhồi đầy chặt hỗn hợp vừa trộn vào da lươn, sau đó xếp vào nồi, xếp hành tây bổ múi cau lên. Đổ nước cốt dừa ngập thân lươn rồi đun lửa liu riu. Khi nước cốt dừa sôi thêm vài lượt thì bạn nêm gia vị, đường, nước mắm cho vừa ăn.\r\n\r\n3, Trình bày và thưởng thức:\r\n - Khi xong thì múc ra đĩa, rắc lạc rang đã giã giập lên trên và mời mọi người thưởng thức.\r\n - Món dồi lươn rim nước cốt dừa ăn cùng bánh mỳ, bún hoặc làm món mồi thì đều ngon như nhau.\r\n\r\n-> Như vậy là chúng ta đã vừa hoàn thành công thức nấu món Dồi lươn rim nước cốt dừa ngon đúng điệu. Món lươn không chỉ thơm ngon mà còn là một trong những món ăn bổ dưỡng, tốt cho sức khỏe. Hãy tiếp tục theo dõi các bài viết tiếp theo của chúng tôi để tích lũy thêm nhiều công thức nấu nướng đặc biệt khác nhé. Chúc các bạn thành công.', 'doi-luon-rim-nuoc-cot-dua.jpg', 'Bí quyết khi mua lươn là chọn những con bụng vàng, lưng đen, còn sống. Tuy vậy, cần tránh mua lươn chết bởi một số chất chuyển hóa thành độc tính, ăn vào rất nguy hiểm cho cơ thể.', 1, 0, 6, 4, '2017-04-30 03:16:37', '2017-04-30 03:16:37'),
(7, 'Cơm hấp lá sen - Món ngon khó cưỡng!', 'com-hap-la-sen-mon-ngon-kho-cuong', 'Cơm hấp lá sen', 'Là một món cơm nấu bằng gạo huyết rồng cùng hột sen hấp chín và muối mè, cơm hấp lá sen là một món được gói gọn gàng trong những chiếc lá sen, vừa ăn cho 2 tới 4 người. Dường như sự kết hợp hài hòa giữa tôm, hạt sen, cà rốt, lạp xưởng,… nên dễ dàng khiến những người thưởng thức ai cũng cảm thấy thú vị. Hãy cùng chúng tôi tìm hiểu cách làm món ăn này nhé.', '1, Nguyên liệu (cho 2 người ăn):\r\n - Tôm tươi: 200 gram\r\n - Hạt sen tươi: 100 gram\r\n - Đậu Hà Lan: 50 gram\r\n - Cà rốt: 1 củ\r\n - Nấm hương\r\n - Gạo: 2 cốc nhỏ (hoặc tùy số lượng người)\r\n - Gia vị, dầu ăn, hành khô,…\r\n\r\n2, Cách làm cơm hấp lá sen:\r\n - Tôm bóc vỏ, bỏ đầu, rửa sạch, thái hạt lựu.\r\n - Sen rửa sạch, nấu chín tới, vớt sen ra để ráo. Chỗ nước luộc sen đem nấu cơm chín. Hạt cơm chỉ ngon khi chín đều và phải hơi ráo, không được quá nhão hay nát. Sau khi nấu cơm chín thì xới ra, để nguội và đánh tơi thành từng hạt.\r\n - Cà rốt bỏ vỏ, rửa sạch, xắt hạt lựu.\r\n - Đậu Hà Lan rửa sạch, nấm hương ngâm nở rửa sạch, xắt nhuyễn. Hành khô băm nhỏ, đặt nồi nước sôi rồi luộc chín đậu, cà rốt với 1 chút muối.\r\n - Bắc chảo lên bếp, để dầu ăn nóng già phi thơm hành khô, cho tôm vào xào săn.\r\n - Lần lượt cho hạt sen, cà rốt, đậu Hà Lan vào xào cùng.\r\n - Cuối cùng cho cơm vào chiên đều với gia vị vừa miệng.\r\n - Lá sen rửa sạch, sau đó chần qua nước sôi cho héo, rồi lau khô, xếp lá ra mâm. Sau khi cơm chiên săn lại thì cho ra lá sen.\r\n - Gói cơm trong lá sen lại và đặt vào nồi hấp trong khoảng 7 phút là được.\r\n\r\n-> Món cơm hấp lá sen khi mang ra sẽ có màu sắc hài hòa của nguyên liệu, gia vị đậm đà cùng hương sen hấp dẫn… như đem đến cho người ăn cảm giác lạ miệng, thú vị khó quên. Chúc các bạn thành công với món ăn tuyệt vời này.', 'com-hap-la-sen.jpg', '', 1, 0, 5, 4, '2017-04-30 03:37:03', '2017-04-30 03:37:03'),
(8, 'Cách làm gỏi cá trích đặc sản Phú Quốc', 'cach-lam-goi-ca-trich-dac-san-phu-quoc', 'Gỏi cá trích', 'Bạn đã có cơ hội thưởng thức gỏi cá trích tại Phú Quốc bao giờ chưa? Với 3 bước làm đơn giản dưới đây bạn sẽ được nếm thử đặc sản vùng biển đảo ngay tại nhà và cùng ngồi ăn quây quần bên những người thân yêu trong gia đình mà không cần đi đâu xa.', '1, Nguyên liệu:\r\n - 500 g cá trích phi lê\r\n - 10 trái chanh tươi\r\n - 300 ml giấm ăn\r\n - Hành tây, đậu phộng, dừa nạo\r\n - Gia vị: tỏi, đường, ớt sừng đỏ, nước mắm Phú Quốc, bột ngọt\r\n - Bún, bánh tráng\r\n - Các loại rau thơm\r\n\r\n2, Cách làm:\r\n - Sơ chế các nguyên liệu:\r\n   + Chanh tươi vắt lấy nước.\r\n   + Cá trích phi lê nhúng qua với giấm ăn rồi lại tiếp tục nhúng vào nước cốt chanh. Ngâm trong khoảng 5 phút và lấy ra để ráo.\r\n   + Đậu phộng rang chín rồi giã nhỏ vừa phải.\r\n   + Hành tây bóc vỏ, rửa sạch và thái sợi.\r\n   + Ớt sừng thái lát nhỏ.\r\n - Trộn đều 3 nguyên liệu cá trích, hành tây, ớt. Rắc một phần đậu phộng rang lên trên bề mặt cá.\r\n - Cho 3 thìa nước mắm Phú Quốc vào chén, cùng các nguyên liệu gồm tỏi, ớt băm nhỏ, 1/3 muỗng bột ngọt, 2 muỗng đường, 1,5 muỗng nước cốt chanh tươi và đậu phộng. Khuấy đều cho đến khi đường tan hết, bạn đã có hỗn hợp nước chấm gỏi cá trích chua ngọt tuyệt ngon.\r\n - Để thưởng thức món gỏi cá trích ngon đúng điệu bạn hãy dùng bánh tráng cuốn gỏi cá cùng rau sống, dừa nạo và chấm nước mắm trước khi cho vào miệng. Tất cả hương vị ngon, ngọt, bùi bùi, thơm thơm, vị chua và vị ngon đậm đà của nước mắm Phú Quốc đang dần tan ra trong miệng bạn, cảm giác thật ngon tuyệt vời!\r\n\r\n-> Thật tuyệt khi chúng ta vừa có được thêm trong tay công thức làm món ngon đặc sản của vùng biển đảo Phú Quốc. Chúc bạn chế biến món gỏi cá trích thành công và thưởng thức ngon miệng!', 'goi-ca-trich.jpg', 'Để có một món gỏi cá trích ngon đúng điệu mang hương vị miền biển, bạn phải lựa chọn thật kỹ những con cá còn tươi sống và chế biến phải thật khéo léo.', 1, 0, 3, 5, '2017-04-30 03:58:34', '2017-04-30 03:58:34'),
(9, 'Cách làm vịt om khoai môn ngon như nhà hàng', 'cach-lam-vit-om-khoai-mon-ngon-nhu-nha-hang', 'Vịt om khoai môn', 'Vịt có lẽ là một trong những món ăn quen thuộc hàng ngày trong bữa cơm của mỗi gia đình hay trong các buổi tiệc. Có rất nhiều cách để chế biến một món ăn ngon từ thịt vịt. Hôm nay, chúng tôi xin được giới thiệu cùng bạn đọc cách chế biến món Vịt om khoai môn ngon đúng chuẩn nhà hàng. Hãy cùng chúng tôi vào bếp nhé.', '1, Nguyên liệu:\r\n - 1 con vịt (khoảng 2kg)\r\n - 700 g khoai môn\r\n - 100ml dầu\r\n - 1 viên đường phèn\r\n - 5 lát gừng\r\n - 8 tép tỏi băm\r\n - 3 cây hành lá\r\n - 50ml rượu gia vị (hoặc rượu gạo)\r\n - 15ml dầu hào\r\n - 45ml nước tương\r\n - 30ml xì dầu đặc\r\n - 500ml nước\r\n\r\n2, Cách làm:\r\n - Vịt rửa sạch, chặt thành từng miếng vừa ăn. Khoai môn gọt vỏ, cắt thành miếng dày khoảng 1.5cm.\r\n - Làm nóng dầu trong chảo trên lửa vừa, cho khoai môn vào chiên sơ cho tới khi các mặt hơi bắt đầu chuyển sang màu nâu thì vớt ra đĩa.\r\n - Để loại khoảng 30ml dầu trong chảo, cho đường phèn vào chảo dầu đun nhỏ lửa tới khi tan hết. Cho gừng, tỏi và dọc hành vào xào sơ 1-2 phút.\r\n - Vặn to lên lửa vừa, cho vịt vào chiên sơ mỗi mặt khoảng 2 phút. Chú ý, chỉ để thịt thành 1 lớp để đảm bảo thịt vịt chín đều.\r\n - Cho rượu gạo, nước tương, xì dầu đặc và nước vào chảo, đảo đều, sau đó đậy vung lại om trong 20 phút.\r\n - Thêm khoai môn vào đảo đều, đậy vung om tiếp 5-7 phút tới khi khoai chín hẳn.\r\n - Bày ra đĩa, thêm hành lá thái nhỏ lên trên và thưởng thức.', 'vit-om-khoai-mon.jpg', '', 1, 0, 6, 1, '2017-04-30 08:39:12', '2017-04-30 08:39:12'),
(10, 'Cách làm món cá đuối nướng nghệ', 'cach-lam-mon-ca-duoi-nuong-nghe', 'Cá đuối nướng nghệ', 'Nghệ đã được khoa học chứng minh có rất nhiều công dụng trong y học như chống viêm loét dạ dày, kháng viêm, lợi mật,... Trong ẩm thực, nghệ được dùng làm gia vị cho nhiều món ăn. Hôm nay, chúng tôi xin được giới thiệu với bạn một trong những món ăn rất được ưa thích chế biến cùng củ nghệ. Đó là món Cá đuối nướng củ nghệ.', '1, Nguyên liệu:\r\n - Cá đuối: 1 con\r\n - Củ nghệ\r\n - Lá gừng\r\n - Củ tỏi, hành khô\r\n - Chanh\r\n - Muối\r\n - Tiêu\r\n - Nước mắm (chọn loại ngon)\r\n - Ớt tươi\r\n\r\n2, Cách làm:\r\n - Sơ chế cá đuối:\r\n   + Đi ra chợ mua cá đuối, các bạn cần phải chọn ra loại cá đuối còn được tươi mới, đem đi làm cho thật sạch bằng muối chà xát, rửa lại với vài lần nước.\r\n   + Để sẵn nguyên một con cá đuối như vậy và hãy dùng một con dao, các bạn đem đi xẻ dọc ra trên thân của con cá từng đường nho nhỏ để khi nào muốn ướp cá thì ướp cũng dễ dàng hơn và thấm gia vị nhanh đều hơn.\r\n - Ướp gia vị cho món cá đuối:\r\n   + Cho cá ra tô khi đã được ráo bớt nước rồi thì các bạn ướp cá cùng với những hỗn hợp như sau: nghệ + tỏi (bằm nhuyễn ra) và tiêu, thêm vào các loại gia vị như nước mắm ngon cùng với muối iot và dầu ăn, sau đó chúng ta hãy đảo đều lên để cho những thớ thịt của cá đuối được ngấm gia vị và để đó chờ trong vòng 15 phút đã nhé các bạn.\r\n - Thực hiện cách làm cá đuối nướng nghệ:\r\n   + Xếp những miếng lá gừng đặt ngay ngắn lên trên chiếc vỉ nướng sạch sẽ, đặt cá đuối lên trên. Tiếp tục là các bạn đặt lên trên cá là một lớp lá sao cho cá đã được bọc kín sẵn.\r\n   + Nướng cá đuối lên trên bếp than hồng rực lửa, trong lúc này, chúng ta nướng thì cũng nên quét phết thêm lên một ít tí xíu dầu ăn lên trên bề mặt bên ngoài của lá bọc cá để cho lá ở đây không bị cháy khô và khét.\r\n   + Nếu như thấy cá đã được có màu vàng chín lên rồi thì các bạn hãy để cá chín bỏ ra một cái đĩa lớn riêng nhé các bạn, sau đó có thể dọn ra và ăn kèm cùng với cơm nóng hổi, gắp cùng với rau húng hoặc là ăn kèm với bánh tráng cuộn rau sống và chấm chung cùng với nước mắm pha tiêu chanh ớt.\r\n\r\n-> Cá đuối nướng củ nghệ làm cho thịt cá tăng thêm mùi thơm nồng nồng cùng với miếng thịt cá dai dai có màu vàng ươm trông rất là đẹp mắt. Món ăn này vào dịp cuối tuần, các bạn có thể cùng cả nhà nhâm nhi rồi đó. Chúc các bạn thật là thành công cùng với cá đuối nướng củ nghệ nhé!', 'ca-duoi-nuong-nghe.jpg', '', 1, 0, 6, 5, '2017-04-30 09:01:03', '2017-04-30 09:01:03'),
(11, 'Cách làm bánh da lợn đậu xanh, lá dứa thơm lừng', 'cach-lam-banh-da-lon-dau-xanh-la-dua-thom-lung', 'Bánh da lợn đậu xanh, lá dứa', 'Bánh da lợn là món ăn quen thuộc với vùng Nam Bộ. Bạn có thể tự làm chiếc bánh thơm lừng hương lá dứa với vị ngọt bùi của đậu xanh và nước cốt dừa để cả nhà ăn chơi.', '1, Nguyên liệu:\r\n - 200 g đậu xanh\r\n - Muối\r\n - 500 g bột năng\r\n - 100 g bột gạo\r\n - 400 g đường\r\n - 10 lá dứa\r\n - 1 ống vani\r\n - Nước cốt dừa\r\n\r\n2, Cách làm:\r\n - Đậu xanh cà vỏ, vo sạch, ngâm nước ấm 3-4 giờ. Sau đó cho đậu vào nồi, đổ nước ngang mặt đậu rồi nấu chín.\r\n - Khi đậu chín, xới ra, xay đều với 1 thìa nhỏ muối.\r\n - Lá dứa rửa sạch, cắt nhỏ, giã nát, vắt lấy nước cốt.\r\n - Chia bột năng, bột gạo, đường ra làm hai phần. Lấy một phần trộn đều với nước cốt dừa, đậu xanh vừa xay nhuyễn và 1 ống vani.\r\n - Cho nước cốt lá dứa vừa vắt vào phần bột. Số đường còn lại: thêm nước cốt dừa, khuấy tan. Nếu thích, bạn có thể cho thêm 4 giọt màu xanh lá cây thực phẩm để màu bột đẹp hơn.\r\n - Chuẩn bị một nồi hấp nhiều nước, láng một lớp dầu ăn vào lòng khuôn, đặt khuôn vào nồi, đổ từng lớp hỗn hợp vào khuôn. Lưu ý: sau khi hấp chín mới đổ lớp hỗn hợp tiếp theo, cho đến khi đầy khuôn. Thời gian hấp một chiếc bánh mất khoảng 20 phút.\r\n - Khi chín lớp cuối cùng, đem khuôn ra khỏi nồi, để nguội hoàn toàn, sau đó úp ngược khuôn lên dĩa để đổ bánh ra.\r\n - Nếu muốn làm nhân khoai mì (sắn), bạn chỉ thay thế đậu xanh bằng khoai mì, cách làm như nhau. Nên đổ tầng khoai mì dày hơn đậu xanh một chút khi hấp. Bánh sẽ đẹp và lớp khoai mì trắng hiện rõ hơn.\r\n\r\n-> Chúc các bạn thành công với món ăn này.', 'banh-da-lon.jpg', '', 1, 0, 5, 4, '2017-04-30 09:18:38', '2017-04-30 09:18:38'),
(12, 'Món ngon dễ làm: Xốt chanh vàng giải nhiệt ngày nóng', 'mon-ngon-de-lam-xot-chanh-vang-giai-nhiet-ngay-nong', 'Xốt chanh vàng', 'Xốt thơm mùi chanh, vị chua dịu là món ăn hấp dẫn cho những ngày hè bỏng rát, mà lại rất dễ làm. Hãy cùng chúng tôi tìm hiểu cách làm món xốt này nhé.', '1, Nguyên liệu:\r\n - 1/2 chén nước chanh\r\n - 3 quả trứng loại to\r\n - 1 chén đường cát\r\n - 1 thìa canh nước\r\n - 1 thìa cà phê gelatin\r\n - 2/3 chén bơ nhạt mềm\r\n\r\n2, Cách làm:\r\n - Cho nước chanh và 1/2 số đường vào nồi, đun sôi.\r\n - Đánh trứng trong vòng 2 phút rồi trộn số đường còn lại với trứng.\r\n - Cho một nửa số nước chanh vừa đun vào trứng và đánh đều.\r\n - Đổ hỗn hợp trứng vào chỗ nước chanh còn lại và khuấy cho đến khi sôi.\r\n - Vừa khuấy vừa đun sôi trong 1 phút đến khi hỗn hợp đặc và nổi bọt.\r\n - Sau khi đun, để nguội rồi bọc hỗn hợp bằng màng bọc thực phẩm.\r\n - Cho nước vào gelatin ngâm trong 5 phút.\r\n - Đổ gelatin vào hỗn hợp trên và trộn đều, sau đó cho bơ vào đánh đều.\r\n - Để hỗn hợp vào ngăn mát tủ lạnh trong 1 giờ trước khi dùng.', 'xot-chanh-vang.jpg', '', 1, 0, 4, 1, '2017-04-30 09:27:40', '2017-04-30 09:27:40'),
(13, 'Món ngon dễ làm: Pudding chuối mát lạnh', 'mon-ngon-de-lam-pudding-chuoi-mat-lanh', 'Pudding chuối', 'Món tráng miệng mát lịm, mềm mượt, hòa quyện vị chuối, hạnh nhân, vanilla khiến bất cứ thực khách nào cũng xiêu lòng.', '1, Nguyên liệu:\r\n - 1 chén sữa\r\n - 1 chén sữa hạnh nhân không đường\r\n - 3 thìa canh tinh bột ngô\r\n - 1 nhúm muối kosher (nhạt hơn muối tinh)\r\n - 1/3 chén đường\r\n - 1 quả trứng to\r\n - 1 thìa cà phê vanilla\r\n - 2 quả chuối to\r\n - 6 miếng bánh graham ít béo\r\n - 1 thìa canh bột ca cao\r\n - 1/4 chén hạnh nhân rang, dạng lá\r\n\r\n2, Cách làm:\r\n - Đun sữa và sữa hạnh nhân trên lửa vừa cho tới khi sôi lăn tăn rồi tắt bếp.\r\n - Trộn tinh bột ngô, muối, đường và trứng trong một bát cách nhiệt.\r\n - Đổ 1/2 hỗn hợp sữa nóng vào bát và đánh mạnh cho tới khi mịn mượt.\r\n - Đổ hỗn hợp vào nồi rồi đun với lửa vừa, vừa đun vừa khuấy mạnh cho tới khi sánh lại và nổi bọt, từ 1-2 phút.\r\n - Cho vanilla vào khuấy đều.\r\n - Đổ hỗn hợp ra bát và để nguội, đảo đều.\r\n - Cắt chuối ra thành từng lát mỏng.\r\n - Đặt vài lát chuối, vài lát bánh graham và 2 thìa canh pudding vào 4 chiếc cốc.\r\n - Rắc bột ca cao và hạnh nhân lên trên, sau đó lặp lại các bước trên thành 2 lớp nữa.\r\n - Bọc màng bọc thực phẩm và để ngăn mát trong 4 tiếng hoặc qua đêm.\r\n\r\n-> Vậy là đã hoàn thành món pudding chuối mát lạnh, thơm ngon. Chúc các bạn thành công với món tráng miệng tuyệt hảo này.', 'pudding-chuoi.jpg', '', 1, 0, 4, 1, '2017-04-30 09:49:38', '2017-04-30 09:49:38'),
(14, 'Cách nấu canh rong biển truyền thống theo kiểu Hàn Quốc', 'cach-nau-canh-rong-bien-truyen-thong-theo-kieu-han-quoc', 'Canh rong biển', 'Theo người Hàn Quốc, canh rong biển là sự tượng trưng cho an lành và hạnh phúc. Chính vì vậy trong những dịp sinh nhật của người Hàn, không thể thiếu sự có mặt của món canh rong biển này.  Vì vậy nó đã trở thành món ăn truyền thống của người Hàn. Hôm nay chúng tôi sẽ chia sẻ cho các bạn yêu ẩm thực Hàn Quốc, cách nấu canh rong biển truyền thống.', '1, Nguyên liệu:\r\n - Rong biển khô 150g\r\n - Thịt bò tươi 100g\r\n - Rượu trắng (hàn quốc)\r\n - Nước tương (xì dầu hàn quốc)\r\n - Tỏi khô, muối, dầu ăn, hạt tiêu xay\r\n\r\n2, Cách làm:\r\n - Ngâm rong biển khô vào nước lạnh, khoảng 20 phút, cho rong biển nở đều. Sau đó vớt ra để ráo, và cắt miếng nhỏ vừa ăn.\r\n - Thịt bò rửa sạch, thái miếng nhỏ, ướp nước tương, hạt tiêu, 1 thìa canh rượu trắng và trộn cho thịt bò ngấm đều gia vị.\r\n - Cho chút xíu dầu ăn vào một chiếc nồi, cho thịt bò vừa ướp vào, bật lửa to để đảo cho thịt bò chín tái. Tiếp theo cho rong biển vào xào cùng, nhớ đảo đều cho rong biển và thịt bò ngấm gia vị.\r\n - Cho nước vào nồi xào rong biển thịt bò để nấu thành canh, chỗ này bạn cho nước vừa đủ để ăn thôi nhé. Băm khoảng 3 nhánh tỏi cho vào nồi canh rong biển.\r\n - Các bạn để sôi khoảng 15 phút là có thể tắt bếp và dọn canh ra ăn được rồi.\r\n\r\n-> Canh rong biển không chỉ mang giá trị truyền thống Hàn Quốc và còn mang giá trị dinh dưỡng rất lớn. Canh có tính mát, có khả năng thải độc rất tốt, phù hợp cho những người mới ốm dậy, hoặc những người có mỡ máu cao. Vì vậy các bạn hãy thử áp dụng cách nấu món canh rong biển này để dành tặng tới những người thân yêu, và chia sẻ thành quả với chúng tôi nhé! Chúc các bạn thành công!', 'canh-rong-bien.jpg', '', 1, 0, 1, 5, '2017-04-30 10:10:27', '2017-04-30 10:10:27'),
(15, 'Cách làm mực ống nhồi đậu Hà Lan ngon và đẹp mắt', 'cach-lam-muc-ong-nhoi-dau-ha-lan-ngon-va-dep-mat', 'Mực ống nhồi đậu Hà Lan', 'Mực nhồi đậu Hà Lan không chỉ là món ăn ngon, giàu dinh dưỡng mà còn có màu sắc cực hấp dẫn nữa đó. Nếu bạn vẫn chưa biết nấu món gì ngon cho bữa cơm gia đình tối nay, thì cách làm mực ống nhồi đậu Hà Lan ngon dưới đây là gợi ý tuyệt vời cho bạn đó.', '1, Nguyên liệu:\r\n - Mực ống tươi: 300g\r\n - Cá thác lác phi lê: 200g\r\n - Đậu Hà Lan: 60g\r\n - Gừng giã nát: 1-2 củ\r\n - Tỏi: 1 củ\r\n - Rau mùi: 1 mớ\r\n - Nước dùng: 2 thìa canh\r\n - Tăm nhọn: 1 gói\r\n - Gia vị: Dầu ăn, hạt nêm, hạt tiêu, dầu hào, đường\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm mực ống nhồi đậu Hà Lan:\r\n   + Cá thác phi lê rửa sạch sẽ, cho vào máy xay nhuyễn.\r\n   + Mực ống mua về mổ bỏ ruột, bỏ lớp màng tím bên ngoài đi, rửa sạch sẽ với hỗn hợp nước, gừng giã nát rồi vớt ra đĩa, để khử bớt mùi tanh của mực.\r\n   + Đậu Hà Lan rửa sạch, vớt ra rổ để ráo nước. Hoặc cẩn thận hơn bạn có thể ngâm đậu Hà Lan với nước muối loãng khoảng 5 phút.\r\n   + Rau mùi nhặt bỏ rễ, rửa sạch, ngâm với nước muối loãng khoảng 5-10 phút rồi vớt ra rổ để ráo nước.\r\n   + Tỏi bóc bỏ vỏ, đập dập rồi băm nhỏ.\r\n - Làm nhân nhồi mực: Bước đầu tiên của cách làm mực ống nhồi đậu Hà Lan ngon, bạn cho vào bát to cá đậu Hà Lan, cá thác lác xay nhuyễn, 1 thìa cà phê hạt nêm, 2 thìa cà phê hạt tiêu rồi dùng đũa đảo thật đều với nhau và ướp khoảng 10-15 phút cho thịt cá xay ngấm gia vị.\r\n - Tiếp đến, bạn dùng thìa nhỏ xúc hỗn hợp cá xay cho vào bên trong mực ống. Bạn nhồi làm sao đừng để mực không căng quá, không lỏng quá là được, rồi dùng tăm nhọn xiên qua đóng miệng mực lại cố định để cho hỗn hợp thịt cá xay không bị rơi ra ngoài. Bạn làm tương tự như vậy đến khi nào hết nguyên liệu.\r\n - Bước tiếp theo của hướng dẫn làm mực ống nhồi đậu Hà Lan, sau khi đã nhồi xong, bạn cho mực vào nồi hấp tiến hành hấp khoảng 20-30 phút cho mực và nhân, rồi rút bỏ tăm nhọn, cho mực ra đĩa.\r\n - Trong khi đợi mực chín, bạn chuẩn bị phần nước sốt mực: Bắc chảo lên bếp, đổ dầu ăn vào đun nóng già rồi cho tỏi băm vào phi thơm thì cho dầu hào, 2 thìa canh nước dùng, rồi dùng đũa  khuấy đều, đun tới khi hỗn hợp nước sốt cạn dần sánh, sền sệt lại thì tắt bếp.\r\n - Cuối cùng, thái mực thành những khoanh tròn nhỏ xếp vào đĩa, rưới phần nước sốt mực, xếp một vài cọng rau mùi lên trên để trang trí cho cách làm mực ống nhồi đậu Hà Lan thơm ngon, đẹp mắt, hấp dẫn hơn và thưởng thức khi còn nóng với cơm trắng, sẽ rất tuyệt đấy.\r\n\r\n-> Vậy là chúng ta đã hoàn thành món mực ống nhồi đậu Hà Lan ngon, bắt mắt. Chúc các bạn thành công.', 'muc-ong-nhoi-dau-ha-lan.jpg', '', 1, 0, 6, 5, '2017-04-30 10:23:32', '2017-04-30 10:23:32'),
(16, 'Bít tết sốt rượu vang cho bữa tối cuối tuần lãng mạn', 'bit-tet-sot-ruou-vang-cho-bua-toi-cuoi-tuan-lang-man', 'Bít tết sốt rượu vang', 'Miếng thịt bò mềm thơm thấm đẫm vị ngọt từ rau củ được phủ lên một lớp sốt đỏ óng ánh quyến rũ khiến bất kỳ ai cũng sẽ \"mê\" ngay từ miếng đầu tiên. Hãy khám phá ngay bây giờ cùng chúng tôi bạn nhé.', '1, Nguyên liệu:\r\n - 1.5kg thịt bò (nên mua phần nạc vai)\r\n - Muối và hạt tiêu vừa ăn\r\n - 100g thịt ba chỉ, thái hạt lựu\r\n - 2 củ hành tây, thái nhỏ\r\n - 2 củ cà rốt, thái nhỏ\r\n - 2 cây cần tây, thái nhỏ\r\n - 15ml sốt cà chua\r\n - 3 tép tỏi, băm nhỏ\r\n - 1 chai rượu vang đỏ, nên dùng loại Zinfandel\r\n - 400g cà chua, thái nhỏ để ráo nước\r\n - 15g kinh giới, thái nhỏ\r\n - 5g hương thảo, thái nhỏ\r\n\r\n2, Cách làm:\r\n - Dùng lượng muối và tiêu vừa ăn để ướp thịt bò trong lúc chuẩn bị rau củ.\r\n - Cho một chút nước vào nồi, đặt lên bếp lửa vừa và cho thịt ba chỉ vào. Khi nước bắt đầu sôi lên, vặn nhỏ lửa và đảo thịt từ từ để ra hết chất béo.\r\n - Khi thịt ba chỉ giòn và chuyển sang màu nâu, vớt hết thịt ra đĩa.\r\n - Bật sẵn lò tới 190°C. Thấm khô miếng thịt bò rồi chiên sơ trong nồi để tất cả các mặt của miếng thịt chuyển màu nâu, bỏ thịt ra đĩa.\r\n - Cho hành tây, cà rốt và cần tây vào nồi, thêm muối vừa ăn. Vặn lửa to và chiên nhanh trong 2-3 phút. Thêm sốt cà chua và khuấy đều trong 1-2 phút, sau đó cho tỏi vào đảo thêm 1 phút nữa.\r\n - Cho cà chua, thịt ba chỉ và rượu vang vào nồi, khuấy đều rồi vùi thịt bò vào giữa để sốt bao đều quanh miếng thịt.\r\n - Đậy vung và cho nồi vào lò ở nhiệt độ 190°C để trong 3 giờ. Giữa quá trình mở lò để lật miếng thịt bò lại cho các mặt ngấm đều gia vị.\r\n - Bắc nồi ra khỏi lò và vớt thịt bò ra đĩa, phủ giấy bạc để giữ nhiệt độ cho thịt. Nghiền nát rau củ trong nồi bằng thìa hoặc dụng cụ nghiền khoai tây. Đun sôi sốt cho tới khi đặc lại còn khoảng 800ml.\r\n - Lọc hỗn hợp trên qua rây, dùng thìa ấn xuống để chiết ra nhiều sốt nhất có thể. Nếu thịt bò chảy ra nước trên đĩa, đổ nước thịt ấy vào khuấy đều. Cho sốt lên bếp đun thêm vài phút tới khi đặc lại còn khoảng 350ml.\r\n - Cắt thịt bò ra thành lát dày khoảng 1.3cm, xếp lên đĩa, rưới nước sốt và thưởng thức. Ăn kèm với bánh mì hoặc khoai tây nghiền.\r\n\r\n-> Bữa tối cuối tuần lãng mạn cùng món bít tết sốt rượu vang. Chúc các bạn thực hiện thành công. Hãy tiếp tục đồng hành cùng chúng tôi để tích lũy thêm nhiều món ngon hơn nữa bạn nhé.', 'bit-tet-sot-ruou-vang.jpg', '', 1, 0, 6, 1, '2017-04-30 10:45:41', '2017-04-30 10:45:41'),
(17, 'Cách làm vải nhồi tôm thịt ngon lạ, hấp dẫn tại nhà', 'cach-lam-vai-nhoi-tom-thit-ngon-la-hap-dan-tai-nha', 'Vải nhồi tôm thịt', 'Món vải nhồi tôm thịt là sự kết hợp độc đáo giữa hương vị thơm ngon cùng màu sắc hấp dẫn ngay từ lần thưởng thức đầu tiên. Cách làm vải nhồi tôm thịt ngon độc đáo, nhưng lại có cách làm rất đơn giản. Cùng theo dõi bài viết dưới đây để khám phá cách làm món ăn này nhé.', '1, Nguyên liệu:\r\n - Vải: 400g\r\n - Tôm tươi: 200g\r\n - Thịt nạc heo: 200g\r\n - Cà rốt: 1 củ\r\n - Hành lá: 2-3 cây\r\n - Bột năng: 100g\r\n - Gia vị: Muối, hạt tiêu\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm vải nhồi tôm:\r\n   + Tôm tươi mua về rửa sạch, bóc bỏ vỏ, bỏ đầu, bỏ đuôi, rạch một đường ở sống lưng tôm, rút bỏ chỉ đen rồi rửa lại sạch sẽ và băm nhỏ.\r\n   + Vải rửa sạch, bóc bỏ vỏ, rồi dùng dao nhẹ nhàng móc bỏ hạt, không để cùi bị rách.\r\n   + Thịt heo rửa sạch, thái miếng rồi băm nhỏ.\r\n   + Hành lá cắt bỏ rễ rửa sạch, thái nhỏ.\r\n   + Cà rốt gọt bỏ vỏ, thái vài lát để trang trí, còn lại đem bào sợi.\r\n - Tiếp theo của hướng dẫn làm vải nhồi tôm thịt, bạn cho vào bát to thịt băm nhỏ, tôm băm nhỏ, cà rốt bào sợi, hành lá thái nhỏ, 1 thìa cà phê muối, 2 thìa bột năng, 1 thìa cà phê hạt tiêu rồi dùng đũa trộn đều và ướp chừng 10-15 phút cho tôm, thịt ngấm gia vị.\r\n - Sau đó, bạn dùng tay nhồi hỗn hợp thịt, tôm nhồi vào bên trong từng cùi vải rồi xếp ra đĩa. Bạn làm tương tự như vậy đến khi hết nguyên liệu.\r\n - Cho nước vào nồi hấp rồi đặt lên bếp đun với lửa to đến khi nước sôi thì bạn xếp vải nhồi tôm, thịt vào vỉ hấp tiến hành hấp tầm 15-20 phút cho vải chín đều.\r\n - Cuối cùng để hoàn thành cách làm vải nhồi tôm thịt, tắt bếp và xếp vải ra đĩa, bày vài lát cà rốt thái mỏng lên trên để trang trí cho món ăn đẹp mắt, hấp dẫn hơn và thưởng thức món vải nhồi tôm thôi nào.\r\n\r\n-> Chỉ với vài bước đơn giản các bạn đã hoàn thành xong món vải nhồi tôm thịt cực ngon rồi đó. Chúc các bạn thành công và ngon miệng với cách làm vải nhồi tôm thịt ngon các bạn nhé.\r\n', 'vai-nhoi-tom.jpg', '- Để có món vải nhồi tôm thịt ngon, khi chọn vải các bạn lưu ý chọn những quả tươi ngon, núm không bị sâu nhé.\r\n- Khi tách lấy cùi vải, các bạn nên nhẹ nhàng tránh làm hỏng lớp cùi vải như vậy món ăn sẽ không được đẹp mắt.', 1, 0, 6, 1, '2017-04-30 14:37:40', '2017-04-30 14:37:40'),
(18, 'Ếch rang muối - Bạn đã thử chưa?', 'ech-rang-muoi-ban-da-thu-chua', 'Ếch rang muối', 'Thịt ếch được chế biến thành nhiều món ăn ngon miệng, hơn nữa lại bổ dưỡng tốt cho sức khỏe. Vì vậy, các bạn hãy cùng theo dõi bài viết dưới đây để học cách làm ếch rang muối thơm ngon để chiêu đãi cả gia đình cùng thưởng thức nhé.', '1, Nguyên liệu:\r\n - Thịt ếch: 1kg\r\n - Đậu xanh đã cà vỏ: 15g\r\n - Gạo nếp ngon: 20g\r\n - Lá lốt: Khoảng 20 lá\r\n - Muối tinh: 7g\r\n - Hạt tiêu hột: 2g\r\n\r\n2, Cách làm:\r\n - Tiến hành sơ chế những nguyên liệu làm món ếch rang muối như sau:\r\n   + Thịt ếch sau khi mua về các bạn rửa thật sạch, để cho ráo nước. Sau đó dùng dao chặt thịt ếch thành từng miếng vừa ăn.\r\n   + Lá lốt các bạn rửa sạch, sau đó để ráo nước và thái thành từng khúc ngắn để riêng ra đĩa.\r\n - Thực hiện làm muối rang: Đầu tiên của hướng dẫn làm ếch rang muối, các bạn cho gạo nếp, đậu xanh, muối hạt cùng hạt tiêu vào chảo rồi bắc lên bếp đun nhỏ lửa. Khi rang các bạn chú ý dùng đũa đảo đều cho nguyên liệu chín đều. Phần đậu xanh và gạo khô phải chín giòn, có vị bùi là được.\r\n - Tiếp theo, các bạn cho hỗn hợp đậu xanh và gạo vào cối giã nhuyễn sao cho mịn như bột là được. Vậy là các bạn đã hoàn thành xong công đoạn làm phần muối rang rồi đó.\r\n - Bắc chảo lên bếp cho dầu ăn vào đun nóng già, sau đó cho thịt ếch vào chiên chín vàng đều các mặt thì vớt ếch ra rổ có lót giấy thấm dầu. Lưu ý, các bạn khi thực hiện cách làm ếch rang muối ngon, tốt nhất nên chiên ếch trong chảo sâu lòng và cho lượng dầu ngập thịt ếch là được.\r\n - Tiếp tục sử dụng chảo vừa chiên ếch, các bạn đổ bớt dầu ăn ra bát con, chỉ để lại khoảng 1 muỗng dầu trong chảo đun nóng rồi cho lá lốt thái khúc ngắn vào đảo đều khoảng 3-5 phút cho lá lốt có độ giòn thì tắt bếp.\r\n - Khi thịt ếch đã ráo bớt dầu và vẫn còn nóng, các bạn cho lá lốt chiên giòn cùng với muối rang rắc lên trên. Sau đó xóc thật đều để thịt ếch ngấm đều gia vị là được.\r\n - Cuối cùng, các bạn bày thịt ếch xóc muối ra đĩa, trang trí chút rau thơm cho có màu sắc hấp dẫn và thưởng thức món ăn tuyệt ngon này cùng với tương ớt là chuẩn vị nhé.\r\n\r\n-> Ếch rang muối là món ăn chơi ngon miệng, vô cùng hấp dẫn thích hợp vào những ngày thời tiết mưa gió. Ngoài ra, với món ăn này bạn cũng có thể trổ tài chiêu đãi ông xã làm món đồ nhắm nhé. Chúc các bạn thành công với cách làm ếch rang muối ngon tuyệt nhé.\r\n', 'ech-rang-muoi.jpg', '', 1, 0, 7, 1, '2017-04-30 14:45:17', '2017-04-30 14:45:17'),
(19, 'Cách làm ếch xào củ chuối cực ngon miệng, hấp dẫn\r\n\r\n', 'cach-lam-ech-xao-cu-chuoi-cuc-ngon-mieng-hap-dan', 'Ếch xào củ chuối', 'Ếch xào củ chuối là món ăn dân dã, ngon miệng được nhiều người yêu thích. Không chỉ vậy món ăn còn rất bổ dưỡng, do đó thỉnh thoảng các bạn có thể đổi vị với món ăn này để cả gia đình cùng thưởng thức nhé. Nào cùng bắt tay vào thực hiện cách làm ếch xào củ chuối ngon dưới đây nhé.', '1, Nguyên liệu:\r\n - Thịt ếch làm sẵn: 400g\r\n - Củ chuối: 400g\r\n - Tía tô, lá lốt: Mỗi loại 5-6 lá\r\n - Hành khô: 2 củ\r\n - Ớt tươi: 2 quả\r\n - Bột nghệ: 20g\r\n - Mẻ: 50g\r\n - Chanh: 2 quả\r\n - Gia vị: Bột nêm, bột canh, mì chính\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm ếch xào củ chuối:\r\n   + Thịt ếch mua về rửa sạch sẽ, chặt thành từng miếng vừa ăn.\r\n   + Củ chuối gọt bỏ vỏ, thái sợi nhỏ rồi ngâm với hỗn hợp nước chanh pha loãng khoảng 20-30 phút rồi vớt củ chuối ra rổ để ráo nước.\r\n   + Hành khô bóc bỏ vỏ, đập dập rồi băm nhỏ.\r\n   + Lá lốt, tía tô rửa sạch, thái nhỏ.\r\n   + Ớt rửa sạch, bổ dọc, tách bỏ hạt rồi thái sợi.\r\n - Đầu tiên của cách làm ếch xào củ chuối, bạn cho thịt ếch chặt miếng vào bát tô cho thêm 1 thìa bột nghệ, 3 thìa mè, 1 thìa bột canh, 1/2 số hành băm nhỏ, rồi dùng đũa trộn thật đều các nguyên liệu lên và ướp khoảng 15-20 phút cho thịt ếch ngấm gia vị.\r\n - Bắc chảo lên bếp, đổ dầu ăn vào đun nóng, cho số hành khô còn lại vào phi thơm rồi cho thịt ếch vào xào đảo đều với lửa vừa phải đến khi thịt ếch chín vàng đều thì tắt bếp, cho thịt ếch ra đĩa.\r\n - Sử dụng chảo xào ếch, bạn cho thêm củ chuối thái sợi, 3 thìa dầu ăn, 1 thìa cà phê muối rồi đảo đều và xào cho đến khi củ chuối chín, ngấm gia vị thì bạn cho thịt ếch chiên chín vào đảo chung.\r\n - Cuối cùng của hướng dẫn làm ếch xào củ chuối, bạn nêm nếm lại gia vị lại cho vừa ăn rồi cho lá lốt, tía tô, ớt thái sợi vào xào qua khoảng 2 phút thì tắt bếp. Cho món ếch xào củ chuối ra đĩa, rắc hạt tiêu lên trên cho món ăn dậy mùi thơm là bạn đã có thể thưởng thức được rồi.\r\n\r\n-> Vậy là các bạn đã hoàn thành xong cách làm ếch xào củ chuối ngon dân dã rồi đó. Hy vọng, với món ăn này sẽ giúp cho gia đình bạn có những bữa ăn ngon miệng nhé. Chúc các bạn thành công. ', 'ech-xao-cu-chuoi.jpg', '', 1, 0, 7, 1, '2017-04-30 14:52:03', '2017-04-30 14:52:03'),
(20, 'Cách làm cá hồi viên chiên mè ngon tuyệt đỉnh', 'cach-lam-ca-hoi-vien-chien-me-ngon-tuyet-dinh', 'Cá hồi viên chiên mè', 'Cá hồi viên chiên mè không chỉ có hương vị thơm ngon, mà còn có màu sắc cực kì hấp dẫn. Nếu bạn vẫn chưa biết nấu món gì ngon cho bữa cơm gia đình tối nay, hãy cùng tham khảo cách làm cá hồi viên chiên mè thơm ngon dưới đây nhé.', '1, Nguyên liệu:\r\n - Cá hồi: 200g\r\n - Giò sống: 200g\r\n - Mè (vừng): 60g\r\n - Tỏi: 1 củ\r\n - Hành khô: 2 củ\r\n - Hành lá, xà lách, lá đinh lăng\r\n - Gia vị: Bột canh, tương ớt, dầu ăn.\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm cá hồi viên chiên mè:\r\n   + Cá hồi mua về rửa thật sạch, dùng dao lọc lấy thịt rồi băm nhuyễn.\r\n   + Hành lá cắt bỏ rễ rửa sạch, thái nhỏ.\r\n   + Tỏi, hành khô bóc bỏ vỏ, đập dập rồi băm nhỏ.\r\n   + Xà lách, lá đinh lăng rửa sạch rồi vớt ra rổ, để ráo nước.\r\n   + Mè cho ra đĩa để riêng.\r\n - Cá hồi băm nhuyễn cho vào bát cùng với hành lá, hành, khô băm nhỏ, tỏi băm nhỏ, 1/2 thìa cà phê bột canh, hạt tiêu rồi dùng đũa trộn các nguyên liệu lại với nhau và ướp khoảng 15-20 phút cho cá ngấm gia vị.\r\n - Sau khi cá ướp đã ngấm gia vị, bạn chia hỗn hợp cá ra thành các phần nhỏ rồi viên tròn lại to bằng quả chanh là được. Sau đó tẩm cá viên vào đĩa mè để cho mè bám phủ kín đều lên mặt cá viên, rồi cho ra đĩa. Bạn làm tương tự đến khi hết nguyên liệu thực hiện hướng dẫn làm cá hồi viên chiên mè.\r\n - Cuối cùng, bạn đặt chảo lên bếp, cho dầu ăn vào đun nóng già, rồi thả cá viên vào chiên với lửa nhỏ vừa đến khi cá viên chín, vàng đều thì gắp ra giấy thấm bớt dầu rồi cho ra đĩa và thưởng thức.\r\n\r\n-> Món cá hồi viên chiên mè còn là món ăn bổ dưỡng, chính vì vậy bạn nên học cách làm cá hồi viên chiên mè ngon để thỉnh thoảng trổ tài chiêu đãi cả gia đình cùng thưởng thức nhé. Chúc các bạn thành công và ngon miệng.', 'ca-hoi-vien-chien-me.jpg', 'Để cách làm cá hồi viên chiên mè vàng đều, thơm ngon, đẹp mắt thì bạn nên dùng chảo sâu lòng và chiên cá viên ngập dầu.', 1, 0, 6, 5, '2017-04-30 14:59:32', '2017-04-30 14:59:32'),
(21, 'Cách làm trứng cút om nước tương ngon, đậm đà', 'cach-lam-trung-cut-om-nuoc-tuong-ngon-dam-da', 'Trứng cút om nước tương', 'Trứng cút om tương là sự kết hợp độc đáo cho bữa cơm buổi tối của gia đình bạn đó. Cách làm trứng cút om tương đơn giản, không tốn nhiều thời gian nấu nướng mà vẫn đảm bảo được lượng dinh dưỡng cho gia đình bạn. Nào cùng bắt tay vào thực hiện cách làm trứng cút om nước tương ngon nhé.', '1, Nguyên liệu:\r\n - Trứng cút: 15 quả\r\n - Gừng, ớt khô, hành khô\r\n - Đường phèn: 4-5 viên\r\n - Vừng trắng: 100g\r\n - Gia vị: Dầu ăn, nước tương, muối, mì chính\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm trứng cút om nước tương:\r\n   + Hành khô bóc bỏ vỏ, đập dập, băm nhỏ.\r\n   + Gừng cạo bỏ vỏ, rửa sạch thái lát nhỏ.\r\n   + Hành khô bóc bỏ vỏ, băm nhỏ.\r\n   + Ớt khô rửa sạch, để ráo.\r\n - Bạn cho trứng cút vào nồi nước, đặt lên bếp luộc chín rồi vớt ra bát nước lạnh ngâm khoảng 1-2 phút rồi bóc bỏ vỏ, cho trứng vào bát để riêng.\r\n - Bước tiếp theo của hướng dẫn làm trứng cút om tương, các bạn bắc chảo lên bếp đun nóng, rồi cho vừng trắng vào rang chín thơm rồi cho ra bát.\r\n - Bắc chảo lên bếp cho đường phèn vào đun nhỏ lửa cho đường phèn tan đều, rồi cho gừng thái lát, hành khô băm nhỏ, ớt khô cùng trứng cút luộc chín vào đảo thật đều. Tiếp theo, các bạn cho thêm nước lọc cùng 1 thìa canh nước tương đảo đều sao cho nước om ngập khoảng 1/3 quả trứng là được.\r\n - Các bạn đun cho tới khi hỗn hợp nước tương sôi, thì cho nhỏ lửa rồi cho thêm muối vừa vị ăn và tiếp tục đun cho tới khi nước trong chảo sánh lại và sền sệt, trứng cút ngấm đều gia vị. Tiếp theo, các bạn cho vừng rang chín thơm cùng chút mì chính vào đảo thật đều, đun thêm 3-5 phút cho ngấm đều gia vị thì tắt bếp.\r\n - Cuối cùng của cách làm trứng cút om tương dân dã, các bạn bày trứng cút ra bát trang trí thêm vài cọng mùi cho đẹp mắt. Thưởng thức món trứng cút cùng với cơm nóng rất ngon đó.\r\n\r\n-> Món trứng cút om tương không chỉ ngon miệng, mà còn có cách làm đơn giản, lại tiết kiệm được chi phí nấu nướng cho gia đình bạn. Chúc các bạn thành công và ngon miệng với cách làm trứng cút om tương ngon, hấp dẫn nhé.', 'trung-cut-om-tuong.jpg', '', 1, 0, 2, 2, '2017-04-30 15:24:54', '2017-04-30 15:24:54'),
(22, 'Cách làm ngao hoa xào bơ tỏi ngon tuyệt cú mèo', 'cach-lam-ngao-hoa-xao-bo-toi-ngon-tuyet-cu-meo', 'Ngao hoa xào bơ tỏi', 'Từ ngao hoa bạn có thể chế biến được nhiều món ăn ngon cho gia đình, trong đó món ngao hoa xào bơ tỏi với hương vị cực thơm ngon, hấp dẫn. Nếu bạn vẫn chưa biết nấu món gì ngon cho bữa cơm tối này, thì món ăn này là gợi ý tuyệt vời cho gia đình bạn. Cùng theo dõi bài viết dưới đây để học cách làm ngao hoa xào bơ tỏi ngon tuyệt các bạn nhé.', '1, Nguyên liệu:\r\n - Ngao hoa: 600g\r\n - Bơ: 20g\r\n - Tỏi, hành lá, rau húng quế\r\n - Rượu trắng: 5 thìa\r\n - Gia vị: Đường, muối\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm ngao hoa xào bơ tỏi:\r\n   + Ngao hoa mua về rửa sạch, ngâm với hỗn hợp nước muối loãng và ớt khoảng 5 tiếng cho ngao nhả hết bùn đất ra, rồi rửa lại sạch sẽ và vớt ra rổ để cho ráo nước.\r\n   + Hành lá cắt bỏ rễ, rửa sạch, băm nhỏ.\r\n   + Tỏi bóc bỏ vỏ, đập dập băm nhỏ.\r\n   + Hành lá rửa sạch, thái nhỏ.\r\n   + Rau húng quế rửa sạch, vớt ra rổ để ráo nước.\r\n - Bạn cho bơ vào chảo rồi bắc lên bếp đun nóng cho bơ tan chảy thì cho tỏi băm nhỏ vào phi thơm. Sau đó cho ngao vào đảo sơ qua khoảng 5 phút rồi thêm 5 thìa rượu trắng vào đảo đều cho ngao dậy mùi thơm.\r\n - Khi ngao chín, há miệng bạn cho thêm muối, đường, muối sao cho vừa miệng ăn rồi xào thêm khoảng 5 phút nữa thì cho rau húng quế, hành lá thái nhỏ vào đảo đều khoảng vài lượt rồi tắt bếp.\r\n - Cuối cùng, bạn cho ngao hoa xào bơ tỏi ra đĩa rồi bày ra mâm và mời gia đình cùng dùng nóng với cơm trắng, sẽ hấp dẫn hơn rất nhiều đấy.\r\n\r\n-> Món ngao hoa xào bơ tỏi hấp dẫn bởi mùi thơm đặc trưng của tỏi, vị ngọt đậm tự nhiên quyện đều với vị bơ nhưng không hề ngấy chút nào nhé. Đặc biệt với món ăn này các bạn có thể ăn kèm với rau húng quế rất thơm. Cách làm ngao xào bơ tỏi ngon tuyệt này sẽ là gợi ý tuyệt vời để làm món nhậu cho ông xã nữa đấy.\r\n', 'ngao-xao-bo-toi.jpg', '- Vì ngao hoa đã có vị mặn sẵn rồi, do đó khi nấu các bạn không cần cho thêm gia vị hoặc cho thêm một chút thôi nhé.\r\n- Trong trường hợp muốn ăn cay, các bạn có thể cho thêm vài lát ớt vào.', 1, 0, 6, 2, '2017-04-30 15:33:56', '2017-04-30 15:33:56');
INSERT INTO `monan` (`id`, `TieuDe`, `TieuDeKhongDau`, `TenMon`, `TomTat`, `NoiDung`, `Hinh`, `Chu_Y`, `NoiBat`, `SoLuotXem`, `id_LoaiMon`, `id_VungMien`, `created_at`, `updated_at`) VALUES
(23, 'Cách làm gà cuộn rong biển chiên xù ngon giòn đẹp mắt', 'cach-lam-ga-cuon-rong-bien-chien-xu-ngon-gion-dep-mat', 'Gà cuộn rong biển chiên xù', 'Bên cạnh những món ăn quen thuộc được chế biến từ thịt gà, các bạn cũng có thể đổi vị với những món ăn ngon khác cũng rất hấp dẫn đó nhé. Món gà cuộn rong biển chiên xù là gợi ý tuyệt vời cho bữa cơm gia đình tối nay của gia đình bạn đó. Cùng theo dõi bài viết dưới đây để học cách làm gà cuộn rong biển chiên xù ngon dưới đây nhé.', '1, Nguyên liệu:\r\n - Ức gà: 3 cái\r\n - Thịt cua: 200g (Bạn nên mua thịt cua làm sẵn để tiết kiệm thời gian chế biến)\r\n - Rong biển: 3 tấm\r\n - Trứng gà: 3 quả\r\n - Lá húng quế: 5-6 lá\r\n - Bột mì: 30g\r\n - Bột chiên giòn: 40g\r\n - Gia vị: Muối, hạt tiêu xay, dầu ăn\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm gà cuộn rong biển chiên xù:\r\n   + Ức gà mua về rửa thật sạch, thái mỏng, bản to.\r\n   + Trứng gà đập vào bát, dùng đũa đánh tan.\r\n   + Lá húng quế rửa sạch, để ráo nước.\r\n   + Trộn đều bột giòn, bột chiên xù vào đĩa sâu lòng.\r\n - Tiếp theo của hướng dẫn làm gà cuộn rong biển chiên xù, bạn dải miếng nilon sạch ra mâm, rồi xếp 3 miếng thịt gà mỏng lên nilon rồi rắc một chút hạt tiêu, muối lên thịt để cách làm gà cuộn rong biển chiên xù ngon, đậm vị hơn. Sau đó, dùng kéo cắt miếng rong biển bằng kích thước của 3 miếng thịt gà rồi xếp lên trên thịt, rồi phết thịt cua, lá húng quế dải đều lên trên và cuộn tròn lại. Bạn làm tương tự như vậy đến khi hết nguyên liệu.\r\n - Bắc chảo sâu lòng lên bếp, đổ dầu ăn vào đun nóng già rồi nhúng gà cuộn rong biển nhúng vào bát trứng rồi tẩm qua hỗn hợp bột chiên xù, rồi cho vào chảo chiên với lửa vừa phải đến khi thịt gà cuộn chín thơm vàng đều thì tắt bếp, vớt gà cuộn ra bát lót giấy thấm dầu.\r\n - Cuối cùng của cách làm gà cuộn rong biển chiên xù, đợi gà cuộn rong biển chiên xù nguội bớt, bạn đem thái thành từng khoanh vừa ăn và xếp vào đĩa rồi dùng nóng và chấm kèm với tương ớt cay sẽ hấp dẫn hơn rất nhiều.\r\n\r\n-> Cách làm gà cuộn rong biển chiên xù thơm ngon là món ăn hấp dẫn, tuyệt vời cho bữa cơm gia đình bạn, đặc biệt là vào những ngày trời đông se lạnh. Chúc các bạn thành công và ngon miệng với món ăn này nhé.', 'ga-cuon-rong-bien.jpg', '', 1, 0, 6, 5, '2017-04-30 15:39:29', '2017-04-30 15:39:29'),
(24, 'Cách làm hủ tiếu xào chay vị me cực ngon, dễ làm', 'cach-lam-hu-tieu-xao-chay-vi-me-cuc-ngon-de-lam', 'Hủ tiếu xào', 'Ăn chay không chỉ ngon miệng mà còn rất tốt cho sức khỏe. Bạn có thể thưởng thức rất nhiều món ăn chay khác nhau, trong đó món hủ tiếu chay vị me là gợi ý tuyệt vời cho bạn đó. Cùng theo dõi bài viết dưới đây để học cách làm hủ tiếu chay vị me ngon các bạn nhé.', '1, Nguyên liệu:\r\n - Hủ tiếu mềm, sợi to: 500g\r\n - Nước cốt me: 1 bát con\r\n - Đậu phụ: 2 bìa\r\n - Nấm rơm: 200g\r\n - Giá: 300g\r\n - Hẹ: 60g\r\n - Cà rốt: 60g\r\n - Ngò rí, hành boa rô (tỏi tây), ớt tươi\r\n - Gia vị: Tương ớt, dầu hào chay, nước tương, hạt tiêu xay, đường, muối, dầu ăn, bột ngọt.\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm hủ tiếu xào chay vị me:\r\n   + Nấm rơm rửa sạch, cắt bỏ chân, bổ đôi.\r\n   + Đậu phụ, thái thành từng miếng vừa ăn.\r\n   + Giá, ngò rí rửa sạch, vớt ra rổ để ráo nước.\r\n   + Hành cắt rễ, rửa sạch, rồi thái khúc ngắn.\r\n   + Cà rốt gọt bỏ vỏ, rửa sạch, rồi đem thái sợi nhỏ.\r\n   + Hành boa rô cắt rễ, rửa sạch, thái nhỏ.\r\n   + Ớt tươi rửa sạch, bổ đôi, tách bỏ hạt rồi thái nhỏ.\r\n - Đầu tiên của cách làm hủ tiếu xào chay vị me, bạn đặt chảo lên bếp, cho dầu ăn vào đun nóng rồi cho đậu thái miếng vào rán chín, vàng đều thì gắp đậu ra đĩa. Đợi đậu nguội bớt thì dùng kéo cắt đậu miếng nhỏ.\r\n - Chuẩn bị 1/2 nồi nước, đặt lên bếp đun sôi rồi thả hủ tiếu vào chần sơ qua cho mềm rồi vớt ra bát.\r\n - Bắc chảo lên bếp, cho dầu ăn vào đun nóng, cho 1/2 hành boa rô vào phi thơm, rồi cho hủ tiếu vào áp chảo nhanh khoảng 5 phút thì tắt bếp, để hướng dẫn làm hủ tiếu xào chay vị me sẽ săn, giòn thơm hơn rất nhiều.\r\n - Pha chế hỗn hợp nước sốt: Cho vào bát 2 thìa dầu hào chay, 2 thìa đường, 1/2 bát con nước cốt me, 1/2 thìa nước tương, 2 thìa cà phê muối, 2 thìa cà phê bột ngọt, 1/2 thìa cà phê hạt tiêu, 2 thìa tương ớt rồi dùng đũa khuấy thật đều là cho hòa quyện tạo thành hỗn hợp nước sốt.\r\n - Cuối cùng, bạn cho dầu ăn vào chảo đun nóng rồi cho nốt 1/2 hành boa rô vào phi thơm cùng giá, nấm rơm, cà rốt, đậu rán rồi đảo khoảng 5 phút cho cho hỗn hợp nước sốt vào đảo chung. Bạn xào tới khi rau củ ngấm gia vị thì cho hành, hủ tiếu áp chảo vào đảo đều khoảng vài lượt thì tắt bếp. Cho món ăn ra đĩa rồi rắc hạt tiêu,  vài cọng ngò để trang trí cho cách làm hủ tiếu xào chay vị me đẹp mắt, hấp dẫn hơn và thưởng thức thôi nào.\r\n\r\n-> Cùng thực hiện cách làm hủ tiếu chay vị me thơm ngon, độc đáo để thay đổi thực đơn cho bữa cơm gia đình bạn thêm ngon miệng nhé. Chúc các bạn thành công.', 'hu-tieu-xao-chay.jpg', '', 1, 0, 5, 4, '2017-04-30 15:47:34', '2017-04-30 15:47:34'),
(25, 'Cách làm ốc bươu kho gừng ngon cơm cho cả nhà', 'cach-lam-oc-buou-kho-gung-ngon-com-cho-ca-nha', 'Ốc bươu kho gừng', 'Vào những ngày thời tiết mưa gió hoặc se lạnh các bạn có thể chế biến món ốc kho gừng ngon, ấm bụng để thưởng thức nhé. Chắc chắn với món ăn này sẽ rất tốn cơm đó. Bài viết dưới đây sẽ hướng dẫn các bạn cách làm ốc bươu kho gừng ngon, đậm đà nhé.', '1, Nguyên liệu:\r\n - Ốc bươu: 600g\r\n - Gừng, hành khô, tỏi\r\n - Ớt hiểm: 4 quả\r\n - Gia vị: Dầu ăn, hạt điều, muối, đường, nước mắm, hạt nêm, giấm gạo\r\n\r\n2, Cách làm:\r\n - Sơ chế nguyên liệu làm ốc bươu kho gừng:\r\n   + Ốc bươu mua về rửa sạch, bạn đem ốc ngâm với hỗn hợp nước muối, gừng khoảng 3-4 tiếng cho ốc nhả bớt bẩn và nhớt. Rồi cho ốc vào nồi luộc chín, dùng tăm nhọn khêu lấy thịt ốc rồi tách bỏ phần đuôi ốc đi, rồi cho ra bát. Sau đó, thịt ốc bóp sạch với muối và giấm rồi rửa thật sạch.\r\n   + Hành khô, tỏi bóc bỏ vỏ đập dập, băm nhỏ.\r\n   + Gừng gọt bỏ vỏ, thái nhỏ.\r\n   + Ớt hiểm rửa sạch, bổ đôi, tách bỏ hạt rồi thái nhỏ.\r\n - Đầu tiên của cách làm ốc bươu kho gừng ngon, thịt ốc bạn cho vào bát cho thêm 1/2 thìa cà phê hạt nêm, 1/2 thìa cà phê muối, 2 thìa cà phê giấm, gừng thái sợi, hành, tỏi băm nhỏ, ớt băm nhỏ rồi xóc đều và ướp chừng 20 phút cho thịt ốc ngấm gia vị.\r\n - Sau đó, bạn bắc chảo lên bếp, cho dầu ăn vào đun nóng rồi cho ốc vào đảo qua cho thịt ốc chín tái, săn lại, thì cho 2 bát con nước, dầu điều để tạo màu cho món ăn, muối rồi tiếp tục đun với lửa nhỏ đến khi nào phần nước kho cạn dần, sánh, sền sệt là được.\r\n - Cuối cùng để hoàn thành xong hướng dẫn làm ốc bươu kho gừng, bạn nêm lại gia vị cho vừa ăn rồi tắt bếp. Vậy là bạn đã hoàn thành xong cách làm ốc bươu kho gừng thơm ngon, hấp dẫn tại nhà rồi nhé, giờ thì cho món ăn ra bát và mời gia đình cùng thưởng thức thôi nào.\r\n\r\n-> Cách làm ốc bươu kho gừng đơn giản, chỉ với những nguyên liệu dễ kiếm cùng các bước thực hiện dễ dàng các bạn đã có món ăn ngon tuyệt để cả gia đình cùng thưởng thức rồi đó. Chúc các bạn thành công và ngon miệng nhé.', 'oc-buou-kho-gung.jpg', '', 1, 0, 6, 4, '2017-04-30 15:53:48', '2017-04-30 15:53:48'),
(26, 'Dễ làm,ngon,bổ', 'de-lam-ngon-bo', 'Gà Hầm Dưa Hấu', '<p>- Miếng thịt bò mềm thơm thấm đẫm vị ngọt từ rau củ được phủ lên một lớp sốt đỏ óng ánh quyến rũ khiến bất kỳ ai cũng sẽ \"mê\" ngay từ miếng đầu tiên. Hãy khám phá ngay bây giờ cùng chúng tôi bạn nhé.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&lt;b&gt;1, Nguyên liệu:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;&lt;i&gt;- 1.5kg thịt bò (nên mua phần nạc vai)&lt;br /&gt;<br />\r\n&nbsp;- Muối và hạt tiêu vừa ăn&lt;br /&gt;<br />\r\n&nbsp;- 100g thịt ba chỉ, thái hạt lựu&lt;br /&gt;<br />\r\n&nbsp;- 2 củ hành tây, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 2 củ cà rốt, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 2 cây cần tây, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 15ml sốt cà chua&lt;br /&gt;<br />\r\n&nbsp;- 3 tép tỏi, băm nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 1 chai rượu vang đỏ, nên dùng loại Zinfandel&lt;br /&gt;<br />\r\n&nbsp;- 400g cà chua, thái nhỏ để ráo nước&lt;br /&gt;<br />\r\n&nbsp;- 15g kinh giới, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 5g hương thảo, thái nhỏ&lt;/i&gt;&lt;br /&gt;</p>\r\n\r\n<p>&lt;b&gt;2, Cách thực hiện:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 1:&lt;/b&gt; Dùng lượng muối và tiêu vừa ăn để ướp thịt bò trong lúc chuẩn bị rau củ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 2:&lt;/b&gt; Cho một chút nước vào nồi, đặt lên bếp lửa vừa và cho thịt ba chỉ vào. Khi nước bắt đầu sôi lên, vặn nhỏ lửa và đảo thịt từ từ để ra hết chất béo.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 3:&lt;/b&gt; Khi thịt ba chỉ giòn và chuyển sang màu nâu, vớt hết thịt ra đĩa.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 4:&lt;/b&gt; Bật sẵn lò tới 190°C. Thấm khô miếng thịt bò rồi chiên sơ trong nồi để tất cả các mặt của miếng thịt chuyển màu nâu, bỏ thịt ra đĩa.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 5:&lt;/b&gt; Cho hành tây, cà rốt và cần tây vào nồi, thêm muối vừa ăn. Vặn lửa to và chiên nhanh trong 2-3 phút. Thêm sốt cà chua và khuấy đều trong 1-2 phút, sau đó cho tỏi vào đảo thêm 1 phút nữa.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 6:&lt;/b&gt; Cho cà chua, thịt ba chỉ và rượu vang vào nồi, khuấy đều rồi vùi thịt bò vào giữa để sốt bao đều quanh miếng thịt.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 7:&lt;/b&gt; Đậy vung và cho nồi vào lò ở nhiệt độ 190°C để trong 3 giờ. Giữa quá trình mở lò để lật miếng thịt bò lại cho các mặt ngấm đều gia vị.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 8:&lt;/b&gt; Bắc nồi ra khỏi lò và vớt thịt bò ra đĩa, phủ giấy bạc để giữ nhiệt độ cho thịt. Nghiền nát rau củ trong nồi bằng thìa hoặc dụng cụ nghiền khoai tây. Đun sôi sốt cho tới khi đặc lại còn khoảng 800ml.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 9:&lt;/b&gt; Lọc hỗn hợp trên qua rây, dùng thìa ấn xuống để chiết ra nhiều sốt nhất có thể. Nếu thịt bò chảy ra nước trên đĩa, đổ nước thịt ấy vào khuấy đều. Cho sốt lên bếp đun thêm vài phút tới khi đặc lại còn khoảng 350ml.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 10:&lt;/b&gt; Cắt thịt bò ra thành lát dày khoảng 1.3cm, xếp lên đĩa, rưới nước sốt và thưởng thức. Ăn kèm với bánh mì hoặc khoai tây nghiền.&lt;br /&gt;</p>\r\n\r\n<p>&lt;hr /&gt;</p>\r\n\r\n<p>Bữa tối cuối tuần lãng mạn cùng món &lt;b&gt;Bít tết sốt rượu vang&lt;/b&gt;. Chúc các bạn thực hiện thành công. Hãy tiếp tục đồng hành cùng chúng tôi để tích lũy thêm nhiều món ngon hơn nữa bạn nhé.</p>\r\n', 'I0LA_ga-hap-la-truc.jpg', '', 1, 1, 9, 3, '2017-05-03 16:08:35', '2017-05-08 09:05:03'),
(27, '<h1>Cách nấu canh dưa leo nhồi thịt ngon, hấp dẫn cho mùa hè</h1>', '-h1-cach-nau-canh-dua-leo-nhoi-thit-ngon-hap-dan-cho-mua-he-h1-', 'Canh dưa leo nhồi thịt', '<p>- &lt;b&gt;Canh dưa leo nhồi thịt&lt;/b&gt; là món ăn rất được ưa thích trong mùa hè này. Đây là món canh thơm ngon, lạ miệng, phù hợp với khẩu vị của tất cả mọi người. Hãy cùng chúng tôi xuống bếp khám phá cách nấu canh dưa leo nhồi thịt ngon, hấp dẫn cho mùa hè này nhé.&lt;br /&gt;</p>\r\n\r\n<div style=\"background:#eee;border:1px solid #ccc;padding:5px 10px;\">\r\n<p>&nbsp;</p>\r\n</div>\r\n', '<p>&lt;b&gt;1, Nguyên liệu:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;&lt;i&gt;- 200g thịt nạc tươi, ngon&lt;br /&gt;<br />\r\n&nbsp;– Hành lá 3 nhánh&lt;br /&gt;<br />\r\n&nbsp;– Mộc nhĩ&lt;br /&gt;<br />\r\n&nbsp;– Miến khô ngâm nở&lt;br /&gt;<br />\r\n&nbsp;– Cà rốt 1 củ nhỏ&lt;br /&gt;<br />\r\n&nbsp;– 4 trái dưa leo (dưa chuột)&lt;br /&gt;<br />\r\n&nbsp;– Rau mùi&lt;br /&gt;<br />\r\n&nbsp;– Gia vị thông thường và bột ngọt, hạt tiêu&lt;/i&gt;&lt;br /&gt;</p>\r\n\r\n<p>&lt;b&gt;2, Cách thực hiện:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 1:&lt;/b&gt; Sơ chế nguyên liệu:&lt;br /&gt;</p>\r\n\r\n<p>&nbsp; &nbsp;+ Dưa chuột: Dưa leo chọn trái vừa, suôn, có màu xanh để món canh dưa leo nhồi thịt đẹp mắt hơn. Sau khi mua dưa về bạn nên đem ngâm qua nước muối từ 10 – 15 phút để làm sạch dưa. Sau đó đem nạo bỏ vỏ, cắt khúc, mỗi khúc khoảng 3cm. Tiếp theo bạn dùng thìa hoặc dao nhọn khoét hết bỏ ruột.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp; &nbsp;+ Miến khô: ngâm với nước 10 – 15 phút để miến nở ra, rồi đem cắt nhỏ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp; &nbsp;+ Cà rốt gọt sạch vỏ, tỉa hoa rồi cắt khúc 1cm. Nếu bạn không biết cách tỉa hoa thì có thể cắt thành những miếng nhỏ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp; &nbsp;+ Hành lá rửa sạch rồi cắt nhỏ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp; &nbsp;+ Mộc nhĩ ngâm nước ấm cho nở ra, đem rửa bằng nước sạch nhiều lần rồi cũng đem băm nhỏ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp; &nbsp;+ Thịt lợn bạn đem rửa sạch rồi băm thật nhỏ, hoặc cho vào máy xay. Nếu cho vào máy xay thịt sẽ được nhuyễn hơn, dễ nhồi hơn.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 2:&lt;/b&gt; Sau khi sơ chế nguyên liệu nấu canh dưa leo nhồi thịt xong xuôi, chúng ta cùng bắt tay vào thực hiện hướng dẫn cách nấu canh dưa leo nhồi thịt hấp dẫn. Thịt nạc băm, mộc nhĩ, miến, gia vị trộn lẫn với nhau, đảo đều lên. Nhồi hỗn hợp thịt trên vào trong dưa leo đã bỏ ruột bằng cách dùng một chiếc thìa nhỏ xúc từng ít hỗn hợp thịt trên nhồi thật chặt vào dưa leo, để khi đun thịt sẽ không bị vữa ra.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 3:&lt;/b&gt; Tiếp theo bạn đun sôi 1,5 lít nước, nếu trời nóng bạn có thể cho thêm nước. Vì trời nóng thì mọi người có xu hướng ăn nhiều canh hơn. Sau đó, cho dưa leo đã nhồi thịt và cà rốt vào đun chín, nêm lại gia vị cho vừa ăn rồi rắc hành lá, tắt bếp.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 4:&lt;/b&gt; Thưởng thức món canh dưa leo nhồi thịt. Cách nấu canh dưa leo nhồi thịt đơn giản, ngon mát ngày hè đã hoàn thành rồi đấy các bạn. Lúc này bạn chỉ việc múc canh ra bát tô rồi rắc một ít hạt tiêu lên trên để món ăn được thơm hơn. Hãy cùng gia đình thưởng thức món canh giải nhiệt cho mùa hè này nào các bạn.&lt;br /&gt;</p>\r\n\r\n<p>&lt;hr /&gt;</p>\r\n', 'YRGS_canh-dua-leo-nhoi-thit.jpg', '', 1, 0, 12, 4, '2017-05-03 16:21:30', '2017-05-03 16:21:30'),
(28, '<h1>Cách làm chả cá basa hấp ngon và dinh dưỡng</h1>', '-h1-cach-lam-cha-ca-basa-hap-ngon-va-dinh-duong-h1-', 'Chả cá basa hấp trứng', '<p>- Cá basa là món ăn dinh dưỡng và rất tốt cho sức khỏe. Nếu bạn ngại chế biến món cá basa sốt, nấu canh hay kho vì không có nhiều thời gian nấu nướng, thì hãy cùng đổi vị với cách làm &lt;b&gt;Chả cá basa hấp trứng &lt;/b&gt;tuyệt ngon dưới đây nhé.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&lt;b&gt;1, Nguyên liệu:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;&lt;i&gt;- Cá basa: 900g&lt;br /&gt;<br />\r\n&nbsp;- Trứng: 5 quả&lt;br /&gt;<br />\r\n&nbsp;- Hành lá + gừng&lt;br /&gt;<br />\r\n&nbsp;- Gia vị: muối, tiêu trắng xay&lt;/i&gt;&lt;br /&gt;</p>\r\n\r\n<p>&lt;b&gt;2, Cách thực hiện:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 1:&lt;/b&gt; Cá basa khi mua về sơ chế sạch, rửa với nước muối, dùng dao lọc lấy thịt cá, bỏ đầu, da, xương, thái nhỏ, cho ra bát. Đập trứng tách lấy lòng đỏ, lòng trắng để riêng ra hai bát.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 2:&lt;/b&gt; Cho gừng, hành cắt khúc và nước vào máy xay nhỏ. Sau đó cho cá, muối, hạt tiêu và lòng trắng trứng vào. Xay đến khi hỗn hợp đặc sệt cho vào nước không bị tan ra là được.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 3:&lt;/b&gt; Phết một lớp dầu mỏng đều quanh bát, cho cá vào, dàn đều. Cho vào nồi hấp trong vòng 30 phút.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 4:&lt;/b&gt; Đổ phần lòng đỏ trứng lên bề mặt và hấp thêm 5-10 phút nữa để món chả cá basa hấp ngon, hấp dẫn hơn. Khi thấy bề mặt trứng đã chín vàng và khô thì lấy ra, để nguội và thái nhỏ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 5:&lt;/b&gt; Pha nước chấm cho món chả cá basa hấp: Cho nước tương, giấm, đường và sa tế vào bát, khuấy đều. Cho chả cá hấp ra đĩa dùng kèm với cơm trắng.&lt;br /&gt;</p>\r\n\r\n<p>&lt;hr /&gt;</p>\r\n\r\n<p>Trên đây là hướng dẫn cách làm &lt;b&gt;Chả cá basa hấp trứng&lt;/b&gt; đậm đà, đưa cơm. Hy vọng có thể giúp bạn đọc học được cho mình một món ăn ngon khác được chế biến từ cá basa ngon nhé. Chúc các bạn thành công và ngày càng học được nhiều món ăn ngon!</p>\r\n', 'iHqz_cha-ca-basa-hap.jpg', '', 1, 0, 10, 2, '2017-05-03 16:37:21', '2017-05-03 16:37:21'),
(29, '<h1>Bít tết sốt rượu vang cho bữa tối cuối tuần lãng mạn</h1>', '-h1-bit-tet-sot-ruou-vang-cho-bua-toi-cuoi-tuan-lang-man-h1-', 'Bò basa', '<p>- Miếng thịt bò mềm thơm thấm đẫm vị ngọt từ rau củ được phủ lên một lớp sốt đỏ óng ánh quyến rũ khiến bất kỳ ai cũng sẽ \"mê\" ngay từ miếng đầu tiên. Hãy khám phá ngay bây giờ cùng chúng tôi bạn nhé.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&lt;b&gt;1, Nguyên liệu:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;&lt;i&gt;- 1.5kg thịt bò (nên mua phần nạc vai)&lt;br /&gt;<br />\r\n&nbsp;- Muối và hạt tiêu vừa ăn&lt;br /&gt;<br />\r\n&nbsp;- 100g thịt ba chỉ, thái hạt lựu&lt;br /&gt;<br />\r\n&nbsp;- 2 củ hành tây, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 2 củ cà rốt, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 2 cây cần tây, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 15ml sốt cà chua&lt;br /&gt;<br />\r\n&nbsp;- 3 tép tỏi, băm nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 1 chai rượu vang đỏ, nên dùng loại Zinfandel&lt;br /&gt;<br />\r\n&nbsp;- 400g cà chua, thái nhỏ để ráo nước&lt;br /&gt;<br />\r\n&nbsp;- 15g kinh giới, thái nhỏ&lt;br /&gt;<br />\r\n&nbsp;- 5g hương thảo, thái nhỏ&lt;/i&gt;&lt;br /&gt;</p>\r\n\r\n<p>&lt;b&gt;2, Cách thực hiện:&lt;/b&gt;&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 1:&lt;/b&gt; Dùng lượng muối và tiêu vừa ăn để ướp thịt bò trong lúc chuẩn bị rau củ.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 2:&lt;/b&gt; Cho một chút nước vào nồi, đặt lên bếp lửa vừa và cho thịt ba chỉ vào. Khi nước bắt đầu sôi lên, vặn nhỏ lửa và đảo thịt từ từ để ra hết chất béo.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 3:&lt;/b&gt; Khi thịt ba chỉ giòn và chuyển sang màu nâu, vớt hết thịt ra đĩa.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 4:&lt;/b&gt; Bật sẵn lò tới 190°C. Thấm khô miếng thịt bò rồi chiên sơ trong nồi để tất cả các mặt của miếng thịt chuyển màu nâu, bỏ thịt ra đĩa.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 5:&lt;/b&gt; Cho hành tây, cà rốt và cần tây vào nồi, thêm muối vừa ăn. Vặn lửa to và chiên nhanh trong 2-3 phút. Thêm sốt cà chua và khuấy đều trong 1-2 phút, sau đó cho tỏi vào đảo thêm 1 phút nữa.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 6:&lt;/b&gt; Cho cà chua, thịt ba chỉ và rượu vang vào nồi, khuấy đều rồi vùi thịt bò vào giữa để sốt bao đều quanh miếng thịt.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 7:&lt;/b&gt; Đậy vung và cho nồi vào lò ở nhiệt độ 190°C để trong 3 giờ. Giữa quá trình mở lò để lật miếng thịt bò lại cho các mặt ngấm đều gia vị.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 8:&lt;/b&gt; Bắc nồi ra khỏi lò và vớt thịt bò ra đĩa, phủ giấy bạc để giữ nhiệt độ cho thịt. Nghiền nát rau củ trong nồi bằng thìa hoặc dụng cụ nghiền khoai tây. Đun sôi sốt cho tới khi đặc lại còn khoảng 800ml.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 9:&lt;/b&gt; Lọc hỗn hợp trên qua rây, dùng thìa ấn xuống để chiết ra nhiều sốt nhất có thể. Nếu thịt bò chảy ra nước trên đĩa, đổ nước thịt ấy vào khuấy đều. Cho sốt lên bếp đun thêm vài phút tới khi đặc lại còn khoảng 350ml.&lt;br /&gt;</p>\r\n\r\n<p>&nbsp;- &lt;b&gt;Bước 10:&lt;/b&gt; Cắt thịt bò ra thành lát dày khoảng 1.3cm, xếp lên đĩa, rưới nước sốt và thưởng thức. Ăn kèm với bánh mì hoặc khoai tây nghiền.&lt;br /&gt;</p>\r\n\r\n<p>&lt;hr /&gt;</p>\r\n\r\n<p>Bữa tối cuối tuần lãng mạn cùng món &lt;b&gt;Bít tết sốt rượu vang&lt;/b&gt;. Chúc các bạn thực hiện thành công. Hãy tiếp tục đồng hành cùng chúng tôi để tích lũy thêm nhiều món ngon hơn nữa bạn nhé.</p>\r\n', 'U5nk_bit-tet-sot-ruou-vang.jpg', '', 1, 0, 11, 5, '2017-05-03 16:40:17', '2017-05-03 16:40:17'),
(30, 'Cách làm cá kho Coca ngon, lạ, độc đáo', 'cach-lam-ca-kho-coca-ngon-la-doc-dao', 'Cá kho Coca', '<p>- <strong>Cá kho Coca</strong>: là món ăn lạ miệng nhưng vô cùng hấp dẫn các bạn nhé. Từng miếng cá ngấm đều Coca có vị ngọt, mặn kết hợp với vị cay của ớt rất đưa cơm. Cùng theo dõi bài viết dưới đây để học cách làm cá kho Coca thơm ngon đặc biệt các bạn nhé.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>1, Nguyên liệu:</strong></p>\r\n\r\n<p>&nbsp;<em>- Cá nục: 700g<br />\r\n<br />\r\n&nbsp;- Thịt ba chỉ: 150g<br />\r\n<br />\r\n&nbsp;- Coca: 1 lon<br />\r\n<br />\r\n&nbsp;- Gia vị: Muối, đường, nước mắm, hành khô, dầu ăn, ớt quả</em></p>\r\n\r\n<p><strong>2, Cách thực hiện:</strong></p>\r\n\r\n<p>&nbsp;- <strong>Bước 1:</strong> Cá nục khi mua về rửa sạch, bỏ ruột, cắt thành từng khúc vừa ăn. Ướp cá cùng với muối khoảng 30 phút để món cá kho Coca ngon và đậm vị hơn. Thịt ba chỉ rửa sạch, thái con chì.</p>\r\n\r\n<p>&nbsp;- <strong>Bước 2:</strong> Cho dầu vào chảo đun nóng, thả cá vào rán sơ vàng đều cả hai mặt, gắp ra đĩa.</p>\r\n\r\n<p>&nbsp;- <strong>Bước 3:</strong> Bắc nồi lên bếp, đổ dầu ăn vào đun nóng, cho hành khô vào phi thơm, cho thịt ba chỉ vào rán khoảng 3 phút.</p>\r\n\r\n<p>&nbsp;- <strong>Bước 4:</strong> Cho cá, ớt quả vào nồi thịt, cho thêm nước mắm, đường vào nồi, đun lửa lớn sôi khoảng 5 phút.</p>\r\n\r\n<p>&nbsp;- <strong>Bước 5:</strong> Đổ lon Coca vào nồi cá, tiếp tục đun sôi, trong quá trình kho bạn không nên đậy nắp nồi.</p>\r\n\r\n<p>&nbsp;- <strong>Bước 6:</strong> Vì nước Coca đã có màu đậm nên bạn không cần thêm nước hàng kho cá, đun khoảng 15 phút bạn nêm nếm lại gia vị cho vừa ăn. Tiếp tục đun đến khi phần cá thấm gia vị thì tắt bếp. Múc cá ra đĩa và thưởng thức món cá kho Coca với cơm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>Trên đây là hướng dẫn cách làm món <strong>Cá kho Coca</strong> thơm ngon, lạ miệng và đưa cơm. Hy vọng bài viết này sẽ giúp cho bữa cơm gia đình bạn thêm ngon và hấp dẫn. Món cá kho cực ngon này các bạn có thể thưởng thức vào những ngày thời tiết se lạnh rất ngon và đưa cơm nhé. Chúc các bạn thực hiện thành công món ăn độc đáo này!</p>\r\n', 'T0hU_ca-kho-coca.jpg', '                                                                                    <b>  Yêu cầu và thưởng thức:</b><br /><br />\r\n\r\n - Món cá kho Coca có màu sắc đẹp mắt và hấp dẫn.<br />\r\n\r\n - Từng miếng cá ngấm đều gia vị, thưởng thức với cơm nóng cực ngon.\r\n\r\n                        \r\n                        \r\n                        ', 1, 0, 13, 3, '2017-05-04 00:09:39', '2017-05-04 00:17:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `Ten`, `Hinh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(3, 'java-se', 'slide-2.jpg', 'Hãy thưởng thức thôi...', 'https://java.com/en/download/', '2017-05-01 02:04:29', '2017-05-01 02:04:29'),
(4, 'JavaScritp', 'slide-1.jpg', 'Múc  Thôi', 'https://laravel.com/docs/5.4#installation', '2017-05-01 02:05:56', '2017-05-01 02:05:56'),
(5, 'PHP', 'img2.jpg', 'khởi đầu mới...', 'https://php.net', '2017-05-01 02:16:00', '2017-05-01 02:16:00'),
(6, 'ASP', 'img3.jpg', '--------@@@@@-----------', 'https://google.com', '2017-05-01 02:15:04', '2017-05-01 02:15:04'),
(8, 'Laravel', 'slide1.jpg', 'Framework new PHP', 'https://laravel.com/docs/5.4#installation', '2017-05-01 02:41:36', '2017-05-01 02:41:36'),
(10, 'Mai nấu gì?', 'jqVi_slider-img3.jpg', '<p><span style=\"color:rgb(34, 34, 34); font-family:noto serif,serif; font-size:12px\">Thời gian gần đây, khi giới trẻ cần tìm một quán cà phê để tụ tập với bạn bè những ngày cuối tuần, cà phê bánh ngọt là một trong những lựa chọn được yêu thích.</span></p>', '', '2017-05-02 09:05:45', '2017-05-02 09:05:45'),
(11, 'Kia Nấu Gì', 'bKkf_img1.jpg', '<p><span style=\"color:rgb(34, 34, 34); font-family:noto serif,serif; font-size:12px\">Hà Nội không chỉ có nhiều danh lam thắng cảnh đẹp, mà từ xa xưa kinh đô Thăng Long đã nổi tiếng với tinh hoa ẩm thực phong phú, độc đáo thu hút nhiều du khách đến thưởng ', '', '2017-05-02 09:06:28', '2017-05-02 09:06:28'),
(14, 'món một', 'nM5m_pexels-photo-128402.jpeg', '<p>hãy cùng chúng tôi xây dựng văn hóa ẩm thực việt</p>\r\n', '', '2017-05-08 10:13:18', '2017-05-08 10:13:18'),
(15, 'món hai', 'HfPO_pexels-photo-366968.jpeg', '<p>Bắt đầu thôi</p>\r\n', '', '2017-05-08 10:13:42', '2017-05-08 10:13:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_khong_dau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `ten`, `ten_khong_dau`, `created_at`, `updated_at`) VALUES
(1, 'Khai Vị Sáng', 'khai-vi-sang', '2017-04-28 14:05:46', '2017-04-28 14:05:46'),
(2, 'Khai Vị Trưa', 'khai-vi-trua', '2017-04-28 14:05:56', '2017-04-28 14:05:56'),
(3, 'Khai Vị Tối', 'khai-vi-toi', '2017-04-28 14:06:05', '2017-04-28 14:06:05'),
(4, 'Món Chính Sáng', 'mon-chinh-sang', '2017-04-28 14:06:15', '2017-04-28 14:06:15'),
(5, 'Món Chính Trưa', 'mon-chinh-trua', '2017-04-28 14:06:21', '2017-04-28 14:06:21'),
(6, 'Món Chính Tối', 'mon-chinh-toi', '2017-04-28 14:06:28', '2017-04-28 14:06:28'),
(7, 'Tráng Miệng Sáng', 'trang-mieng-sang', '2017-04-28 14:06:43', '2017-04-28 14:06:43'),
(8, 'Tráng Miệng Trưa Hè', 'trang-mieng-trua-he', '2017-04-28 14:06:55', '2017-04-28 14:09:45'),
(9, 'Tráng Miệng Tối', 'trang-mieng-toi', '2017-04-28 14:07:02', '2017-04-28 14:07:02'),
(10, 'Món Tráng Miệng Tối', 'mon-trang-mieng-toi', '2017-04-28 14:10:01', '2017-04-28 14:10:01'),
(11, 'Món Ăn Khuya', 'mon-an-khuya', '2017-04-28 14:10:20', '2017-04-28 14:10:20'),
(12, 'Món Ăn Nhẹ', 'mon-an-nhe', '2017-04-28 14:10:51', '2017-04-28 14:10:51'),
(13, 'Món Ăn Nhiều Đạm', 'mon-an-nhieu-dam', '2017-04-28 14:11:12', '2017-04-28 14:11:12'),
(14, 'Món Ăn Nhiều Vitamin', 'mon-an-nhieu-vitamin', '2017-04-28 14:11:24', '2017-04-28 14:11:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `master` int(11) NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level`, `master`, `profile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phatbk', 'phatsn11081996@gmail.com', '$2y$10$DTGddzqEA57l.ywUokarNOOBoQ5/ouGKcaDrBGfyaiG9nzBKzrEyS', 1, 20, ' Dep trai,ngoan ngoan,cham chi,hiện tại vẫn độc thân,một vài năm nữa sẽ có bạn gái  trong một vài năm nữa\r\n                        \r\n                        ', 'JP75n2PjuCyrgWtGA4BPX0btNUi4PJmVsRiGH730OtrBiUz6q8jC4yNYEBWf', '2017-05-01 03:48:25', '2017-05-08 10:32:25'),
(2, 'phat96', 'phatnguyen11081996@gmail.com', '$2y$10$IUArQ4G.UEdurOjfwp8NB.v1QepVSxtzplHILym0gEtJlvTj9Mcbq', 1, 10, '-Tuổi:21\r\n-Nghề Nghiệp:Kỹ Sư\r\n-Tình Trạng:Độc Thân', 'S6Y4sZ1WFtKQnzCYyqwH5EJZroPzt9RKsOEKaMJI2dwkMD3p8evKgZu0Uyj7', '2017-05-01 10:57:37', '2017-05-01 15:38:17'),
(3, 'Thang_dote', 'thangnguyen@gmail.com', '$2y$10$Vmh5fbu3pSwKORGRxbSL3.QoLQrdw0H7PJJ9Y8BcyosBCpJz.HJFe', 1, 15, '-Xấu Trai\r\n- Đầu óc Đen tối', 'fNkcHUSgFBz99Y2cSZ6Wfu4XzQZH3NQn7fsIyYHP4Dxq7RQInI5L0iUtuKd3', '2017-05-01 10:58:41', '2017-05-08 02:49:01'),
(4, 'phu_sida', 'phunguyen@gmail.com', '$2y$10$9ln4rAKBsqCGVKkJEEu8uO1takgd9D7E6qZEbrPofHxRkLItFfESS', 1, 20, '-bình thường\r\n-', 'eihYJt6UB6ZuV6yUSld36XcCAz1k6aEtvQbakx846AY2RuiqBTn4rtTsgZds', '2017-05-01 10:59:30', '2017-05-02 16:20:52'),
(5, 'nghia_sike', 'nghiatran@gmail.com', '$2y$10$6GhXTxZgxPzd9jjJideMiOaHFw9IK7yCUDIIKvdv/vqzvW1mAsc06', 1, 20, '-Bình thường', 'hECYl53oBoxgP3jwNVN2xaAKXdTSo1wsDphzCUGjLFMCRuQDc32vxoU07T7y', '2017-05-01 11:00:04', '2017-05-02 02:18:43'),
(6, 'trung_shit', 'trung@gmail.com', '$2y$10$jU.2jH1oPpk4CkR9v7VGUO.GgL79lHGItFQpdLmI6o0u2OIavLdI6', 2, 30, '-Đồ tể Chính Hãng', 'WJWTp45JOCR3gEVSjO7RtN6pLXqRhPwlWOGfKmnO7NDX8NaEZp2cb2tYWEL0', '2017-05-01 11:00:37', '2017-05-01 14:43:09'),
(7, 'boybk', 'boybk@gmail.com', '$2y$10$J4czpLUbu/EOjCm3jpac..HN0d1oBjPsqpbcSz3EHuHIAMUjeeqYS', 2, 0, '', 'k5YKOuPOhM04RPSloUrvGZvEBO7CR927nFBRi298VgykW221ogBmW0ymc0Qp', '2017-05-01 18:18:52', '2017-05-01 18:20:08'),
(8, 'Phát Đẹp Trai <$>', 'phat11081996@gmail.com', '$2y$10$lG/wvyu7JNmy8J.QUXNOkOVmsZHhGV0G5h1/1oPerzsyLuk6D7i.6', 2, 0, '', 'kPGQGrbEayH2fwPl5sKYrcJ31wYXEPQlaYUwbwoVtYWRZaMlKNB3a0xYWJgb', '2017-05-01 18:23:04', '2017-05-02 03:28:27'),
(9, 'Bùi Như Lạc', 'lac@gmail.com', '$2y$10$lKmb7ZySypip0bbUYPGf5.krROz7H1Aj92ncevhxRC7rKryW9RyN6', 2, 0, '', NULL, '2017-05-01 18:24:17', '2017-05-01 18:24:17'),
(10, 'Chua Như Tranh', 'Tranh@gmail.com', '$2y$10$tFdDT1OYJgZNdR3YZJpPKOwQH8TBD24qZiJWxuiPZ0pwZxg60xasW', 2, 0, '', NULL, '2017-05-01 18:24:56', '2017-05-01 18:24:56'),
(11, 'Cay Như Ớt', 'ot@gmail.com', '$2y$10$uj.9vjvlfuKvpMVWd9OjM.1.2nSNi9awFsU8MALrJ9gFhT2vlicEu', 2, 0, '', NULL, '2017-05-01 18:25:26', '2017-05-01 18:25:26'),
(12, 'thắng xấu trai', 'thanghd@gmail.com', '$2y$10$QGc.6sSTKovtHPZcD.dQHOYxSBYx5AW.47nlnTeRetbmD3sOPYSrS', 2, 35, '-Vừa xấu vừa đen\r\n-bị  ban gai bo\r\n-Thần tượng Phát Đại Ca', NULL, '2017-05-02 02:06:38', '2017-05-02 02:06:38'),
(13, 'Ngọt Như Đường', 'mia@gmail.com', '$2y$10$6a64w9erwVVN0iy9FLqsAuzojHr9J4ehHlawFwPH59vnG/OpN.puG', 2, 25, '', NULL, '2017-05-02 02:12:02', '2017-05-02 02:12:02'),
(14, 'Mặn Hơn Muối', 'muoi@gmail.com', '$2y$10$RqrDEU6nk23NlUMl.x.gC.LwZsCtjn94sk8FLU/tmz/cOHzu9xoLS', 2, 18, '', 'WRSGzJiIBVaJQtpSQgaiIDGDLeAvFV4FUPQmKrU1aOPcFExCoDTJe9h2OieW', '2017-05-02 02:12:53', '2017-05-02 02:15:28'),
(15, 'Chu Như Hoa', 'HoaChu@gmail.com', '$2y$10$HUYrV87juS9lcasAZ1pQYOl9bJy.dkpnvS5VECKtlZHoengFLB5cK', 2, 35, 'Xinh như hoa,', NULL, '2017-05-02 08:54:01', '2017-05-02 08:54:01'),
(16, 'Rễ Đu Đủ', 'dudu@gmail.com', '$2y$10$X/kS6QPygIu3WH..q5wLUeaT2Khj1rpkpUQYrXhP5bktUO/eHnxYW', 2, 23, 'quả đu đủ ăn ngon vãi', NULL, '2017-05-02 08:55:41', '2017-05-02 08:55:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vungmien`
--

CREATE TABLE `vungmien` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_khong_dau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vungmien`
--

INSERT INTO `vungmien` (`id`, `ten`, `ten_khong_dau`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Đồng bằng sông Hồng', 'dong-bang-song-hong', 'Đồng bằng sông Hồng (hay châu thổ sông Hồng) là một vùng đất rộng lớn nằm quanh khu vực hạ lưu sông Hồng thuộc miền Bắc Việt Nam, vùng đất bao gồm 10 tỉnh và thành phố như: Bắc Ninh, Hà Nam, Hà Nội, Hải Dương, Hải Phòng, Hưng Yên, Nam Định, Ninh Bình, Thái Bình và Vĩnh Phúc. Gần như đồng nghĩa với đồng bằng sông Hồng là vùng trung châu, khác với vùng chân núi trung du và núi cao thượng du. Không giống như vùng đồng bằng sông Cửu Long, các tỉnh trong vùng đồng bằng sông Hồng chỉ có 2 tỉnh Thái Bình và Hưng Yên là không có núi, do đó khu vực này thường được gọi là châu thổ sông Hồng.', '2017-04-29 10:28:51', '2017-04-29 10:28:51'),
(2, 'Vùng Bắc Trung Bộ', 'vung-bac-trung-bo', 'Bắc Trung Bộ là phần phía bắc của Trung Bộ Việt Nam có địa bàn từ Nam Ninh Bình tới Bắc Đèo Hải Vân. Vùng Bắc Trung Bộ (BTB) là một trong 7 vùng kinh tế được Chính phủ giao lập quy hoạch tổng thể kinh tế xã hội. Vùng này gồm sáu tỉnh: Thanh Hoá, Nghệ An, Hà Tĩnh, Quảng Bình, Quảng Trị, Thừa Thiên-Huế.', '2017-04-29 14:49:35', '2017-04-29 14:49:35'),
(3, 'Tây Nguyên', 'tay-nguyen', 'Tây Nguyên là khu vực cao nguyên bao gồm 5 tỉnh, xếp theo thứ tự vị trí địa lý từ bắc xuống nam gồm Kon Tum, Gia Lai, Đắk Lắk, Đắk Nông và Lâm Đồng. Tây Nguyên là một trong 3 tiểu vùng của miền trung Việt Nam. Tây Nguyên cùng với Bắc Trung Bộ Việt Nam và Nam Trung Bộ Việt Nam hợp thành miền trung của Việt Nam.', '2017-04-29 15:07:53', '2017-04-29 15:07:53'),
(4, 'Đồng bằng sông Cửu Long', 'dong-bang-song-cuu-long', 'Vùng đồng bằng sông Cửu Long là một vùng cực nam của Việt Nam, còn được gọi là Vùng đồng bằng Nam Bộ hoặc miền Tây Nam Bộ hoặc theo cách gọi của người dân Việt Nam ngắn gọn là Miền Tây, có 1 thành phố trực thuộc trung ương là thành phố Cần Thơ và 12 tỉnh: Long An, Tiền Giang, Bến Tre, Vĩnh Long, Trà Vinh, Hậu Giang, Sóc Trăng, Đồng Tháp, An Giang, Kiên Giang, Bạc Liêu và Cà Mau.', '2017-04-29 15:28:09', '2017-04-29 15:28:09'),
(5, 'Phú Quốc', 'phu-quoc', 'Phú Quốc, còn được mệnh danh là Đảo Ngọc, là hòn đảo lớn nhất của Việt Nam, cũng là đảo lớn nhất trong quần thể 22 đảo tại đây, nằm trong vịnh Thái Lan. Đảo Phú Quốc cùng với các đảo khác tạo thành huyện đảo Phú Quốc trực thuộc tỉnh Kiên Giang. Toàn bộ huyện đảo có tổng diện tích 589,23 km². Phú Quốc nằm cách thành phố Rạch Giá 120 km và cách thị xã Hà Tiên 45 km.', '2017-04-29 15:34:52', '2017-04-29 15:34:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_user_foreign` (`id_User`),
  ADD KEY `comment_id_monan_foreign` (`id_MonAn`);

--
-- Chỉ mục cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaimon`
--
ALTER TABLE `loaimon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaimon_id_theloai_foreign` (`id_TheLoai`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monan_id_loaimon_foreign` (`id_LoaiMon`),
  ADD KEY `monan_id_vungmien_foreign` (`id_VungMien`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vungmien`
--
ALTER TABLE `vungmien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `loaimon`
--
ALTER TABLE `loaimon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `vungmien`
--
ALTER TABLE `vungmien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_monan_foreign` FOREIGN KEY (`id_MonAn`) REFERENCES `monan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_id_user_foreign` FOREIGN KEY (`id_User`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `loaimon`
--
ALTER TABLE `loaimon`
  ADD CONSTRAINT `loaimon_id_theloai_foreign` FOREIGN KEY (`id_TheLoai`) REFERENCES `theloai` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `monan_id_loaimon_foreign` FOREIGN KEY (`id_LoaiMon`) REFERENCES `loaimon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `monan_id_vungmien_foreign` FOREIGN KEY (`id_VungMien`) REFERENCES `vungmien` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
