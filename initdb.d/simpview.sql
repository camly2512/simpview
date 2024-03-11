-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2024 at 05:37 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpview`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Công nghệ', '2024-01-20 00:02:24', '2024-01-20 00:02:24', 'admin', 'admin'),
(2, 'Âm nhạc', '2024-01-20 00:02:24', '2024-01-20 00:02:24', 'admin', 'admin'),
(3, 'Giáo dục', '2024-01-20 00:03:51', '2024-01-20 00:03:51', 'admin', 'admin'),
(4, 'Du lịch', '2024-01-20 00:03:51', '2024-01-20 00:03:51', 'admin', 'admin'),
(5, 'Ẩm thực', '2024-01-20 00:04:50', '2024-01-20 00:04:50', 'admin', 'admin'),
(6, 'Thể thao', '2024-01-20 00:04:50', '2024-01-20 00:04:50', 'admin', 'admin'),
(7, 'Khoa học', '2024-01-20 00:05:37', '2024-01-20 00:05:37', 'admin', 'admin'),
(8, 'Nghệ thuật', '2024-01-20 00:05:37', '2024-01-20 00:05:37', 'admin', 'admin'),
(9, 'Điện ảnh', '2024-01-20 00:06:23', '2024-01-20 00:06:23', 'admin', 'admin'),
(10, 'Thời trang', '2024-01-20 00:06:23', '2024-01-20 00:06:23', 'admin', 'admin'),
(11, 'Làm đẹp', '2024-01-20 00:06:57', '2024-01-20 00:06:57', 'admin', 'admin'),
(12, 'Hài hước', '2024-01-20 00:06:57', '2024-01-20 00:06:57', 'admin', 'admin'),
(13, 'Xe cộ', '2024-01-20 00:07:51', '2024-01-20 00:07:51', 'admin', 'admin'),
(14, 'Chính trị - Xã hội', '2024-01-20 00:07:51', '2024-01-20 00:07:51', 'admin', 'admin'),
(15, 'Kinh doanh', '2024-01-20 00:08:39', '2024-01-20 00:08:39', 'admin', 'admin'),
(16, 'Giải trí', '2024-01-20 00:08:39', '2024-01-20 00:08:39', 'admin', 'admin'),
(17, 'Môi trường', '2024-01-20 00:09:11', '2024-01-20 00:09:11', 'admin', 'admin'),
(18, 'Sức khỏe', '2024-01-20 00:09:11', '2024-01-20 00:09:11', 'admin', 'admin'),
(19, 'Thiên nhiên', '2024-01-20 00:09:50', '2024-01-20 00:09:50', 'admin', 'admin'),
(20, 'Thiếu nhi', '2024-01-20 00:09:50', '2024-01-20 00:09:50', 'admin', 'admin'),
(21, 'Học tập', '2024-02-22 03:55:23', '2024-02-22 03:55:23', 'admin', 'admin'),
(23, 'Động vật', '2024-02-27 10:27:04', '2024-02-27 10:27:04', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categorylist`
--

CREATE TABLE `categorylist` (
  `categorylist_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorylist`
--

INSERT INTO `categorylist` (`categorylist_id`, `user_id`, `name`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 7, '(´▽`ʃ♡ƪ)', '2024-02-27 00:59:43', '2024-02-27 00:59:43', NULL, NULL),
(15, 7, 'Nhạc chill', '2024-02-27 01:06:46', '2024-02-27 01:06:46', NULL, NULL),
(16, 7, 'Review phim', '2024-02-27 01:06:51', '2024-02-27 01:06:51', NULL, NULL),
(17, 7, 'Review truyện tranh', '2024-02-27 01:06:55', '2024-02-27 01:06:55', NULL, NULL),
(18, 8, 'Nhạc Hàn', '2024-02-27 09:55:30', '2024-02-27 09:55:30', NULL, NULL),
(19, 8, 'Nhạc Việt', '2024-02-27 09:56:18', '2024-02-27 09:56:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `video_id` int NOT NULL,
  `cmt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `video_id`, `cmt`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(6, 8, 2, 'Trường ngầu ghê', '2024-02-27 09:59:50', '2024-02-27 09:59:50', NULL, NULL),
(7, 8, 2, 'thật may mắn khi là một KMA-er', '2024-02-27 10:00:10', '2024-02-27 10:00:10', NULL, NULL),
(8, 8, 1, 'trường tui nè hihi', '2024-02-27 10:00:39', '2024-02-27 10:00:39', NULL, NULL),
(9, 9, 17, 'Bài hát này thực sự làm tôi cảm thấy thư giãn và yên bình.', '2024-02-27 10:06:21', '2024-02-27 10:06:21', NULL, NULL),
(10, 9, 4, 'anh ấy thật là tài năng', '2024-02-27 10:07:20', '2024-02-27 10:07:20', NULL, NULL),
(11, 9, 14, 'Bài hát này thực sự làm tôi cảm thấy nhẹ nhàng, giúp tôi lắng nghe và suy ngẫm về những cảm xúc riêng của mình', '2024-02-27 10:07:51', '2024-02-27 10:07:51', NULL, NULL),
(12, 10, 1, 'mình học ở miền Nam nè', '2024-02-27 10:24:27', '2024-02-27 10:24:27', NULL, NULL),
(13, 10, 2, 'sd rồi', '2024-02-27 10:24:38', '2024-02-27 10:24:38', NULL, NULL),
(15, 10, 14, 'Đôi khi chỉ cần một ca khúc như thế này để tâm hồn được xoa dịu và đắm chìm vào không gian riêng của mình', '2024-02-27 10:25:13', '2024-02-27 10:25:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `list_id` int NOT NULL,
  `video_id` int NOT NULL,
  `categorylist_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`list_id`, `video_id`, `categorylist_id`, `user_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(10, 5, 1, 7, '2024-02-27 01:07:13', '2024-02-27 01:07:13', NULL, NULL),
(11, 17, 19, 8, '2024-02-27 09:56:37', '2024-02-27 09:56:37', NULL, NULL),
(13, 5, 18, 8, '2024-02-27 09:56:54', '2024-02-27 09:56:54', NULL, NULL),
(14, 14, 18, 8, '2024-02-27 09:57:01', '2024-02-27 09:57:01', NULL, NULL),
(15, 15, 18, 8, '2024-02-27 09:57:05', '2024-02-27 09:57:05', NULL, NULL),
(16, 16, 19, 8, '2024-02-27 09:57:17', '2024-02-27 09:57:17', NULL, NULL),
(17, 22, 16, 7, '2024-02-27 13:56:22', '2024-02-27 13:56:22', NULL, NULL),
(18, 23, 16, 7, '2024-02-27 13:56:37', '2024-02-27 13:56:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `first_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `profile_pic`, `img`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(7, 'Ly', 'Hoàng', 'camly', 'CT06N0134@actvn.edu.vn', 'ac0502ba329e3bef85ec368d132342ed', '1708967862_bia_chung.jpg', '1708967893_avt_134.jpg', NULL, '2024-02-27 00:10:16', '2024-02-27 00:10:16', NULL, NULL),
(8, 'Hạnh', 'Nhi', 'hanhnhi', 'CT06N0143@actvn.edu.vn', '63e38559339dcf31b42931a2b766f40b', '1709002333_bia_chung.jpg', '1709002340_avt_143.jpg', NULL, '2024-02-27 08:46:19', '2024-02-27 08:46:19', NULL, NULL),
(9, 'Đạt', 'Vũ', 'tiendat', 'CT06N0110@actvn.edu.vn', '5ae2d9e0c52ab285b8da99874acd65f5', '1709003118_bia_chung.jpg', '1709003125_avt_110.png', NULL, '2024-02-27 10:04:46', '2024-02-27 10:04:46', NULL, NULL),
(10, 'Phát', 'Huỳnh', 'tanphat', 'CT06N0145@actvn.edu.vn', '335c40eafe26264a064ee40e95f7f25d', '1709004233_bia_chung.jpg', '1709004240_avt_145.png', NULL, '2024-02-27 10:23:20', '2024-02-27 10:23:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usersrp`
--

CREATE TABLE `usersrp` (
  `usersrp_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int NOT NULL,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `privacy` int NOT NULL,
  `filepath` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `user_id`, `category_id`, `title`, `content`, `privacy`, `filepath`, `views`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 7, 21, 'Học Viện Kỹ Thuật Mật Mã', 'ACTVN - Học Viện Kỹ Thuật Mật Mã là một trong những trường đại học đào tạo ngành An Toàn Thông Tin tốt nhất Việt Nam. Sinh viên của trường đã nhiều lần đạt thành tích nổi bật, đáng nể trong ngành bảo mật nói chung. Ngoài đào tạo các ngành CNTT, trường còn rất mạnh về khoản đào tạo ra các \"VĐV điền kinh chuyên nghiệp\" theo đúng nghĩa đen. #kma #attt #actvn #kmp #A90 #daihoc #kythuatmatma', 1, 'KMA_Nam.mp4', 0, NULL, '2024-02-27 00:25:59', '2024-02-27 00:25:59', NULL, NULL),
(2, 7, 21, 'Review về trường KMA - Học Viện Kỹ Thuật Mật Mã', 'ACTVN - Học Viện Kỹ Thuật Mật Mã là một trong những trường đại học đào tạo ngành An Toàn Thông Tin tốt nhất Việt Nam. Sinh viên của trường đã nhiều lần đạt thành tích nổi bật, đáng nể trong ngành bảo mật nói chung. Ngoài đào tạo các ngành CNTT, trường còn rất mạnh về khoản đào tạo ra các \"VĐV điền kinh chuyên nghiệp\" theo đúng nghĩa đen. #kma #attt #actvn #kmp #A90 #daihoc #kythuatmatma', 1, 'KMA_Bac.mp4', 0, NULL, '2024-02-27 00:27:29', '2024-02-27 00:27:29', NULL, NULL),
(4, 7, 2, 'Alexander Rybak - \"Europe\'s Skies\" ', ' #alexanderrybak \"Europe\'s Skies\" on iTunes: http://itunes.apple.com/no/album/no-b...  Music video premiere of \"Europe\'s Skies\". I hope you\'ll like it! :) ', 1, 'Alexander%20Rybak%20-%20-Europe\'s%20Skies-%20(Official%20Music%20Video).mp4', 0, NULL, '2024-02-27 00:45:08', '2024-02-27 00:45:08', NULL, NULL),
(5, 7, 2, 'Idols reaction to \' Dionysus \' @BTS at MMA 2019', ' #bts #bts_official_bighit #btsxarmy #bangtan #방탄소년단 #army #idolsreaction #reactionbts #dionysusbts #mma2019 #fyp #fy #foryou #xh #xhtiktok #xuhuong #tiktok #fypシ #viral #xuhuongtiktok', 1, 'Download.mp4', 0, NULL, '2024-02-27 00:52:25', '2024-02-27 00:52:25', NULL, NULL),
(14, 8, 2, 'DEAN - DIE 4 YOU', 'BUY / STREAM “DIE 4 YOU\" here: DIE4YOU.lnk.to/vr99KBkb', 1, 'DEAN%20-%20DIE%204%20YOU.mp4', 0, NULL, '2024-02-27 08:51:10', '2024-02-27 08:51:10', NULL, NULL),
(15, 8, 2, 'HYBS - Tip Toe (Official Video)', 'Produced by HYBS  Music by HYBS Lyrics by HYBS Arranged by HYBS Bass by Akkaraphon Suwannamake Mixed & Mastered by Henry Watkins', 1, 'HYBS%20-%20Tip%20Toe%20(Official%20Video).mp4', 0, NULL, '2024-02-27 08:53:24', '2024-02-27 08:53:24', NULL, NULL),
(16, 8, 2, 'ĐỢI - 52Hz (prod. RIO) | Official Lyric Video', 'Xin chào những người nghe tuyệt vời của 52Hz, Cảm ơn các bạn rất nhiều vì đã luôn yêu thương và ủng hộ mình cũng như âm nhạc mà mình đã và đang tạo ra. Để tri ân tình cảm đẹp đẽ này, mình muốn trân trọng gửi tới mọi người một trong những bài hát hay nhất mình từng được viết - \"ĐỢI\" không chỉ là một lá thư mà còn là một thước phim buồn về người con gái đã dành cả cuộc đời của mình để chờ đợi người yêu quay trở về. Bài hát không phải là nhạc Giáng Sinh mà chỉ là một bản tình ca mùa đông rất buồn. Mình mong rằng, mỗi khi bật bài nhạc lên, mọi người sẽ cảm nhận được sự buốt giá của cái \"mùa buồn nhất trong năm\" này, nhưng đồng thời cũng được sưởi ấm bởi tình yêu thuần khiết và kiên cường mà \"ĐỢI\" mang lại.  Lời cuối, mình sẽ không bao giờ hoàn thành được thứ âm nhạc đẹp đẽ này nếu thiếu đi những người cộng sự luôn ở bên mình trong suốt một năm nay. Cảm ơn mọi người nhiều lắm. Chúc mọi người một Giáng Sinh an lành và môt năm mới hạnh phúc!', 1, 'ĐỢI%20-%2052Hz%20(prod.%20RIO)%20-%20Official%20Lyric%20Video.mp4', 0, NULL, '2024-02-27 09:03:25', '2024-02-27 09:03:25', NULL, NULL),
(17, 8, 2, 'Em Ellata - Ngày ấy (Yesterday)', 'Ngày ấy (Yesterday) đã có mặt trên mọi nền tảng nghe nhạc: https://linktr.ee/emellata', 1, 'Em%20Ellata%20-%20Ngày%20ấy%20(Yesterday).mp4', 0, NULL, '2024-02-27 09:54:09', '2024-02-27 09:54:09', NULL, NULL),
(18, 10, 23, 'Thư giãn cùng boss cưng đáng yêu', 'Tik tok động vật, hài hước, vui nhộn - Tik tok Trung Quốc', 1, 'Tik%20tok%20Trung%20Quốc%20-%20Tik%20tok%20động%20vật%20-%20Thư%20giãn%20cùng%20boss%20cưng%20đáng%20yêu.mp4', 0, NULL, '2024-02-27 10:26:31', '2024-02-27 10:26:31', NULL, NULL),
(19, 10, 23, 'PHẢN ỨNG CỦA MÈO LẦN ĐẦU GẶP CHÓ', 'Các bạn cũng như mình luôn tự đặt câu hỏi không biết liệu các bé mèo lần đầu gặp chó sẽ phản ứng như thế nào đúng không?', 1, 'PHẢN%20ỨNG%20CỦA%20MÈO%20LẦN%20ĐẦU%20GẶP%20CHÓ.mp4', 0, NULL, '2024-02-27 12:31:50', '2024-02-27 12:31:50', NULL, NULL),
(20, 10, 23, 'Những chú mèo dễ thương, đắt tiền', 'Review trải nghiệm độc lạ với những chú Mèo dễ thương cực kỳ đắt tiền || Review Giải Trí Đời Sống', 1, 'Review%20trải%20nghiệm%20độc%20lạ%20với%20những%20chú%20Mèo%20dễ%20thương%20cực%20kỳ%20đắt%20tiền%20--%20Review%20Giải%20Trí%20Đời%20Sống.mp4', 0, NULL, '2024-02-27 12:33:10', '2024-02-27 12:33:10', NULL, NULL),
(21, 10, 2, 'Mitski - My Love Mine All Mine[Lyric]', '“My Love Mine All Mine” from the album ‘The Land Is Inhospitable and So Are We’ by Mitski. Listen + order:  https://Mitski.lnk.to/TLIIASAW', 1, 'Mitski%20-%20My%20Love%20Mine%20All%20Mine%5bLyric%5d.mp4', 0, NULL, '2024-02-27 13:45:29', '2024-02-27 13:45:29', NULL, NULL),
(22, 8, 9, 'Sát thủ nhân tạo', 'Sát Thủ Nhân Tạo là bộ phim hành động li kì kể về Koo Ja Yoon – một cô bé được nuôi dưỡng trong một tổ chức đáng sợ - nơi diễn ra các cuộc thí nghiệm y học được thực hiện trên chính cơ thể con người nhằm biến họ thành những cỗ máy giết người. Sau khi chạy trốn khỏi tổ chức, Ja Yoon bị mất trí nhớ và được một cặp vợ chồng già nhận nuôi. 10 năm sau, khi đã trở thành một nữ sinh trung học, Ja Yoon đăng ký tham gia một cuộc thi âm nhạc với mong muốn giúp gia đình vượt qua khó khăn tài chính. Nhưng cô không ngờ rằng, ngay từ khi hình ảnh của mình xuất hiện trên truyền hình, cuộc sống của cô bị đảo lộn hoàn toàn bởi sự truy đuổi của những kẻ lạ mặt.', 1, 'Sát%20Thủ%20IQ%20=%20300%20Đáng%20Sợ%20thế%20nào%20-%20review%20phim%20Sát%20Thủ%20Nhân%20Tạo.mp4', 0, NULL, '2024-02-27 13:47:00', '2024-02-27 13:47:00', NULL, NULL),
(23, 8, 9, 'Bỗng dưng trúng số', 'Kể về hành trình “hạ cánh” đầy bất ổn của một tờ vé số bay từ Hàn Quốc qua Triều Tiên. Từ đó, câu chuyện hài hước bậc nhất màn ảnh được mở ra khi những người lính của hai bên phải bước vào một cuộc đàm phán vô tiền khoáng hậu để quyết định số phận của giải độc đắc hàng triệu đô.', 1, 'tờ%20Vé%20Số%20Bất%20Ổn%20và%20Đội%20quân%20nhân%20Cồng%20Kềnh%20-%20review%20phim%20Bỗng%20Dưng%20Trúng%20Số.mp4', 0, NULL, '2024-02-27 13:47:49', '2024-02-27 13:47:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videosrp`
--

CREATE TABLE `videosrp` (
  `videosrp_id` int NOT NULL,
  `video_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `categorylist`
--
ALTER TABLE `categorylist`
  ADD PRIMARY KEY (`categorylist_id`),
  ADD KEY `fk_categorylist_users` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_comments_users` (`user_id`),
  ADD KEY `fk_comments_videos` (`video_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `fk_playlist_users` (`user_id`),
  ADD KEY `fk_playlist_categorylist` (`categorylist_id`),
  ADD KEY `fk_playlist_videos` (`video_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usersrp`
--
ALTER TABLE `usersrp`
  ADD PRIMARY KEY (`usersrp_id`),
  ADD KEY `fk_usersrp_users` (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `fk_videos_users` (`user_id`),
  ADD KEY `fk_videos_category` (`category_id`);

--
-- Indexes for table `videosrp`
--
ALTER TABLE `videosrp`
  ADD PRIMARY KEY (`videosrp_id`),
  ADD KEY `fk_videosrp_videos` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categorylist`
--
ALTER TABLE `categorylist`
  MODIFY `categorylist_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `list_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usersrp`
--
ALTER TABLE `usersrp`
  MODIFY `usersrp_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `videosrp`
--
ALTER TABLE `videosrp`
  MODIFY `videosrp_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorylist`
--
ALTER TABLE `categorylist`
  ADD CONSTRAINT `fk_categorylist_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_comments_videos` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `fk_playlist_categorylist` FOREIGN KEY (`categorylist_id`) REFERENCES `categorylist` (`categorylist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_playlist_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_playlist_videos` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usersrp`
--
ALTER TABLE `usersrp`
  ADD CONSTRAINT `fk_usersrp_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `fk_videos_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_videos_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videosrp`
--
ALTER TABLE `videosrp`
  ADD CONSTRAINT `fk_videosrp_videos` FOREIGN KEY (`video_id`) REFERENCES `videos` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
