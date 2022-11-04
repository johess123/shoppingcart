-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-04 10:05:25
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `shopping`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add allgoods', 7, 'add_allgoods'),
(26, 'Can change allgoods', 7, 'change_allgoods'),
(27, 'Can delete allgoods', 7, 'delete_allgoods'),
(28, 'Can view allgoods', 7, 'view_allgoods'),
(29, 'Can add alluser', 8, 'add_alluser'),
(30, 'Can change alluser', 8, 'change_alluser'),
(31, 'Can delete alluser', 8, 'delete_alluser'),
(32, 'Can view alluser', 8, 'view_alluser'),
(33, 'Can add allcart', 9, 'add_allcart'),
(34, 'Can change allcart', 9, 'change_allcart'),
(35, 'Can delete allcart', 9, 'delete_allcart'),
(36, 'Can view allcart', 9, 'view_allcart'),
(37, 'Can add alldeliver', 10, 'add_alldeliver'),
(38, 'Can change alldeliver', 10, 'change_alldeliver'),
(39, 'Can delete alldeliver', 10, 'delete_alldeliver'),
(40, 'Can view alldeliver', 10, 'view_alldeliver'),
(41, 'Can add goodgood', 11, 'add_goodgood'),
(42, 'Can change goodgood', 11, 'change_goodgood'),
(43, 'Can delete goodgood', 11, 'delete_goodgood'),
(44, 'Can view goodgood', 11, 'view_goodgood');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'sa', 'allcart'),
(10, 'sa', 'alldeliver'),
(7, 'sa', 'allgoods'),
(8, 'sa', 'alluser'),
(11, 'sa', 'goodgood'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-30 09:15:17.284961'),
(2, 'auth', '0001_initial', '2022-10-30 09:15:17.516013'),
(3, 'admin', '0001_initial', '2022-10-30 09:15:17.573027'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-30 09:15:17.580029'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-30 09:15:17.585183'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-30 09:15:17.616138'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-30 09:15:17.648044'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-30 09:15:17.674049'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-30 09:15:17.681051'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-30 09:15:17.702267'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-30 09:15:17.704056'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-30 09:15:17.710058'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-30 09:15:17.720059'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-30 09:15:17.731276'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-30 09:15:17.758281'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-30 09:15:17.765283'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-30 09:15:17.776286'),
(18, 'sessions', '0001_initial', '2022-10-30 09:15:17.800291'),
(19, 'sa', '0001_initial', '2022-10-30 09:19:22.002767'),
(20, 'sa', '0002_alluser', '2022-10-30 10:26:51.997341'),
(21, 'sa', '0003_allgoods_uid', '2022-10-31 04:34:39.346687'),
(22, 'sa', '0004_allgoods_num', '2022-10-31 05:54:09.384043'),
(23, 'sa', '0005_remove_allgoods_num', '2022-10-31 06:43:10.881187'),
(24, 'sa', '0006_allcart', '2022-10-31 06:56:21.783037'),
(25, 'sa', '0007_allcart_gid', '2022-10-31 07:42:20.257668'),
(26, 'sa', '0008_allcart_paid', '2022-10-31 08:04:35.072816'),
(27, 'sa', '0009_alldeliver', '2022-10-31 08:38:18.070655'),
(28, 'sa', '0010_alluser_kind', '2022-10-31 09:49:43.925230'),
(29, 'sa', '0011_allgoods_goodgood', '2022-11-04 05:37:09.176099'),
(30, 'sa', '0012_auto_20221104_1344', '2022-11-04 05:44:27.932600'),
(31, 'sa', '0013_auto_20221104_1349', '2022-11-04 05:49:39.301279');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('35sytrhmsrpg3zzlbl68xpmmje530lrl', 'eyJ1c2VyIjoiTGl2eTEifQ:1opiPl:7nB69gfUL3empzReQ967T9OtHO534BeITL7YcdNcxe4', '2022-11-15 03:58:13.463652'),
('8nx9g4ykebvzre1kquuq1fm24rejqvds', 'eyJ1c2VyIjoia2VubnkxIn0:1oqprS:W1YN1h-zRoYcMvBE2a8TNQx9p0e5Cje1KrwotJ1l1xs', '2022-11-18 06:07:26.116890');

-- --------------------------------------------------------

--
-- 資料表結構 `sa_allcart`
--

CREATE TABLE `sa_allcart` (
  `id` int(11) NOT NULL,
  `uid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quality` decimal(10,0) NOT NULL,
  `gid` decimal(10,0) NOT NULL,
  `paid` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sa_alldeliver`
--

CREATE TABLE `sa_alldeliver` (
  `id` int(11) NOT NULL,
  `uid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cid` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sa_allgoods`
--

CREATE TABLE `sa_allgoods` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quality` decimal(10,0) NOT NULL,
  `uid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `goodnum` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `sa_allgoods`
--

INSERT INTO `sa_allgoods` (`id`, `name`, `price`, `quality`, `uid`, `goodnum`) VALUES
(9, '1231231231', '100000', '7639', 'kenny2', '1'),
(11, 'dogmeet', '99999', '0', 'dog1', '0'),
(12, 'FengDog', '100', '102', 'Livy1', '1'),
(14, 'asasass', '123123', '23123123', 'kenny2', '1'),
(15, 'fggfdhgfjg', '123145', '12412', 'kenny2', '2');

-- --------------------------------------------------------

--
-- 資料表結構 `sa_alluser`
--

CREATE TABLE `sa_alluser` (
  `id` int(11) NOT NULL,
  `uid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pw` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `sa_alluser`
--

INSERT INTO `sa_alluser` (`id`, `uid`, `pw`, `kind`) VALUES
(4, 'kenny2', 'Kenny06125', 'a'),
(5, 'kenny3', 'Kenny06125', 'a'),
(6, 'kenny3', 'Kenny06125', 'u'),
(7, 'dog1', 'Kenny06125', 'a'),
(8, 'dog1', 'Kenny06125', 'u'),
(9, 'kenny', 'Kenny06125', 'u'),
(10, 'kenny1', 'Kenny06125', 'u'),
(11, 'Livy', 'Kenny06125', 'u'),
(12, 'kenny4', 'Kenny06125', 'u'),
(13, 'Livy1', 'Kenny06125', 'a'),
(14, 'kenny5', 'Kenny06125', 'u'),
(15, 'sa', 'Ab1234567', 'u');

-- --------------------------------------------------------

--
-- 資料表結構 `sa_goodgood`
--

CREATE TABLE `sa_goodgood` (
  `id` int(11) NOT NULL,
  `uid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gid` decimal(10,0) NOT NULL,
  `did` decimal(1,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `sa_goodgood`
--

INSERT INTO `sa_goodgood` (`id`, `uid`, `gid`, `did`) VALUES
(6, 'dog1', '9', '1'),
(7, 'dog1', '12', '1'),
(8, 'sa', '14', '1'),
(9, 'sa', '15', '1'),
(10, 'kenny1', '15', '1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `sa_allcart`
--
ALTER TABLE `sa_allcart`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sa_alldeliver`
--
ALTER TABLE `sa_alldeliver`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sa_allgoods`
--
ALTER TABLE `sa_allgoods`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sa_alluser`
--
ALTER TABLE `sa_alluser`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sa_goodgood`
--
ALTER TABLE `sa_goodgood`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sa_allcart`
--
ALTER TABLE `sa_allcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sa_alldeliver`
--
ALTER TABLE `sa_alldeliver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sa_allgoods`
--
ALTER TABLE `sa_allgoods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sa_alluser`
--
ALTER TABLE `sa_alluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sa_goodgood`
--
ALTER TABLE `sa_goodgood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
