-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 14, 2022 lúc 09:57 PM
-- Phiên bản máy phục vụ: 10.3.36-MariaDB-cll-lve
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tclmm5swin_321`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `black_lists`
--

CREATE TABLE `black_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardware` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MODELID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `devices`
--

INSERT INTO `devices` (`id`, `device`, `hardware`, `facture`, `MODELID`, `created_at`, `updated_at`) VALUES
(1, 'SM-G532F', 'mt6735', 'samsung', 'samsung sm-g532gmt6735r58j8671gsw', '2022-06-23 18:07:55', '2022-06-23 18:07:56'),
(3, 'SM-A102U', 'a10e', 'Samsung', 'Samsung SM-A102U', '2022-06-23 18:07:57', '2022-06-23 18:07:57'),
(4, 'SM-A305FN', 'a30', 'Samsung', 'Samsung SM-A305FN', '2022-06-23 18:07:58', '2022-06-23 18:07:59'),
(5, 'HTC One X9 dual sim', 'htc_e56ml_dtul', 'HTC', 'HTC One X9 dual sim', '2022-06-23 18:08:00', '2022-06-23 18:08:01'),
(6, 'HTC 7060', 'cp5dug', 'HTC', 'HTC HTC_7060', '2022-06-23 18:08:02', '2022-06-23 18:08:00'),
(7, 'HTC D10w', 'htc_a56dj_pro_dtwl', 'HTC', 'HTC htc_a56dj_pro_dtwl', '2022-06-23 18:08:04', '2022-06-23 18:08:03'),
(8, 'Oppo realme X Lite', 'RMX1851CN', 'Oppo', 'Oppo RMX1851', '2022-06-23 18:08:04', '2022-06-23 18:08:05'),
(9, 'MI 9', 'equuleus', 'Xiaomi', 'Xiaomi equuleus', '2022-06-23 18:08:06', '2022-06-23 18:08:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gift_codes`
--

CREATE TABLE `gift_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_banks`
--

CREATE TABLE `history_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_day_missions`
--

CREATE TABLE `history_day_missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `receive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_gifts`
--

CREATE TABLE `history_gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_hus`
--

CREATE TABLE `history_hus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_moneys`
--

CREATE TABLE `history_moneys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_plays`
--

CREATE TABLE `history_plays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `receive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `game` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneSend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_week_tops`
--

CREATE TABLE `history_week_tops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `phoneSend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `gift` int(11) NOT NULL,
  `top` int(11) NOT NULL,
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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_05_01_114309_create_contacts_table', 1),
(4, '2022_05_01_134738_create_momos_table', 1),
(5, '2022_05_02_012840_create_settings_table', 1),
(6, '2022_05_02_031023_create_history_plays_table', 1),
(8, '2022_05_09_134102_create_history_day_mission_table', 2),
(9, '2022_05_10_061858_create_history_day_missions_table', 3),
(11, '2022_05_15_101543_create_history_moneys_table', 5),
(12, '2022_05_21_183344_create_history_banks_table', 5),
(14, '2022_05_14_214634_create_history_week_tops_table', 6),
(15, '2022_06_06_114937_create_musters_table', 7),
(16, '2022_06_09_153537_create_history_hus_table', 8),
(18, '2022_06_11_105244_create_history_gifts_table', 8),
(19, '2022_06_11_120408_create_gift_codes_table', 9),
(20, '2022_06_23_130541_create_devices_table', 10),
(21, '2022_06_24_134417_create_black_lists_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momos`
--

CREATE TABLE `momos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `time_login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `try` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `musters`
--

CREATE TABLE `musters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `turn` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `history` int(11) NOT NULL,
  `only_win` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  `day_mission` int(11) NOT NULL,
  `week_top` int(11) NOT NULL,
  `day_top` int(11) NOT NULL,
  `hu` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `refund` int(11) NOT NULL,
  `muster` int(11) NOT NULL,
  `giftcode` int(11) NOT NULL,
  `gift_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_muster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_refund` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_giftcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_hu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioCL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioCL2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioTX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioTX2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratio1P3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioG3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioH3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioXSMB` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioXien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratioLO` int(11) DEFAULT NULL,
  `ratioHu` int(11) DEFAULT NULL,
  `amount_hu` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_muster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_muter` int(11) DEFAULT NULL,
  `muster_turn` int(11) DEFAULT NULL,
  `pay_muster` int(11) DEFAULT NULL,
  `limit_refund` int(11) DEFAULT NULL,
  `type_check` int(11) DEFAULT NULL,
  `total_muster` int(11) DEFAULT NULL,
  `contentCL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentCL2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentTX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentTX2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content1P3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentG3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentH3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentLO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentXien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contentXSMB` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `keywords`, `logo`, `description`, `favicon`, `background`, `active`, `history`, `only_win`, `limit`, `day_mission`, `week_top`, `day_top`, `hu`, `status`, `refund`, `muster`, `giftcode`, `gift_week`, `gift_day`, `level_day`, `note`, `content`, `content_day`, `content_week`, `content_muster`, `content_refund`, `content_giftcode`, `content_hu`, `ads`, `ratioCL`, `ratioCL2`, `ratioTX`, `ratioTX2`, `ratio1P3`, `ratioG3`, `ratioH3`, `ratioXSMB`, `ratioXien`, `ratioLO`, `ratioHu`, `amount_hu`, `color`, `top_phone`, `top_amount`, `amount_muster`, `theme`, `time_muter`, `muster_turn`, `pay_muster`, `limit_refund`, `type_check`, `total_muster`, `contentCL`, `contentCL2`, `contentTX`, `contentTX2`, `content1P3`, `contentG3`, `contentH3`, `contentLO`, `contentXien`, `contentXSMB`, `created_at`, `updated_at`) VALUES
(1, 'CLMM', 'Hệ thống MiNiGame MoMo 24/7 Thanh Toán Tự Động', 'clmm,chanlemomo,Momo chẵn lẻ,minigame momo,chẵn lẻ momo 24/7,momo cl,chẵn lẻ momo tự động,Chẵn lẻ online', 'https://i.imgur.com/fHucqNM.png', 'CLMM', 'https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png', '1', 1, 1, 1, 5, 1, 1, 0, 0, 0, 0, 0, 1, '800000|600000|400000|200000|100000', '50000|2000|300|500|600', '50000|2000|300|500|600', '<h2>Ch&agrave;o mừng bạn đến với hệ thống Chẵn Lẻ MoMo !</h2>\r\n<p>&nbsp;<strong>Trước khi chơi,</strong><strong>&nbsp;</strong>bạn n&ecirc;n đọc kĩ những lưu &yacute; sau, nếu bỏ qua những lưu &yacute; n&agrave;y, th&igrave; khi&nbsp;<strong>mất tiền </strong>sẽ&nbsp;kh&ocirc;ng chịu tr&aacute;ch nhiệm.</p>\r\n<ol>\r\n<li><strong><em>Chẵn lẻ t&agrave;i xỉu</em>&nbsp;số cuối m&atilde; giao dịch l&agrave; 0&nbsp;v&agrave; 9 l&agrave; thua, nếu muốn c&oacute; 0 v&agrave; 9 vui l&ograve;ng chơi chẵn lẻ 2 , t&agrave;i xỉu 2</strong></li>\r\n<li>Mỗi số tr&ecirc;n web chỉ c&oacute; thể giao dịch tối đa&nbsp;<strong>30tr</strong>&nbsp;<strong>hoặc</strong>&nbsp;&nbsp;<strong>200</strong><strong>&nbsp;lần</strong>&nbsp;một ng&agrave;y. V&igrave; vậy,&nbsp;<strong>số hệ thống</strong>&nbsp;thay đổi li&ecirc;n tục n&ecirc;n&nbsp;<strong>trước khi chơi</strong>&nbsp;bạn n&ecirc;n l&ecirc;n lấy số trước, nếu lỡ chuyển tiền v&agrave;o th&igrave; bạn vẫn sẽ được&nbsp;<strong>ho&agrave;n tiền thắng nhưng chỉ chậm hơn 5-10p, bạn chỉ cần l&ecirc;n web lấy số kh&aacute;c l&agrave; sẽ được done nhanh như b&igrave;nh thường</strong></li>\r\n<li>Mỗi game&nbsp;c&oacute; một&nbsp;<strong>mức cược</strong>&nbsp;kh&aacute;c nhau, chuyển sai&nbsp;<strong>tiền cược&nbsp;</strong>bạn sẽ <strong>mất tiền</strong></li>\r\n<li><strong>Nếu chuyển sai hạn mức bạn sẽ mất tiền&nbsp;</strong></li>\r\n<li>&nbsp;</li>\r\n</ol>\r\n<p><em><strong>Khi bạn tắt ch&uacute; &yacute; n&agrave;y đi, đồng nghĩa với việc bạn đ&atilde; đọc v&agrave; chấp nhận những điều đ&oacute; !!</strong></em></p>', 'Đổi Thẻ Cào Thành Tiền Mặt', 'Đổi Thẻ Cào Thành Tiền Mặt', 'Đổi Thẻ Cào Thành Tiền Mặt', '1', 'Đổi Thẻ Cào Thành Tiền Mặt', 'Tặng', 'Đổi Thẻ Cào Thành Tiền Mặt', NULL, '2.6', '1.9', '2.4', '1.95', '3|5', '3|4|5', '1|3|4|5', '1|4|7', '3', 3, 20, 225000, '#17a2b8', '01667544325|01667553424|01664534424|01656334424|01676654424', '77210500|65160500|54566001|32140500|29995400', '100|100', 'v1', 600, 49, 1, 2, 0, 10, 'C|L', 'C2|L2', 'T|X', 'T2|X2', 'N0|N1|N2|N3', 'G3', 'H3', 'LO', 'CX|LT|CT|LX', 'XSMB', '2022-05-03 23:38:03', '2022-11-12 05:38:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2a$12$cLahcjP9LaG5XGyLxVbMfeW7NW1N0EJuUWG8jNpXHbqwGopUuWgbq', 'admin', '2022-05-14 00:11:53', '2022-11-08 21:02:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `black_lists`
--
ALTER TABLE `black_lists`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gift_codes`
--
ALTER TABLE `gift_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_banks`
--
ALTER TABLE `history_banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_day_missions`
--
ALTER TABLE `history_day_missions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_gifts`
--
ALTER TABLE `history_gifts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_hus`
--
ALTER TABLE `history_hus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_moneys`
--
ALTER TABLE `history_moneys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_plays`
--
ALTER TABLE `history_plays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `history_plays_tranid_unique` (`tranId`);

--
-- Chỉ mục cho bảng `history_week_tops`
--
ALTER TABLE `history_week_tops`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `momos`
--
ALTER TABLE `momos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `musters`
--
ALTER TABLE `musters`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `black_lists`
--
ALTER TABLE `black_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `gift_codes`
--
ALTER TABLE `gift_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `history_banks`
--
ALTER TABLE `history_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `history_day_missions`
--
ALTER TABLE `history_day_missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `history_gifts`
--
ALTER TABLE `history_gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `history_hus`
--
ALTER TABLE `history_hus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `history_moneys`
--
ALTER TABLE `history_moneys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `history_plays`
--
ALTER TABLE `history_plays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `history_week_tops`
--
ALTER TABLE `history_week_tops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `momos`
--
ALTER TABLE `momos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `musters`
--
ALTER TABLE `musters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
