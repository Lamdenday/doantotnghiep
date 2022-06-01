-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 01, 2022 lúc 05:03 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel_booking_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Quận Ba Đình', 'Quận', NULL, NULL),
(2, 'Quận Hoàn Kiếm', 'Quận', NULL, NULL),
(3, 'Quận Tây Hồ', 'Quận', NULL, NULL),
(4, 'Quận Long Biên', 'Quận', NULL, NULL),
(5, 'Quận Cầu Giấy', 'Quận', NULL, NULL),
(6, 'Quận Đống Đa', 'Quận', NULL, NULL),
(7, 'Quận Hai Bà Trưng', 'Quận', NULL, NULL),
(8, 'Quận Hoàng Mai', 'Quận', NULL, NULL),
(9, 'Quận Thanh Xuân', 'Quận', NULL, NULL),
(16, 'Huyện Sóc Sơn', 'Huyện', NULL, NULL),
(17, 'Huyện Đông Anh', 'Huyện', NULL, NULL),
(18, 'Huyện Gia Lâm', 'Huyện', NULL, NULL),
(19, 'Quận Nam Từ Liêm', 'Quận', NULL, NULL),
(20, 'Huyện Thanh Trì', 'Huyện', NULL, NULL),
(21, 'Quận Bắc Từ Liêm', 'Quận', NULL, NULL),
(250, 'Huyện Mê Linh', 'Huyện', NULL, NULL),
(268, 'Quận Hà Đông', 'Quận', NULL, NULL),
(269, 'Thị xã Sơn Tây', 'Thị xã', NULL, NULL),
(271, 'Huyện Ba Vì', 'Huyện', NULL, NULL),
(272, 'Huyện Phúc Thọ', 'Huyện', NULL, NULL),
(273, 'Huyện Đan Phượng', 'Huyện', NULL, NULL),
(274, 'Huyện Hoài Đức', 'Huyện', NULL, NULL),
(275, 'Huyện Quốc Oai', 'Huyện', NULL, NULL),
(276, 'Huyện Thạch Thất', 'Huyện', NULL, NULL),
(277, 'Huyện Chương Mỹ', 'Huyện', NULL, NULL),
(278, 'Huyện Thanh Oai', 'Huyện', NULL, NULL),
(279, 'Huyện Thường Tín', 'Huyện', NULL, NULL),
(280, 'Huyện Phú Xuyên', 'Huyện', NULL, NULL),
(281, 'Huyện Ứng Hòa', 'Huyện', NULL, NULL),
(282, 'Huyện Mỹ Đức', 'Huyện', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `address`, `description`, `image`, `checkin`, `slug`, `created_at`, `updated_at`) VALUES
(18, 'Duncan Chandler', 'Keelie Farrell,Thị trấn Phúc Thọ,Huyện Phúc Thọ', 'Aut laborum nostrum', '1654050447.jpeg', 'Larissa Vargas', 'Qui aliqua Deleniti-877793', '2022-05-31 19:27:27', '2022-05-31 19:27:27'),
(19, 'Stuart Curtis', 'Neville Velazquez,Thị trấn Phúc Thọ,Huyện Phúc Thọ', 'Ex beatae delectus', '1654051135.jpeg', 'Idona Hess', 'Sed quo ab est cupid-939043', '2022-05-31 19:38:55', '2022-05-31 19:38:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_images`
--

CREATE TABLE `location_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_23_032353_create_locations_table', 1),
(6, '2022_05_23_032410_create_location_images_table', 1),
(7, '2022_05_23_032436_create_tickets_table', 1),
(8, '2022_05_26_083132_create_districts_table', 1),
(9, '2022_05_26_083556_create_wards_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`id`, `name`, `type`, `district_id`, `created_at`, `updated_at`) VALUES
(1, 'Phường Phúc Xá', 'Phường', 1, NULL, NULL),
(4, 'Phường Trúc Bạch', 'Phường', 1, NULL, NULL),
(6, 'Phường Vĩnh Phúc', 'Phường', 1, NULL, NULL),
(7, 'Phường Cống Vị', 'Phường', 1, NULL, NULL),
(8, 'Phường Liễu Giai', 'Phường', 1, NULL, NULL),
(10, 'Phường Nguyễn Trung Trực', 'Phường', 1, NULL, NULL),
(13, 'Phường Quán Thánh', 'Phường', 1, NULL, NULL),
(16, 'Phường Ngọc Hà', 'Phường', 1, NULL, NULL),
(19, 'Phường Điện Biên', 'Phường', 1, NULL, NULL),
(22, 'Phường Đội Cấn', 'Phường', 1, NULL, NULL),
(25, 'Phường Ngọc Khánh', 'Phường', 1, NULL, NULL),
(28, 'Phường Kim Mã', 'Phường', 1, NULL, NULL),
(31, 'Phường Giảng Võ', 'Phường', 1, NULL, NULL),
(34, 'Phường Thành Công', 'Phường', 1, NULL, NULL),
(37, 'Phường Phúc Tân', 'Phường', 2, NULL, NULL),
(40, 'Phường Đồng Xuân', 'Phường', 2, NULL, NULL),
(43, 'Phường Hàng Mã', 'Phường', 2, NULL, NULL),
(46, 'Phường Hàng Buồm', 'Phường', 2, NULL, NULL),
(49, 'Phường Hàng Đào', 'Phường', 2, NULL, NULL),
(52, 'Phường Hàng Bồ', 'Phường', 2, NULL, NULL),
(55, 'Phường Cửa Đông', 'Phường', 2, NULL, NULL),
(58, 'Phường Lý Thái Tổ', 'Phường', 2, NULL, NULL),
(61, 'Phường Hàng Bạc', 'Phường', 2, NULL, NULL),
(64, 'Phường Hàng Gai', 'Phường', 2, NULL, NULL),
(67, 'Phường Chương Dương', 'Phường', 2, NULL, NULL),
(70, 'Phường Hàng Trống', 'Phường', 2, NULL, NULL),
(73, 'Phường Cửa Nam', 'Phường', 2, NULL, NULL),
(76, 'Phường Hàng Bông', 'Phường', 2, NULL, NULL),
(79, 'Phường Tràng Tiền', 'Phường', 2, NULL, NULL),
(82, 'Phường Trần Hưng Đạo', 'Phường', 2, NULL, NULL),
(85, 'Phường Phan Chu Trinh', 'Phường', 2, NULL, NULL),
(88, 'Phường Hàng Bài', 'Phường', 2, NULL, NULL),
(91, 'Phường Phú Thượng', 'Phường', 3, NULL, NULL),
(94, 'Phường Nhật Tân', 'Phường', 3, NULL, NULL),
(97, 'Phường Tứ Liên', 'Phường', 3, NULL, NULL),
(100, 'Phường Quảng An', 'Phường', 3, NULL, NULL),
(103, 'Phường Xuân La', 'Phường', 3, NULL, NULL),
(106, 'Phường Yên Phụ', 'Phường', 3, NULL, NULL),
(109, 'Phường Bưởi', 'Phường', 3, NULL, NULL),
(112, 'Phường Thụy Khuê', 'Phường', 3, NULL, NULL),
(115, 'Phường Thượng Thanh', 'Phường', 4, NULL, NULL),
(118, 'Phường Ngọc Thụy', 'Phường', 4, NULL, NULL),
(121, 'Phường Giang Biên', 'Phường', 4, NULL, NULL),
(124, 'Phường Đức Giang', 'Phường', 4, NULL, NULL),
(127, 'Phường Việt Hưng', 'Phường', 4, NULL, NULL),
(130, 'Phường Gia Thụy', 'Phường', 4, NULL, NULL),
(133, 'Phường Ngọc Lâm', 'Phường', 4, NULL, NULL),
(136, 'Phường Phúc Lợi', 'Phường', 4, NULL, NULL),
(139, 'Phường Bồ Đề', 'Phường', 4, NULL, NULL),
(142, 'Phường Sài Đồng', 'Phường', 4, NULL, NULL),
(145, 'Phường Long Biên', 'Phường', 4, NULL, NULL),
(148, 'Phường Thạch Bàn', 'Phường', 4, NULL, NULL),
(151, 'Phường Phúc Đồng', 'Phường', 4, NULL, NULL),
(154, 'Phường Cự Khối', 'Phường', 4, NULL, NULL),
(157, 'Phường Nghĩa Đô', 'Phường', 5, NULL, NULL),
(160, 'Phường Nghĩa Tân', 'Phường', 5, NULL, NULL),
(163, 'Phường Mai Dịch', 'Phường', 5, NULL, NULL),
(166, 'Phường Dịch Vọng', 'Phường', 5, NULL, NULL),
(167, 'Phường Dịch Vọng Hậu', 'Phường', 5, NULL, NULL),
(169, 'Phường Quan Hoa', 'Phường', 5, NULL, NULL),
(172, 'Phường Yên Hoà', 'Phường', 5, NULL, NULL),
(175, 'Phường Trung Hoà', 'Phường', 5, NULL, NULL),
(178, 'Phường Cát Linh', 'Phường', 6, NULL, NULL),
(181, 'Phường Văn Miếu', 'Phường', 6, NULL, NULL),
(184, 'Phường Quốc Tử Giám', 'Phường', 6, NULL, NULL),
(187, 'Phường Láng Thượng', 'Phường', 6, NULL, NULL),
(190, 'Phường Ô Chợ Dừa', 'Phường', 6, NULL, NULL),
(193, 'Phường Văn Chương', 'Phường', 6, NULL, NULL),
(196, 'Phường Hàng Bột', 'Phường', 6, NULL, NULL),
(199, 'Phường Láng Hạ', 'Phường', 6, NULL, NULL),
(202, 'Phường Khâm Thiên', 'Phường', 6, NULL, NULL),
(205, 'Phường Thổ Quan', 'Phường', 6, NULL, NULL),
(208, 'Phường Nam Đồng', 'Phường', 6, NULL, NULL),
(211, 'Phường Trung Phụng', 'Phường', 6, NULL, NULL),
(214, 'Phường Quang Trung', 'Phường', 6, NULL, NULL),
(217, 'Phường Trung Liệt', 'Phường', 6, NULL, NULL),
(220, 'Phường Phương Liên', 'Phường', 6, NULL, NULL),
(223, 'Phường Thịnh Quang', 'Phường', 6, NULL, NULL),
(226, 'Phường Trung Tự', 'Phường', 6, NULL, NULL),
(229, 'Phường Kim Liên', 'Phường', 6, NULL, NULL),
(232, 'Phường Phương Mai', 'Phường', 6, NULL, NULL),
(235, 'Phường Ngã Tư Sở', 'Phường', 6, NULL, NULL),
(238, 'Phường Khương Thượng', 'Phường', 6, NULL, NULL),
(241, 'Phường Nguyễn Du', 'Phường', 7, NULL, NULL),
(244, 'Phường Bạch Đằng', 'Phường', 7, NULL, NULL),
(247, 'Phường Phạm Đình Hổ', 'Phường', 7, NULL, NULL),
(256, 'Phường Lê Đại Hành', 'Phường', 7, NULL, NULL),
(259, 'Phường Đồng Nhân', 'Phường', 7, NULL, NULL),
(262, 'Phường Phố Huế', 'Phường', 7, NULL, NULL),
(265, 'Phường Đống Mác', 'Phường', 7, NULL, NULL),
(268, 'Phường Thanh Lương', 'Phường', 7, NULL, NULL),
(271, 'Phường Thanh Nhàn', 'Phường', 7, NULL, NULL),
(274, 'Phường Cầu Dền', 'Phường', 7, NULL, NULL),
(277, 'Phường Bách Khoa', 'Phường', 7, NULL, NULL),
(280, 'Phường Đồng Tâm', 'Phường', 7, NULL, NULL),
(283, 'Phường Vĩnh Tuy', 'Phường', 7, NULL, NULL),
(286, 'Phường Bạch Mai', 'Phường', 7, NULL, NULL),
(289, 'Phường Quỳnh Mai', 'Phường', 7, NULL, NULL),
(292, 'Phường Quỳnh Lôi', 'Phường', 7, NULL, NULL),
(295, 'Phường Minh Khai', 'Phường', 7, NULL, NULL),
(298, 'Phường Trương Định', 'Phường', 7, NULL, NULL),
(301, 'Phường Thanh Trì', 'Phường', 8, NULL, NULL),
(304, 'Phường Vĩnh Hưng', 'Phường', 8, NULL, NULL),
(307, 'Phường Định Công', 'Phường', 8, NULL, NULL),
(310, 'Phường Mai Động', 'Phường', 8, NULL, NULL),
(313, 'Phường Tương Mai', 'Phường', 8, NULL, NULL),
(316, 'Phường Đại Kim', 'Phường', 8, NULL, NULL),
(319, 'Phường Tân Mai', 'Phường', 8, NULL, NULL),
(322, 'Phường Hoàng Văn Thụ', 'Phường', 8, NULL, NULL),
(325, 'Phường Giáp Bát', 'Phường', 8, NULL, NULL),
(328, 'Phường Lĩnh Nam', 'Phường', 8, NULL, NULL),
(331, 'Phường Thịnh Liệt', 'Phường', 8, NULL, NULL),
(334, 'Phường Trần Phú', 'Phường', 8, NULL, NULL),
(337, 'Phường Hoàng Liệt', 'Phường', 8, NULL, NULL),
(340, 'Phường Yên Sở', 'Phường', 8, NULL, NULL),
(343, 'Phường Nhân Chính', 'Phường', 9, NULL, NULL),
(346, 'Phường Thượng Đình', 'Phường', 9, NULL, NULL),
(349, 'Phường Khương Trung', 'Phường', 9, NULL, NULL),
(352, 'Phường Khương Mai', 'Phường', 9, NULL, NULL),
(355, 'Phường Thanh Xuân Trung', 'Phường', 9, NULL, NULL),
(358, 'Phường Phương Liệt', 'Phường', 9, NULL, NULL),
(361, 'Phường Hạ Đình', 'Phường', 9, NULL, NULL),
(364, 'Phường Khương Đình', 'Phường', 9, NULL, NULL),
(367, 'Phường Thanh Xuân Bắc', 'Phường', 9, NULL, NULL),
(370, 'Phường Thanh Xuân Nam', 'Phường', 9, NULL, NULL),
(373, 'Phường Kim Giang', 'Phường', 9, NULL, NULL),
(376, 'Thị trấn Sóc Sơn', 'Thị trấn', 16, NULL, NULL),
(379, 'Xã Bắc Sơn', 'Xã', 16, NULL, NULL),
(382, 'Xã Minh Trí', 'Xã', 16, NULL, NULL),
(385, 'Xã Hồng Kỳ', 'Xã', 16, NULL, NULL),
(388, 'Xã Nam Sơn', 'Xã', 16, NULL, NULL),
(391, 'Xã Trung Giã', 'Xã', 16, NULL, NULL),
(394, 'Xã Tân Hưng', 'Xã', 16, NULL, NULL),
(397, 'Xã Minh Phú', 'Xã', 16, NULL, NULL),
(400, 'Xã Phù Linh', 'Xã', 16, NULL, NULL),
(403, 'Xã Bắc Phú', 'Xã', 16, NULL, NULL),
(406, 'Xã Tân Minh', 'Xã', 16, NULL, NULL),
(409, 'Xã Quang Tiến', 'Xã', 16, NULL, NULL),
(412, 'Xã Hiền Ninh', 'Xã', 16, NULL, NULL),
(415, 'Xã Tân Dân', 'Xã', 16, NULL, NULL),
(418, 'Xã Tiên Dược', 'Xã', 16, NULL, NULL),
(421, 'Xã Việt Long', 'Xã', 16, NULL, NULL),
(424, 'Xã Xuân Giang', 'Xã', 16, NULL, NULL),
(427, 'Xã Mai Đình', 'Xã', 16, NULL, NULL),
(430, 'Xã Đức Hoà', 'Xã', 16, NULL, NULL),
(433, 'Xã Thanh Xuân', 'Xã', 16, NULL, NULL),
(436, 'Xã Đông Xuân', 'Xã', 16, NULL, NULL),
(439, 'Xã Kim Lũ', 'Xã', 16, NULL, NULL),
(442, 'Xã Phú Cường', 'Xã', 16, NULL, NULL),
(445, 'Xã Phú Minh', 'Xã', 16, NULL, NULL),
(448, 'Xã Phù Lỗ', 'Xã', 16, NULL, NULL),
(451, 'Xã Xuân Thu', 'Xã', 16, NULL, NULL),
(454, 'Thị trấn Đông Anh', 'Thị trấn', 17, NULL, NULL),
(457, 'Xã Xuân Nộn', 'Xã', 17, NULL, NULL),
(460, 'Xã Thuỵ Lâm', 'Xã', 17, NULL, NULL),
(463, 'Xã Bắc Hồng', 'Xã', 17, NULL, NULL),
(466, 'Xã Nguyên Khê', 'Xã', 17, NULL, NULL),
(469, 'Xã Nam Hồng', 'Xã', 17, NULL, NULL),
(472, 'Xã Tiên Dương', 'Xã', 17, NULL, NULL),
(475, 'Xã Vân Hà', 'Xã', 17, NULL, NULL),
(478, 'Xã Uy Nỗ', 'Xã', 17, NULL, NULL),
(481, 'Xã Vân Nội', 'Xã', 17, NULL, NULL),
(484, 'Xã Liên Hà', 'Xã', 17, NULL, NULL),
(487, 'Xã Việt Hùng', 'Xã', 17, NULL, NULL),
(490, 'Xã Kim Nỗ', 'Xã', 17, NULL, NULL),
(493, 'Xã Kim Chung', 'Xã', 17, NULL, NULL),
(496, 'Xã Dục Tú', 'Xã', 17, NULL, NULL),
(499, 'Xã Đại Mạch', 'Xã', 17, NULL, NULL),
(502, 'Xã Vĩnh Ngọc', 'Xã', 17, NULL, NULL),
(505, 'Xã Cổ Loa', 'Xã', 17, NULL, NULL),
(508, 'Xã Hải Bối', 'Xã', 17, NULL, NULL),
(511, 'Xã Xuân Canh', 'Xã', 17, NULL, NULL),
(514, 'Xã Võng La', 'Xã', 17, NULL, NULL),
(517, 'Xã Tàm Xá', 'Xã', 17, NULL, NULL),
(520, 'Xã Mai Lâm', 'Xã', 17, NULL, NULL),
(523, 'Xã Đông Hội', 'Xã', 17, NULL, NULL),
(526, 'Thị trấn Yên Viên', 'Thị trấn', 18, NULL, NULL),
(529, 'Xã Yên Thường', 'Xã', 18, NULL, NULL),
(532, 'Xã Yên Viên', 'Xã', 18, NULL, NULL),
(535, 'Xã Ninh Hiệp', 'Xã', 18, NULL, NULL),
(538, 'Xã Đình Xuyên', 'Xã', 18, NULL, NULL),
(541, 'Xã Dương Hà', 'Xã', 18, NULL, NULL),
(544, 'Xã Phù Đổng', 'Xã', 18, NULL, NULL),
(547, 'Xã Trung Mầu', 'Xã', 18, NULL, NULL),
(550, 'Xã Lệ Chi', 'Xã', 18, NULL, NULL),
(553, 'Xã Cổ Bi', 'Xã', 18, NULL, NULL),
(556, 'Xã Đặng Xá', 'Xã', 18, NULL, NULL),
(559, 'Xã Phú Thị', 'Xã', 18, NULL, NULL),
(562, 'Xã Kim Sơn', 'Xã', 18, NULL, NULL),
(565, 'Thị trấn Trâu Quỳ', 'Thị trấn', 18, NULL, NULL),
(568, 'Xã Dương Quang', 'Xã', 18, NULL, NULL),
(571, 'Xã Dương Xá', 'Xã', 18, NULL, NULL),
(574, 'Xã Đông Dư', 'Xã', 18, NULL, NULL),
(577, 'Xã Đa Tốn', 'Xã', 18, NULL, NULL),
(580, 'Xã Kiêu Kỵ', 'Xã', 18, NULL, NULL),
(583, 'Xã Bát Tràng', 'Xã', 18, NULL, NULL),
(586, 'Xã Kim Lan', 'Xã', 18, NULL, NULL),
(589, 'Xã Văn Đức', 'Xã', 18, NULL, NULL),
(592, 'Phường Cầu Diễn', 'Phường', 19, NULL, NULL),
(595, 'Phường Thượng Cát', 'Phường', 21, NULL, NULL),
(598, 'Phường Liên Mạc', 'Phường', 21, NULL, NULL),
(601, 'Phường Đông Ngạc', 'Phường', 21, NULL, NULL),
(602, 'Phường Đức Thắng', 'Phường', 21, NULL, NULL),
(604, 'Phường Thụy Phương', 'Phường', 21, NULL, NULL),
(607, 'Phường Tây Tựu', 'Phường', 21, NULL, NULL),
(610, 'Phường Xuân Đỉnh', 'Phường', 21, NULL, NULL),
(611, 'Phường Xuân Tảo', 'Phường', 21, NULL, NULL),
(613, 'Phường Minh Khai', 'Phường', 21, NULL, NULL),
(616, 'Phường Cổ Nhuế 1', 'Phường', 21, NULL, NULL),
(617, 'Phường Cổ Nhuế 2', 'Phường', 21, NULL, NULL),
(619, 'Phường Phú Diễn', 'Phường', 21, NULL, NULL),
(620, 'Phường Phúc Diễn', 'Phường', 21, NULL, NULL),
(622, 'Phường Xuân Phương', 'Phường', 19, NULL, NULL),
(623, 'Phường Phương Canh', 'Phường', 19, NULL, NULL),
(625, 'Phường Mỹ Đình 1', 'Phường', 19, NULL, NULL),
(626, 'Phường Mỹ Đình 2', 'Phường', 19, NULL, NULL),
(628, 'Phường Tây Mỗ', 'Phường', 19, NULL, NULL),
(631, 'Phường Mễ Trì', 'Phường', 19, NULL, NULL),
(632, 'Phường Phú Đô', 'Phường', 19, NULL, NULL),
(634, 'Phường Đại Mỗ', 'Phường', 19, NULL, NULL),
(637, 'Phường Trung Văn', 'Phường', 19, NULL, NULL),
(640, 'Thị trấn Văn Điển', 'Thị trấn', 20, NULL, NULL),
(643, 'Xã Tân Triều', 'Xã', 20, NULL, NULL),
(646, 'Xã Thanh Liệt', 'Xã', 20, NULL, NULL),
(649, 'Xã Tả Thanh Oai', 'Xã', 20, NULL, NULL),
(652, 'Xã Hữu Hoà', 'Xã', 20, NULL, NULL),
(655, 'Xã Tam Hiệp', 'Xã', 20, NULL, NULL),
(658, 'Xã Tứ Hiệp', 'Xã', 20, NULL, NULL),
(661, 'Xã Yên Mỹ', 'Xã', 20, NULL, NULL),
(664, 'Xã Vĩnh Quỳnh', 'Xã', 20, NULL, NULL),
(667, 'Xã Ngũ Hiệp', 'Xã', 20, NULL, NULL),
(670, 'Xã Duyên Hà', 'Xã', 20, NULL, NULL),
(673, 'Xã Ngọc Hồi', 'Xã', 20, NULL, NULL),
(676, 'Xã Vạn Phúc', 'Xã', 20, NULL, NULL),
(679, 'Xã Đại áng', 'Xã', 20, NULL, NULL),
(682, 'Xã Liên Ninh', 'Xã', 20, NULL, NULL),
(685, 'Xã Đông Mỹ', 'Xã', 20, NULL, NULL),
(8973, 'Thị trấn Chi Đông', 'Thị trấn', 250, NULL, NULL),
(8974, 'Xã Đại Thịnh', 'Xã', 250, NULL, NULL),
(8977, 'Xã Kim Hoa', 'Xã', 250, NULL, NULL),
(8980, 'Xã Thạch Đà', 'Xã', 250, NULL, NULL),
(8983, 'Xã Tiến Thắng', 'Xã', 250, NULL, NULL),
(8986, 'Xã Tự Lập', 'Xã', 250, NULL, NULL),
(8989, 'Thị trấn Quang Minh', 'Thị trấn', 250, NULL, NULL),
(8992, 'Xã Thanh Lâm', 'Xã', 250, NULL, NULL),
(8995, 'Xã Tam Đồng', 'Xã', 250, NULL, NULL),
(8998, 'Xã Liên Mạc', 'Xã', 250, NULL, NULL),
(9001, 'Xã Vạn Yên', 'Xã', 250, NULL, NULL),
(9004, 'Xã Chu Phan', 'Xã', 250, NULL, NULL),
(9007, 'Xã Tiến Thịnh', 'Xã', 250, NULL, NULL),
(9010, 'Xã Mê Linh', 'Xã', 250, NULL, NULL),
(9013, 'Xã Văn Khê', 'Xã', 250, NULL, NULL),
(9016, 'Xã Hoàng Kim', 'Xã', 250, NULL, NULL),
(9019, 'Xã Tiền Phong', 'Xã', 250, NULL, NULL),
(9022, 'Xã Tráng Việt', 'Xã', 250, NULL, NULL),
(9538, 'Phường Nguyễn Trãi', 'Phường', 268, NULL, NULL),
(9541, 'Phường Mộ Lao', 'Phường', 268, NULL, NULL),
(9542, 'Phường Văn Quán', 'Phường', 268, NULL, NULL),
(9544, 'Phường Vạn Phúc', 'Phường', 268, NULL, NULL),
(9547, 'Phường Yết Kiêu', 'Phường', 268, NULL, NULL),
(9550, 'Phường Quang Trung', 'Phường', 268, NULL, NULL),
(9551, 'Phường La Khê', 'Phường', 268, NULL, NULL),
(9552, 'Phường Phú La', 'Phường', 268, NULL, NULL),
(9553, 'Phường Phúc La', 'Phường', 268, NULL, NULL),
(9556, 'Phường Hà Cầu', 'Phường', 268, NULL, NULL),
(9562, 'Phường Yên Nghĩa', 'Phường', 268, NULL, NULL),
(9565, 'Phường Kiến Hưng', 'Phường', 268, NULL, NULL),
(9568, 'Phường Phú Lãm', 'Phường', 268, NULL, NULL),
(9571, 'Phường Phú Lương', 'Phường', 268, NULL, NULL),
(9574, 'Phường Lê Lợi', 'Phường', 269, NULL, NULL),
(9577, 'Phường Phú Thịnh', 'Phường', 269, NULL, NULL),
(9580, 'Phường Ngô Quyền', 'Phường', 269, NULL, NULL),
(9583, 'Phường Quang Trung', 'Phường', 269, NULL, NULL),
(9586, 'Phường Sơn Lộc', 'Phường', 269, NULL, NULL),
(9589, 'Phường Xuân Khanh', 'Phường', 269, NULL, NULL),
(9592, 'Xã Đường Lâm', 'Xã', 269, NULL, NULL),
(9595, 'Phường Viên Sơn', 'Phường', 269, NULL, NULL),
(9598, 'Xã Xuân Sơn', 'Xã', 269, NULL, NULL),
(9601, 'Phường Trung Hưng', 'Phường', 269, NULL, NULL),
(9604, 'Xã Thanh Mỹ', 'Xã', 269, NULL, NULL),
(9607, 'Phường Trung Sơn Trầm', 'Phường', 269, NULL, NULL),
(9610, 'Xã Kim Sơn', 'Xã', 269, NULL, NULL),
(9613, 'Xã Sơn Đông', 'Xã', 269, NULL, NULL),
(9616, 'Xã Cổ Đông', 'Xã', 269, NULL, NULL),
(9619, 'Thị trấn Tây Đằng', 'Thị trấn', 271, NULL, NULL),
(9625, 'Xã Phú Cường', 'Xã', 271, NULL, NULL),
(9628, 'Xã Cổ Đô', 'Xã', 271, NULL, NULL),
(9631, 'Xã Tản Hồng', 'Xã', 271, NULL, NULL),
(9634, 'Xã Vạn Thắng', 'Xã', 271, NULL, NULL),
(9637, 'Xã Châu Sơn', 'Xã', 271, NULL, NULL),
(9640, 'Xã Phong Vân', 'Xã', 271, NULL, NULL),
(9643, 'Xã Phú Đông', 'Xã', 271, NULL, NULL),
(9646, 'Xã Phú Phương', 'Xã', 271, NULL, NULL),
(9649, 'Xã Phú Châu', 'Xã', 271, NULL, NULL),
(9652, 'Xã Thái Hòa', 'Xã', 271, NULL, NULL),
(9655, 'Xã Đồng Thái', 'Xã', 271, NULL, NULL),
(9658, 'Xã Phú Sơn', 'Xã', 271, NULL, NULL),
(9661, 'Xã Minh Châu', 'Xã', 271, NULL, NULL),
(9664, 'Xã Vật Lại', 'Xã', 271, NULL, NULL),
(9667, 'Xã Chu Minh', 'Xã', 271, NULL, NULL),
(9670, 'Xã Tòng Bạt', 'Xã', 271, NULL, NULL),
(9673, 'Xã Cẩm Lĩnh', 'Xã', 271, NULL, NULL),
(9676, 'Xã Sơn Đà', 'Xã', 271, NULL, NULL),
(9679, 'Xã Đông Quang', 'Xã', 271, NULL, NULL),
(9682, 'Xã Tiên Phong', 'Xã', 271, NULL, NULL),
(9685, 'Xã Thụy An', 'Xã', 271, NULL, NULL),
(9688, 'Xã Cam Thượng', 'Xã', 271, NULL, NULL),
(9691, 'Xã Thuần Mỹ', 'Xã', 271, NULL, NULL),
(9694, 'Xã Tản Lĩnh', 'Xã', 271, NULL, NULL),
(9697, 'Xã Ba Trại', 'Xã', 271, NULL, NULL),
(9700, 'Xã Minh Quang', 'Xã', 271, NULL, NULL),
(9703, 'Xã Ba Vì', 'Xã', 271, NULL, NULL),
(9706, 'Xã Vân Hòa', 'Xã', 271, NULL, NULL),
(9709, 'Xã Yên Bài', 'Xã', 271, NULL, NULL),
(9712, 'Xã Khánh Thượng', 'Xã', 271, NULL, NULL),
(9715, 'Thị trấn Phúc Thọ', 'Thị trấn', 272, NULL, NULL),
(9718, 'Xã Vân Hà', 'Xã', 272, NULL, NULL),
(9721, 'Xã Vân Phúc', 'Xã', 272, NULL, NULL),
(9724, 'Xã Vân Nam', 'Xã', 272, NULL, NULL),
(9727, 'Xã Xuân Đình', 'Xã', 272, NULL, NULL),
(9733, 'Xã Sen Phương', 'Xã', 272, NULL, NULL),
(9739, 'Xã Võng Xuyên', 'Xã', 272, NULL, NULL),
(9742, 'Xã Thọ Lộc', 'Xã', 272, NULL, NULL),
(9745, 'Xã Long Xuyên', 'Xã', 272, NULL, NULL),
(9748, 'Xã Thượng Cốc', 'Xã', 272, NULL, NULL),
(9751, 'Xã Hát Môn', 'Xã', 272, NULL, NULL),
(9754, 'Xã Tích Giang', 'Xã', 272, NULL, NULL),
(9757, 'Xã Thanh Đa', 'Xã', 272, NULL, NULL),
(9760, 'Xã Trạch Mỹ Lộc', 'Xã', 272, NULL, NULL),
(9763, 'Xã Phúc Hòa', 'Xã', 272, NULL, NULL),
(9766, 'Xã Ngọc Tảo', 'Xã', 272, NULL, NULL),
(9769, 'Xã Phụng Thượng', 'Xã', 272, NULL, NULL),
(9772, 'Xã Tam Thuấn', 'Xã', 272, NULL, NULL),
(9775, 'Xã Tam Hiệp', 'Xã', 272, NULL, NULL),
(9778, 'Xã Hiệp Thuận', 'Xã', 272, NULL, NULL),
(9781, 'Xã Liên Hiệp', 'Xã', 272, NULL, NULL),
(9784, 'Thị trấn Phùng', 'Thị trấn', 273, NULL, NULL),
(9787, 'Xã Trung Châu', 'Xã', 273, NULL, NULL),
(9790, 'Xã Thọ An', 'Xã', 273, NULL, NULL),
(9793, 'Xã Thọ Xuân', 'Xã', 273, NULL, NULL),
(9796, 'Xã Hồng Hà', 'Xã', 273, NULL, NULL),
(9799, 'Xã Liên Hồng', 'Xã', 273, NULL, NULL),
(9802, 'Xã Liên Hà', 'Xã', 273, NULL, NULL),
(9805, 'Xã Hạ Mỗ', 'Xã', 273, NULL, NULL),
(9808, 'Xã Liên Trung', 'Xã', 273, NULL, NULL),
(9811, 'Xã Phương Đình', 'Xã', 273, NULL, NULL),
(9814, 'Xã Thượng Mỗ', 'Xã', 273, NULL, NULL),
(9817, 'Xã Tân Hội', 'Xã', 273, NULL, NULL),
(9820, 'Xã Tân Lập', 'Xã', 273, NULL, NULL),
(9823, 'Xã Đan Phượng', 'Xã', 273, NULL, NULL),
(9826, 'Xã Đồng Tháp', 'Xã', 273, NULL, NULL),
(9829, 'Xã Song Phượng', 'Xã', 273, NULL, NULL),
(9832, 'Thị trấn Trạm Trôi', 'Thị trấn', 274, NULL, NULL),
(9835, 'Xã Đức Thượng', 'Xã', 274, NULL, NULL),
(9838, 'Xã Minh Khai', 'Xã', 274, NULL, NULL),
(9841, 'Xã Dương Liễu', 'Xã', 274, NULL, NULL),
(9844, 'Xã Di Trạch', 'Xã', 274, NULL, NULL),
(9847, 'Xã Đức Giang', 'Xã', 274, NULL, NULL),
(9850, 'Xã Cát Quế', 'Xã', 274, NULL, NULL),
(9853, 'Xã Kim Chung', 'Xã', 274, NULL, NULL),
(9856, 'Xã Yên Sở', 'Xã', 274, NULL, NULL),
(9859, 'Xã Sơn Đồng', 'Xã', 274, NULL, NULL),
(9862, 'Xã Vân Canh', 'Xã', 274, NULL, NULL),
(9865, 'Xã Đắc Sở', 'Xã', 274, NULL, NULL),
(9868, 'Xã Lại Yên', 'Xã', 274, NULL, NULL),
(9871, 'Xã Tiền Yên', 'Xã', 274, NULL, NULL),
(9874, 'Xã Song Phương', 'Xã', 274, NULL, NULL),
(9877, 'Xã An Khánh', 'Xã', 274, NULL, NULL),
(9880, 'Xã An Thượng', 'Xã', 274, NULL, NULL),
(9883, 'Xã Vân Côn', 'Xã', 274, NULL, NULL),
(9886, 'Phường Dương Nội', 'Phường', 268, NULL, NULL),
(9889, 'Xã La Phù', 'Xã', 274, NULL, NULL),
(9892, 'Xã Đông La', 'Xã', 274, NULL, NULL),
(9895, 'Thị trấn Quốc Oai', 'Thị trấn', 275, NULL, NULL),
(9898, 'Xã Sài Sơn', 'Xã', 275, NULL, NULL),
(9901, 'Xã Phượng Cách', 'Xã', 275, NULL, NULL),
(9904, 'Xã Yên Sơn', 'Xã', 275, NULL, NULL),
(9907, 'Xã Ngọc Liệp', 'Xã', 275, NULL, NULL),
(9910, 'Xã Ngọc Mỹ', 'Xã', 275, NULL, NULL),
(9913, 'Xã Liệp Tuyết', 'Xã', 275, NULL, NULL),
(9916, 'Xã Thạch Thán', 'Xã', 275, NULL, NULL),
(9919, 'Xã Đồng Quang', 'Xã', 275, NULL, NULL),
(9922, 'Xã Phú Cát', 'Xã', 275, NULL, NULL),
(9925, 'Xã Tuyết Nghĩa', 'Xã', 275, NULL, NULL),
(9928, 'Xã Nghĩa Hương', 'Xã', 275, NULL, NULL),
(9931, 'Xã Cộng Hòa', 'Xã', 275, NULL, NULL),
(9934, 'Xã Tân Phú', 'Xã', 275, NULL, NULL),
(9937, 'Xã Đại Thành', 'Xã', 275, NULL, NULL),
(9940, 'Xã Phú Mãn', 'Xã', 275, NULL, NULL),
(9943, 'Xã Cấn Hữu', 'Xã', 275, NULL, NULL),
(9946, 'Xã Tân Hòa', 'Xã', 275, NULL, NULL),
(9949, 'Xã Hòa Thạch', 'Xã', 275, NULL, NULL),
(9952, 'Xã Đông Yên', 'Xã', 275, NULL, NULL),
(9955, 'Thị trấn Liên Quan', 'Thị trấn', 276, NULL, NULL),
(9958, 'Xã Đại Đồng', 'Xã', 276, NULL, NULL),
(9961, 'Xã Cẩm Yên', 'Xã', 276, NULL, NULL),
(9964, 'Xã Lại Thượng', 'Xã', 276, NULL, NULL),
(9967, 'Xã Phú Kim', 'Xã', 276, NULL, NULL),
(9970, 'Xã Hương Ngải', 'Xã', 276, NULL, NULL),
(9973, 'Xã Canh Nậu', 'Xã', 276, NULL, NULL),
(9976, 'Xã Kim Quan', 'Xã', 276, NULL, NULL),
(9979, 'Xã Dị Nậu', 'Xã', 276, NULL, NULL),
(9982, 'Xã Bình Yên', 'Xã', 276, NULL, NULL),
(9985, 'Xã Chàng Sơn', 'Xã', 276, NULL, NULL),
(9988, 'Xã Thạch Hoà', 'Xã', 276, NULL, NULL),
(9991, 'Xã Cần Kiệm', 'Xã', 276, NULL, NULL),
(9994, 'Xã Hữu Bằng', 'Xã', 276, NULL, NULL),
(9997, 'Xã Phùng Xá', 'Xã', 276, NULL, NULL),
(10000, 'Xã Tân Xã', 'Xã', 276, NULL, NULL),
(10003, 'Xã Thạch Xá', 'Xã', 276, NULL, NULL),
(10006, 'Xã Bình Phú', 'Xã', 276, NULL, NULL),
(10009, 'Xã Hạ Bằng', 'Xã', 276, NULL, NULL),
(10012, 'Xã Đồng Trúc', 'Xã', 276, NULL, NULL),
(10015, 'Thị trấn Chúc Sơn', 'Thị trấn', 277, NULL, NULL),
(10018, 'Thị trấn Xuân Mai', 'Thị trấn', 277, NULL, NULL),
(10021, 'Xã Phụng Châu', 'Xã', 277, NULL, NULL),
(10024, 'Xã Tiên Phương', 'Xã', 277, NULL, NULL),
(10027, 'Xã Đông Sơn', 'Xã', 277, NULL, NULL),
(10030, 'Xã Đông Phương Yên', 'Xã', 277, NULL, NULL),
(10033, 'Xã Phú Nghĩa', 'Xã', 277, NULL, NULL),
(10039, 'Xã Trường Yên', 'Xã', 277, NULL, NULL),
(10042, 'Xã Ngọc Hòa', 'Xã', 277, NULL, NULL),
(10045, 'Xã Thủy Xuân Tiên', 'Xã', 277, NULL, NULL),
(10048, 'Xã Thanh Bình', 'Xã', 277, NULL, NULL),
(10051, 'Xã Trung Hòa', 'Xã', 277, NULL, NULL),
(10054, 'Xã Đại Yên', 'Xã', 277, NULL, NULL),
(10057, 'Xã Thụy Hương', 'Xã', 277, NULL, NULL),
(10060, 'Xã Tốt Động', 'Xã', 277, NULL, NULL),
(10063, 'Xã Lam Điền', 'Xã', 277, NULL, NULL),
(10066, 'Xã Tân Tiến', 'Xã', 277, NULL, NULL),
(10069, 'Xã Nam Phương Tiến', 'Xã', 277, NULL, NULL),
(10072, 'Xã Hợp Đồng', 'Xã', 277, NULL, NULL),
(10075, 'Xã Hoàng Văn Thụ', 'Xã', 277, NULL, NULL),
(10078, 'Xã Hoàng Diệu', 'Xã', 277, NULL, NULL),
(10081, 'Xã Hữu Văn', 'Xã', 277, NULL, NULL),
(10084, 'Xã Quảng Bị', 'Xã', 277, NULL, NULL),
(10087, 'Xã Mỹ Lương', 'Xã', 277, NULL, NULL),
(10090, 'Xã Thượng Vực', 'Xã', 277, NULL, NULL),
(10093, 'Xã Hồng Phong', 'Xã', 277, NULL, NULL),
(10096, 'Xã Đồng Phú', 'Xã', 277, NULL, NULL),
(10099, 'Xã Trần Phú', 'Xã', 277, NULL, NULL),
(10102, 'Xã Văn Võ', 'Xã', 277, NULL, NULL),
(10105, 'Xã Đồng Lạc', 'Xã', 277, NULL, NULL),
(10108, 'Xã Hòa Chính', 'Xã', 277, NULL, NULL),
(10111, 'Xã Phú Nam An', 'Xã', 277, NULL, NULL),
(10114, 'Thị trấn Kim Bài', 'Thị trấn', 278, NULL, NULL),
(10117, 'Phường Đồng Mai', 'Phường', 268, NULL, NULL),
(10120, 'Xã Cự Khê', 'Xã', 278, NULL, NULL),
(10123, 'Phường Biên Giang', 'Phường', 268, NULL, NULL),
(10126, 'Xã Bích Hòa', 'Xã', 278, NULL, NULL),
(10129, 'Xã Mỹ Hưng', 'Xã', 278, NULL, NULL),
(10132, 'Xã Cao Viên', 'Xã', 278, NULL, NULL),
(10135, 'Xã Bình Minh', 'Xã', 278, NULL, NULL),
(10138, 'Xã Tam Hưng', 'Xã', 278, NULL, NULL),
(10141, 'Xã Thanh Cao', 'Xã', 278, NULL, NULL),
(10144, 'Xã Thanh Thùy', 'Xã', 278, NULL, NULL),
(10147, 'Xã Thanh Mai', 'Xã', 278, NULL, NULL),
(10150, 'Xã Thanh Văn', 'Xã', 278, NULL, NULL),
(10153, 'Xã Đỗ Động', 'Xã', 278, NULL, NULL),
(10156, 'Xã Kim An', 'Xã', 278, NULL, NULL),
(10159, 'Xã Kim Thư', 'Xã', 278, NULL, NULL),
(10162, 'Xã Phương Trung', 'Xã', 278, NULL, NULL),
(10165, 'Xã Tân Ước', 'Xã', 278, NULL, NULL),
(10168, 'Xã Dân Hòa', 'Xã', 278, NULL, NULL),
(10171, 'Xã Liên Châu', 'Xã', 278, NULL, NULL),
(10174, 'Xã Cao Dương', 'Xã', 278, NULL, NULL),
(10177, 'Xã Xuân Dương', 'Xã', 278, NULL, NULL),
(10180, 'Xã Hồng Dương', 'Xã', 278, NULL, NULL),
(10183, 'Thị trấn Thường Tín', 'Thị trấn', 279, NULL, NULL),
(10186, 'Xã Ninh Sở', 'Xã', 279, NULL, NULL),
(10189, 'Xã Nhị Khê', 'Xã', 279, NULL, NULL),
(10192, 'Xã Duyên Thái', 'Xã', 279, NULL, NULL),
(10195, 'Xã Khánh Hà', 'Xã', 279, NULL, NULL),
(10198, 'Xã Hòa Bình', 'Xã', 279, NULL, NULL),
(10201, 'Xã Văn Bình', 'Xã', 279, NULL, NULL),
(10204, 'Xã Hiền Giang', 'Xã', 279, NULL, NULL),
(10207, 'Xã Hồng Vân', 'Xã', 279, NULL, NULL),
(10210, 'Xã Vân Tảo', 'Xã', 279, NULL, NULL),
(10213, 'Xã Liên Phương', 'Xã', 279, NULL, NULL),
(10216, 'Xã Văn Phú', 'Xã', 279, NULL, NULL),
(10219, 'Xã Tự Nhiên', 'Xã', 279, NULL, NULL),
(10222, 'Xã Tiền Phong', 'Xã', 279, NULL, NULL),
(10225, 'Xã Hà Hồi', 'Xã', 279, NULL, NULL),
(10228, 'Xã Thư Phú', 'Xã', 279, NULL, NULL),
(10231, 'Xã Nguyễn Trãi', 'Xã', 279, NULL, NULL),
(10234, 'Xã Quất Động', 'Xã', 279, NULL, NULL),
(10237, 'Xã Chương Dương', 'Xã', 279, NULL, NULL),
(10240, 'Xã Tân Minh', 'Xã', 279, NULL, NULL),
(10243, 'Xã Lê Lợi', 'Xã', 279, NULL, NULL),
(10246, 'Xã Thắng Lợi', 'Xã', 279, NULL, NULL),
(10249, 'Xã Dũng Tiến', 'Xã', 279, NULL, NULL),
(10252, 'Xã Thống Nhất', 'Xã', 279, NULL, NULL),
(10255, 'Xã Nghiêm Xuyên', 'Xã', 279, NULL, NULL),
(10258, 'Xã Tô Hiệu', 'Xã', 279, NULL, NULL),
(10261, 'Xã Văn Tự', 'Xã', 279, NULL, NULL),
(10264, 'Xã Vạn Điểm', 'Xã', 279, NULL, NULL),
(10267, 'Xã Minh Cường', 'Xã', 279, NULL, NULL),
(10270, 'Thị trấn Phú Minh', 'Thị trấn', 280, NULL, NULL),
(10273, 'Thị trấn Phú Xuyên', 'Thị trấn', 280, NULL, NULL),
(10276, 'Xã Hồng Minh', 'Xã', 280, NULL, NULL),
(10279, 'Xã Phượng Dực', 'Xã', 280, NULL, NULL),
(10282, 'Xã Nam Tiến', 'Xã', 280, NULL, NULL),
(10288, 'Xã Tri Trung', 'Xã', 280, NULL, NULL),
(10291, 'Xã Đại Thắng', 'Xã', 280, NULL, NULL),
(10294, 'Xã Phú Túc', 'Xã', 280, NULL, NULL),
(10297, 'Xã Văn Hoàng', 'Xã', 280, NULL, NULL),
(10300, 'Xã Hồng Thái', 'Xã', 280, NULL, NULL),
(10303, 'Xã Hoàng Long', 'Xã', 280, NULL, NULL),
(10306, 'Xã Quang Trung', 'Xã', 280, NULL, NULL),
(10309, 'Xã Nam Phong', 'Xã', 280, NULL, NULL),
(10312, 'Xã Nam Triều', 'Xã', 280, NULL, NULL),
(10315, 'Xã Tân Dân', 'Xã', 280, NULL, NULL),
(10318, 'Xã Sơn Hà', 'Xã', 280, NULL, NULL),
(10321, 'Xã Chuyên Mỹ', 'Xã', 280, NULL, NULL),
(10324, 'Xã Khai Thái', 'Xã', 280, NULL, NULL),
(10327, 'Xã Phúc Tiến', 'Xã', 280, NULL, NULL),
(10330, 'Xã Vân Từ', 'Xã', 280, NULL, NULL),
(10333, 'Xã Tri Thủy', 'Xã', 280, NULL, NULL),
(10336, 'Xã Đại Xuyên', 'Xã', 280, NULL, NULL),
(10339, 'Xã Phú Yên', 'Xã', 280, NULL, NULL),
(10342, 'Xã Bạch Hạ', 'Xã', 280, NULL, NULL),
(10345, 'Xã Quang Lãng', 'Xã', 280, NULL, NULL),
(10348, 'Xã Châu Can', 'Xã', 280, NULL, NULL),
(10351, 'Xã Minh Tân', 'Xã', 280, NULL, NULL),
(10354, 'Thị trấn Vân Đình', 'Thị trấn', 281, NULL, NULL),
(10357, 'Xã Viên An', 'Xã', 281, NULL, NULL),
(10360, 'Xã Viên Nội', 'Xã', 281, NULL, NULL),
(10363, 'Xã Hoa Sơn', 'Xã', 281, NULL, NULL),
(10366, 'Xã Quảng Phú Cầu', 'Xã', 281, NULL, NULL),
(10369, 'Xã Trường Thịnh', 'Xã', 281, NULL, NULL),
(10372, 'Xã Cao Thành', 'Xã', 281, NULL, NULL),
(10375, 'Xã Liên Bạt', 'Xã', 281, NULL, NULL),
(10378, 'Xã Sơn Công', 'Xã', 281, NULL, NULL),
(10381, 'Xã Đồng Tiến', 'Xã', 281, NULL, NULL),
(10384, 'Xã Phương Tú', 'Xã', 281, NULL, NULL),
(10387, 'Xã Trung Tú', 'Xã', 281, NULL, NULL),
(10390, 'Xã Đồng Tân', 'Xã', 281, NULL, NULL),
(10393, 'Xã Tảo Dương Văn', 'Xã', 281, NULL, NULL),
(10396, 'Xã Vạn Thái', 'Xã', 281, NULL, NULL),
(10399, 'Xã Minh Đức', 'Xã', 281, NULL, NULL),
(10402, 'Xã Hòa Lâm', 'Xã', 281, NULL, NULL),
(10405, 'Xã Hòa Xá', 'Xã', 281, NULL, NULL),
(10408, 'Xã Trầm Lộng', 'Xã', 281, NULL, NULL),
(10411, 'Xã Kim Đường', 'Xã', 281, NULL, NULL),
(10414, 'Xã Hòa Nam', 'Xã', 281, NULL, NULL),
(10417, 'Xã Hòa Phú', 'Xã', 281, NULL, NULL),
(10420, 'Xã Đội Bình', 'Xã', 281, NULL, NULL),
(10423, 'Xã Đại Hùng', 'Xã', 281, NULL, NULL),
(10426, 'Xã Đông Lỗ', 'Xã', 281, NULL, NULL),
(10429, 'Xã Phù Lưu', 'Xã', 281, NULL, NULL),
(10432, 'Xã Đại Cường', 'Xã', 281, NULL, NULL),
(10435, 'Xã Lưu Hoàng', 'Xã', 281, NULL, NULL),
(10438, 'Xã Hồng Quang', 'Xã', 281, NULL, NULL),
(10441, 'Thị trấn Đại Nghĩa', 'Thị trấn', 282, NULL, NULL),
(10444, 'Xã Đồng Tâm', 'Xã', 282, NULL, NULL),
(10447, 'Xã Thượng Lâm', 'Xã', 282, NULL, NULL),
(10450, 'Xã Tuy Lai', 'Xã', 282, NULL, NULL),
(10453, 'Xã Phúc Lâm', 'Xã', 282, NULL, NULL),
(10456, 'Xã Mỹ Thành', 'Xã', 282, NULL, NULL),
(10459, 'Xã Bột Xuyên', 'Xã', 282, NULL, NULL),
(10462, 'Xã An Mỹ', 'Xã', 282, NULL, NULL),
(10465, 'Xã Hồng Sơn', 'Xã', 282, NULL, NULL),
(10468, 'Xã Lê Thanh', 'Xã', 282, NULL, NULL),
(10471, 'Xã Xuy Xá', 'Xã', 282, NULL, NULL),
(10474, 'Xã Phùng Xá', 'Xã', 282, NULL, NULL),
(10477, 'Xã Phù Lưu Tế', 'Xã', 282, NULL, NULL),
(10480, 'Xã Đại Hưng', 'Xã', 282, NULL, NULL),
(10483, 'Xã Vạn Kim', 'Xã', 282, NULL, NULL),
(10486, 'Xã Đốc Tín', 'Xã', 282, NULL, NULL),
(10489, 'Xã Hương Sơn', 'Xã', 282, NULL, NULL),
(10492, 'Xã Hùng Tiến', 'Xã', 282, NULL, NULL),
(10495, 'Xã An Tiến', 'Xã', 282, NULL, NULL),
(10498, 'Xã Hợp Tiến', 'Xã', 282, NULL, NULL),
(10501, 'Xã Hợp Thanh', 'Xã', 282, NULL, NULL),
(10504, 'Xã An Phú', 'Xã', 282, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `location_images`
--
ALTER TABLE `location_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wards_district_id_foreign` (`district_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `location_images`
--
ALTER TABLE `location_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10505;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
