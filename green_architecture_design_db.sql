-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 호스트: 127.0.0.1
-- 처리한 시간: 17-01-01 15:00
-- 서버 버전: 5.5.43-0ubuntu0.14.04.1
-- PHP 버전: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `green_architecture_design_db`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '1',
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `thumb_image` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  KEY `categories_created_by_foreign` (`created_by`),
  KEY `categories_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- 테이블의 덤프 데이터 `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `parent_id`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `ordering`, `image`, `thumb_image`, `level`, `deleted_at`) VALUES
(1, 'Exterior Decoration', '<p>Debitis tempore optio qui ut. Quis excepturi autem eligendi at adipisci non aspernatur.</p>', 28, 1, 1, '1', '2015-10-22 18:04:18', '2015-10-27 13:52:05', 2, 'http://green-architecture-design-darapenhchet.c9.io:80/source/9.png', '', 1, NULL),
(11, 'Interior Decoration', '', 28, 1, 1, '1', '2015-10-22 18:50:59', '2015-10-27 13:52:52', 3, 'http://green-architecture-design-darapenhchet.c9.io:80/source/4.png', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/3.png', 1, NULL),
(12, 'Furniture Design', '', 28, 1, 1, '1', '2015-10-22 18:51:19', '2015-11-11 13:09:22', 4, 'http://green-architecture-design-darapenhchet.c9.io:80/source/4.png', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/4.png', 1, NULL),
(13, 'M & E Water Supply', '', 28, 1, 1, '1', '2015-10-22 18:51:57', '2015-11-11 13:09:13', 5, 'http://green-architecture-design-darapenhchet.c9.io:80/source/5.png', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/5.png', 1, NULL),
(14, 'Construction Constructor', '', 28, 1, 1, '1', '2015-10-22 18:52:48', '2015-11-11 13:09:25', 6, 'http://green-architecture-design-darapenhchet.c9.io:80/source/6.png', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/6.png', 1, NULL),
(15, 'Landscape', '', 28, 1, 1, '1', '2015-10-22 18:55:40', '2015-11-11 13:09:28', 1, 'http://green-architecture-design-darapenhchet.c9.io:80/source/1.png', '', 1, NULL),
(16, 'Gardens', '', 15, 1, 1, '1', '2015-10-22 18:56:15', '2015-11-11 13:09:30', 1, 'http://green-architecture-design-darapenhchet.c9.io:80/source/1.png', '', 2, NULL),
(17, 'Park', '', 15, 1, 1, '1', '2015-10-22 19:00:06', '2015-11-11 13:09:31', 2, '', '', 2, NULL),
(18, 'Gardens', '', 1, 1, 1, '1', '2015-10-22 19:01:54', '2015-11-11 13:09:33', 1, '', '', 2, NULL),
(19, 'Park', '', 1, 1, 1, '1', '2015-10-22 19:02:07', '2015-11-11 13:09:34', 2, '', '', 2, NULL),
(20, 'Apartment Flat', '', 1, 1, 1, '1', '2015-10-22 19:02:23', '2015-10-22 19:06:27', 3, '', '', 2, NULL),
(21, 'Education', '', 1, 1, 1, '1', '2015-10-22 19:02:41', '2015-10-22 19:18:30', 4, '', '', 2, NULL),
(22, 'Flat', '', 1, 1, 1, '1', '2015-10-22 19:02:54', '2015-10-22 19:18:51', 5, '', '', 2, NULL),
(23, 'Hospital', '', 1, 1, 1, '1', '2015-10-22 19:03:07', '2015-10-22 19:19:09', 6, '', '', 2, NULL),
(24, 'Hotel', '', 1, 1, 1, '1', '2015-10-22 19:03:18', '2015-10-22 19:19:56', 7, '', '', 2, NULL),
(25, 'House', '', 1, 1, 1, '1', '2015-10-22 19:03:26', '2015-11-11 13:08:46', 8, '', '', 2, NULL),
(26, 'Office', '', 1, 1, 1, '1', '2015-10-22 19:03:42', '2015-11-11 13:08:44', 9, '', '', 2, NULL),
(27, 'Resturant', '', 1, 1, 1, '1', '2015-10-22 19:03:57', '2015-11-11 13:08:41', 10, '', '', 2, NULL),
(28, 'MAIN PROJECTS', '', NULL, 1, 1, '1', '2015-10-23 05:37:42', '2015-10-23 05:37:42', 1, '', '', 0, NULL),
(29, 'SUB CATEGORY ', '', 11, 1, 1, '0', '2015-10-23 10:49:10', '2015-10-27 12:45:35', 1, 'http://green-architecture-design-darapenhchet.c9.io:80/source/9.png', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/9.png', 2, NULL),
(30, 'FURNITURE', '', NULL, 1, 1, '1', '2015-10-23 10:50:35', '2015-10-23 10:50:35', 2, '', '', 0, NULL),
(31, 'CATALOG', '', NULL, 1, 1, '1', '2015-10-23 10:51:08', '2015-10-23 10:51:08', 3, '', '', 0, NULL),
(37, 'NET CATEGORY', '', 14, 1, 1, '1', '2015-11-05 16:06:04', '2015-11-05 19:28:34', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/uploads/original/563b7e6c8e993slide5.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/uploads/thumb/563b7e6c8e993slide5.jpg', 2, NULL),
(38, 'DEVELOPMENT TESTING', '', 14, 1, 1, '1', '2015-11-05 16:40:31', '2015-11-05 19:28:31', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/uploads/original/563b92275988dslide2.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/uploads/thumb/563b92275988dslide2.jpg', 2, NULL),
(39, 'DEVELOPMENT TESTING', '', NULL, 1, 1, '1', '2015-11-05 18:45:23', '2015-11-05 19:28:28', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563baad52cbbeslide5.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563baad52cbbeslide5.jpg', 0, NULL),
(40, 'NEWSWAY', '', NULL, 1, 1, '1', '2015-11-07 12:37:55', '2015-11-08 17:29:32', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563df201ca5d0slide2.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563df201ca5d0slide2.jpg', 0, NULL),
(41, 'ONE MORE STRATEGORY', '', NULL, 1, 1, '1', '2015-11-07 12:46:29', '2015-11-08 17:29:30', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563df2ca9dc18slide5.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563df2ca9dc18slide5.jpg', 0, NULL),
(42, 'CATEGORY NEWS', '', NULL, 1, 1, '1', '2015-11-07 12:50:52', '2015-11-08 17:29:27', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563df3a186e66slide3.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563df3a186e66slide3.jpg', 0, NULL),
(43, 'FUNITURE 1', '', 30, 1, 1, '1', '2015-11-07 18:38:09', '2015-11-08 17:29:24', 1, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563e4568eeeab6.png', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e4568eeeab6.png', 1, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `category_translations`
--

CREATE TABLE IF NOT EXISTS `category_translations` (
  `category_id` int(10) unsigned NOT NULL,
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `category_translations_language_id_foreign` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 테이블의 덤프 데이터 `category_translations`
--

INSERT INTO `category_translations` (`category_id`, `language_id`, `title`, `description`) VALUES
(16, 'ch', '花園', ''),
(16, 'kh', 'សួនច្បារ', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `thumb_images` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `visitor_count` bigint(20) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `show_home_page` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contents_created_by_foreign` (`created_by`),
  KEY `contents_updated_by_foreign` (`updated_by`),
  KEY `contents_category_id_foreign` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=302 ;

--
-- 테이블의 덤프 데이터 `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`, `images`, `thumb_images`, `category_id`, `visitor_count`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `show_home_page`, `deleted_at`) VALUES
(1, 'Assumenda nesciunt ut quo eligendi perspiciatis magnam velit magnam.', 'Aliquam tenetur expedita et ut voluptatibus. Velit tenetur qui voluptatem blanditiis doloremque illum ipsa. Possimus molestiae accusamus eum rerum in. Sit ut voluptas soluta maiores. Esse ipsum provident fugiat repellat exercitationem odit et. Et voluptas ipsum quisquam pariatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(2, 'Numquam quia voluptatem accusamus architecto ullam cum.', 'Rem dolor voluptatem sit tenetur quo. Sed temporibus earum aliquid. Et odio sed asperiores magnam quia. Atque ad earum iusto ratione cumque eum distinctio.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(3, 'Commodi quia ratione tenetur magnam rem quis quisquam.', 'Harum praesentium id qui alias et libero. Ex dolor eius cum vel facere asperiores iste. Facere libero dolorem autem sit iure quo necessitatibus. Velit reiciendis modi ea. Distinctio minima voluptatum in qui.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(4, 'Ipsa praesentium dolore dolorum harum repudiandae veniam eos.', 'Reiciendis assumenda sed amet unde molestiae aut numquam nihil. Optio est odio magnam voluptate rerum dolorem blanditiis. Sunt maxime est iusto consequatur delectus sit. Non et est asperiores tenetur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(5, 'Voluptatem aut ea autem ad ducimus.', 'Est qui dignissimos temporibus in hic sed vitae. Et est dolores est quis temporibus quos quia. Corporis aut fugit et dolores et. In consequuntur nulla et sunt et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(6, 'Tempore quibusdam labore explicabo alias sunt.', 'Natus quod aspernatur magnam quo iure amet. Recusandae nisi nihil et omnis. Dolore ut ipsam nam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(7, 'Delectus non repellat consequatur eligendi eius quia consequuntur.', 'Rem sed dolore ab et maiores. Adipisci voluptatem est fugit quaerat. Nam impedit quis nemo quae in. Cumque delectus excepturi ipsa adipisci et molestiae.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(8, 'Ullam exercitationem dicta quibusdam consequatur voluptas dolores accusamus.', 'Quaerat doloribus sapiente aut corrupti voluptates animi. Animi esse aperiam temporibus quibusdam autem. In est quas rerum eos quasi quod et. Numquam omnis et sed fuga. Nisi aut quisquam ut tenetur vel error.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(9, 'Iste ex quia quis vel eum iure.', 'Cumque autem consectetur harum id. Sed perspiciatis iste voluptatum tempore. Nam nulla hic et magnam labore veritatis veritatis necessitatibus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(10, 'Tenetur et voluptas laborum ullam vero alias et.', 'Accusamus consequuntur aut quo. Sit temporibus reiciendis id et quo fugiat in quo. Illo minus eaque qui voluptas. Eum dolores voluptatum error est ullam et veritatis. Magni quia quis nostrum sunt totam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(11, 'Blanditiis omnis maxime at perspiciatis amet.', 'Voluptas hic nihil libero assumenda consequatur fuga sed. Nemo omnis voluptas vel quia qui aut. Aspernatur id est laudantium est ullam a natus. Dolor numquam non amet fuga corrupti eligendi. Rerum alias aliquid ad non tempora atque ipsum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(12, 'Nihil nesciunt est aliquid perspiciatis a.', 'Reiciendis ea sint modi quo aut laborum. Iure deserunt pariatur accusantium et itaque excepturi qui. Odit aperiam consequatur illum explicabo praesentium.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(13, 'Dolorem et quibusdam et et.', 'A tempora odit odit eos dolorum. Ad tenetur ipsum itaque eaque. In sit qui nemo dolorem quia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(14, 'Et deserunt dolorum quisquam quia velit.', 'Deleniti ex perferendis sit voluptas consequatur laboriosam odio corrupti. Dolor dolores similique qui quo. Tenetur numquam autem ea possimus aut molestias enim. Sed qui eveniet et quaerat impedit atque adipisci. Adipisci quaerat voluptatem labore id magnam doloribus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(15, 'Assumenda et tenetur ipsa et aperiam.', 'Ipsa rerum deleniti doloremque ut magnam eius. Non occaecati est voluptas tempora accusantium vero. Ipsum et eos quis rerum minus. Rerum tempore itaque sunt voluptas odit. Dolor provident consequatur itaque nulla omnis quia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(16, 'Corrupti sapiente numquam a nihil omnis.', 'Est exercitationem cumque et modi nisi nulla dolorem. Doloremque veritatis provident quia aspernatur incidunt quia aut. Repellendus doloribus fugiat nisi architecto ut nostrum. Consequuntur sunt officiis nostrum quae.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(17, 'Et vel odit commodi excepturi voluptas vel consequuntur.', 'Pariatur cumque assumenda qui aspernatur dolor culpa sequi. Assumenda ipsum et dolorem odit. Modi velit voluptatem qui quaerat ea dolor sit. In esse voluptatem enim cupiditate corporis sint.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(18, 'Tempore placeat iste aliquid consequatur omnis in.', 'Sunt impedit omnis modi ut dolorem reiciendis hic nisi. Amet ipsum cumque praesentium molestias ut nam. Deserunt quas ut aut et qui eaque. Saepe autem architecto officiis ipsam modi exercitationem. Itaque dolores reprehenderit non ab aut saepe. Ducimus quae aspernatur molestiae iure ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(19, 'Optio assumenda numquam iusto tenetur fugit aut quam fugiat.', 'Est sint ad labore illo consequatur perspiciatis. Minus laborum nisi perferendis ratione rerum. Saepe dignissimos facilis eaque et enim est dignissimos. Inventore cum eligendi vel omnis ea assumenda. Qui est nihil est nemo explicabo officia in. Itaque doloremque cum quasi minus corrupti.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(20, 'Architecto voluptatem at dolorem repudiandae.', 'Quo repellendus tempora doloribus et illum ipsum. Illo nesciunt a rerum reprehenderit tenetur sapiente. Dolorem quia sed dolore ipsam error.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-10-22 18:04:18', 0, NULL),
(21, 'Accusamus est velit accusamus id facere.', 'Voluptatem ut sint in vel non. Enim rerum quos eaque. Recusandae quibusdam aut dicta aut soluta velit et officia. Laboriosam omnis totam qui consequuntur. Qui quaerat commodi eius laborum in veritatis sapiente ipsum. Aliquid ipsam a eum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:07:58', 0, '2015-11-11 13:07:58'),
(22, 'Quis quasi libero et cupiditate.', 'Dolor voluptatem aut animi. Nisi adipisci amet reprehenderit est ut dolor quas beatae. Fuga eum et dolores consequatur. Ipsum nihil sunt ipsum accusamus placeat non. Cumque ut nisi magni alias iure vel. Illum reprehenderit quia nesciunt ut ad fuga vel.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:08:00', 0, '2015-11-11 13:08:00'),
(23, 'Voluptate ullam error nostrum itaque.', 'Rerum doloribus quam sed illo vero optio. Tenetur dolor deserunt reprehenderit. Sunt velit voluptatibus aut cum est. Esse doloribus exercitationem hic modi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:07:55', 0, '2015-11-11 13:07:55'),
(24, 'Dolorum enim explicabo suscipit est.', 'Debitis eaque distinctio tempora consequuntur et eos. Eius doloremque natus maiores eos quo. In et officia sapiente enim ut repellat ea accusantium. Modi quia dolore esse temporibus. Dolores repellat sit qui numquam sit voluptas temporibus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:08:02', 0, '2015-11-11 13:08:02'),
(25, 'Ut ipsam qui inventore distinctio.', 'Occaecati autem ut sed eaque voluptatibus iusto non. Error laboriosam omnis quo. Consectetur dolores alias laborum autem maiores. Voluptatem omnis suscipit quasi quisquam eveniet. Nemo qui laudantium est voluptatem enim modi autem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:07:52', 0, '2015-11-11 13:07:52'),
(26, 'Nulla quos aut et vel nam rerum accusantium tempore.', 'Nulla nulla aut harum. Voluptas officia nulla qui recusandae et asperiores minus. Id ab nulla dignissimos neque eveniet. Delectus sunt qui fuga et veritatis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:08:03', 0, '2015-11-11 13:08:03'),
(27, 'Impedit quisquam mollitia aut qui sunt possimus temporibus.', 'Nesciunt et aut ut non aut vel. Ratione omnis consequatur culpa eaque voluptas dolorem. Eaque nobis cumque praesentium ut modi dignissimos at. Autem eaque ipsam saepe quam voluptatem. Dignissimos voluptatem rerum dolores ex incidunt facere necessitatibus labore.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:07:50', 0, '2015-11-11 13:07:50'),
(28, 'Porro non deserunt dolore saepe ad sunt.', 'Ipsum animi repellat veritatis numquam ipsam. Sed asperiores quibusdam repudiandae totam quo laboriosam deserunt. Autem quos corrupti nihil. Recusandae repellendus ut omnis a.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:08:05', 0, '2015-11-11 13:08:05'),
(29, 'Error perspiciatis quidem neque et eos.', 'Odio consequuntur quo voluptatem recusandae nesciunt iure accusamus rerum. Nesciunt consequatur ex velit et deleniti possimus. Explicabo error voluptas autem animi impedit commodi doloremque repellat. Eligendi omnis sunt debitis quis eligendi. In aperiam recusandae quam deleniti voluptatum tenetur non.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:18', '2015-11-11 13:07:48', 0, '2015-11-11 13:07:48'),
(30, 'Quidem voluptas similique repudiandae blanditiis.', 'Laborum nesciunt nulla accusantium qui voluptates aut animi. Sapiente odio eos minus sequi sit similique. Animi et et provident. Eos blanditiis quam vel.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(31, 'Et qui nulla omnis quia neque.', 'Culpa laudantium ut minus aut debitis. Deserunt aliquam nobis et voluptatem. Aut quia doloribus reprehenderit dolorem. Labore quo dolor sapiente quia minima. Nulla qui fugiat expedita aut inventore culpa culpa dolor.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(32, 'Voluptatem nihil nobis sunt accusantium consectetur possimus.', 'Voluptas dolor provident autem ut ducimus aliquid vitae. Fugit error sit illum iure vero. Deleniti commodi ipsam adipisci saepe modi quam. Perspiciatis quibusdam qui error dolor.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(33, 'Aut suscipit magni qui perferendis.', 'Aut facilis animi non voluptas. Cum odit expedita quos pariatur maxime nostrum molestias. Incidunt voluptatem natus ullam et reprehenderit. Iusto vel ipsum earum aliquid omnis natus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(34, 'Nihil dolor deleniti voluptas molestias sed ipsa veniam.', 'Et dolor accusantium explicabo et. Consequatur qui unde ab ex quod nesciunt in qui. Deleniti aspernatur quo quos odio aliquam. Quos fugiat adipisci rerum. Nisi harum eaque eligendi sint animi fugiat est. Debitis ea dolor velit distinctio et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(35, 'Est aut fugit placeat sapiente expedita laudantium earum.', 'Et ratione nulla voluptatibus quo animi dolor doloribus. Atque est maiores totam. Harum reiciendis repellat ea vel aut aspernatur nisi vero. Tempora laborum tempore qui natus repellendus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(36, 'Aspernatur fuga ullam quis.', 'Tempora consequuntur vel aliquid blanditiis. Doloremque voluptas magnam similique quis. Aut ipsam aut quod doloribus ea accusamus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(37, 'Eum dolorem sit et ut iste excepturi.', 'Est ea incidunt expedita ipsum magni sunt harum quia. Voluptas veniam ut porro sint. Qui quasi et tempora. Sit consequatur odio fuga ut. Qui autem earum neque qui cumque.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(38, 'Optio fuga minus facilis quae labore qui saepe.', 'Consequatur voluptatem ipsa est ea et doloremque et est. Et quia qui suscipit esse saepe excepturi cumque. Delectus quibusdam rerum laboriosam est. Aut et voluptas voluptas laudantium quia. Doloribus omnis dolorem nam. Consequuntur dolores tenetur dolore.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(39, 'Non laborum fugit inventore ex.', 'Fuga vel est rerum vero et optio expedita cum. Vel maiores consequatur molestias quibusdam. Eum sequi autem omnis fuga. Enim voluptas cupiditate eum asperiores aut aut. Modi culpa soluta temporibus voluptas commodi rerum consectetur veritatis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(40, 'Dolorem delectus ea et error sequi.', 'Deleniti sed est libero. Iure explicabo neque optio voluptas doloribus modi. Officiis fugit quia ipsa voluptates alias impedit. Ea autem ea laudantium velit aut. Debitis deserunt quod praesentium earum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(41, 'Consequuntur nisi exercitationem ipsum unde aut voluptas consequatur iusto.', 'Ut sit omnis delectus et repellendus sunt magnam. Officiis quibusdam animi odio cupiditate. Explicabo vero cumque fugit. Aut earum rerum velit qui dolorem id repudiandae. Ut commodi dicta quia qui omnis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(42, 'Quia quo mollitia iure dolores quo amet.', 'Rerum ut laudantium impedit optio dolores. Eos est est doloremque voluptatem ea totam vero. Quaerat eos nobis non dolor culpa. Ipsa quas nesciunt et recusandae in. Qui qui inventore quia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(43, 'Omnis sit sed laborum vel vel.', 'Quibusdam sunt ut laudantium alias. Cupiditate modi esse est. Quos eum provident expedita non. Incidunt aspernatur ut velit voluptas ducimus nemo dolores.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(44, 'Molestiae veritatis ab ut enim voluptates quis eos quia.', 'Ea quia exercitationem suscipit qui. Quo accusantium beatae eius aliquid. Possimus recusandae et ipsum veritatis architecto sunt. Totam dolorem non saepe sunt. Sed non odit quasi quia iusto.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(45, 'Ratione nesciunt ratione dicta sed et nihil quia id.', 'Ullam ut odit perspiciatis quam nihil facilis totam iure. Tempora veniam iusto non illum. Modi at vitae quos aut unde doloribus. Dolores dolorum ipsa sed sed laboriosam incidunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(46, 'Sed vero aliquam rerum.', 'Non non vel quia corporis placeat repellendus ut commodi. Et est repudiandae nulla repellat fuga. Hic magnam alias animi modi. Laudantium ut sequi explicabo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(47, 'Facere molestiae ut aliquid est voluptatem accusamus consectetur.', 'Nihil exercitationem et similique qui ut. Consequatur atque et dolores quia modi ullam qui. Repudiandae corporis dolores earum consequuntur sit ab. Et sequi earum voluptas porro impedit quis eos. Omnis qui facilis veniam blanditiis reprehenderit esse. Tempore facilis quia hic officiis animi quae ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(48, 'Ea excepturi et et.', 'Maxime vitae suscipit esse molestias magnam exercitationem. Dolorem maiores autem doloribus minima accusantium dignissimos ut maxime. Doloremque aperiam sed quia tenetur natus. Aut qui itaque eveniet in et. Laborum iste aut veniam eum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(49, 'Labore unde soluta illum pariatur.', 'Mollitia aut fuga cum error mollitia a. Exercitationem omnis illo et sequi ut libero recusandae. Amet autem ipsum aliquam corporis amet. Nihil tempore nisi exercitationem quia illo dolorum laudantium. Ipsam quam et saepe est vero earum qui.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(50, 'Consectetur deleniti nisi iusto aliquam quibusdam.', 'Ut vitae odio aspernatur dicta ut. Commodi numquam sed laborum eius cupiditate est sunt. Laboriosam molestias ipsam voluptatem pariatur impedit laborum nemo aut. Blanditiis itaque dolore qui aliquid ipsa distinctio id. Non consequatur dolores voluptatem rem repellat placeat.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(51, 'Amet repudiandae eius repudiandae aut reiciendis laborum.', 'Voluptatem quae ex animi fugit dolorem dolores. Aperiam et ipsa dolorem aut nihil. Possimus quas provident amet omnis dolores reprehenderit perspiciatis. Qui praesentium ut vitae reprehenderit consectetur rem vel. Voluptatem quo optio ut esse id facere officia laboriosam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(52, 'Molestiae expedita inventore ut temporibus consequatur possimus.', 'Earum quidem quos voluptatem error laudantium. Ullam ipsam tenetur enim itaque cumque. Ipsa rem nihil placeat nemo. Tenetur eos ut sed asperiores itaque voluptate.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(53, 'Similique quia distinctio incidunt dolor sunt rem nemo.', 'Et magnam eius ut error voluptas expedita eius. Sed rem optio quam enim occaecati perspiciatis qui fuga. Eligendi officiis et est neque culpa. Eum enim dolorem eaque eaque et. Quia quo in sint omnis quia omnis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(54, 'Aliquid quia a omnis.', 'Qui molestiae pariatur ullam eius. Nihil voluptas inventore iure est. Saepe repellendus sequi qui quasi dolores voluptate in. Repudiandae aut ipsam voluptas perspiciatis deserunt. Aut est enim assumenda quo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(55, 'Aut id saepe exercitationem est.', 'Nisi iusto ducimus beatae rem. Blanditiis est et voluptatem harum. Quas id officiis illo maxime et delectus illo quod.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(56, 'Nulla dolore dolorem ex minus ut repudiandae omnis quis.', 'Mollitia voluptate deserunt nihil et illo omnis qui. Perferendis ducimus sapiente amet omnis aut et in quisquam. Modi voluptas ipsum molestiae voluptas soluta debitis. Dolor molestiae quis consequatur quos laborum eos. Harum qui facilis id.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(57, 'Id quibusdam sit reprehenderit nesciunt.', 'Est officiis numquam recusandae debitis minima et deserunt. Consequatur molestiae dolore consectetur rem. Ipsam quam harum veniam et et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(58, 'Quis consequatur voluptatibus possimus molestiae.', 'Eligendi id pariatur et quae vel numquam blanditiis. Id laborum impedit est. Vel praesentium et laudantium qui illo occaecati qui rem. Ipsam inventore rerum repellat similique.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(59, 'Sunt et velit officiis aut.', 'Soluta est ipsam eum dolores voluptas necessitatibus. Quasi cum ut enim sunt quidem tenetur. Reiciendis dolorem ratione accusantium laudantium sit et. Officia sapiente corrupti enim labore et. Qui quae et quia maiores aut iusto deserunt recusandae.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(60, 'Reprehenderit tempora vitae et consequatur voluptas sed nesciunt.', 'Laudantium at earum adipisci quas eum et. Qui et illo et. Rerum vitae id laboriosam iure sed. Et ea qui natus veritatis et dolorum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(61, 'Aut atque eos et ratione facere reprehenderit sed.', 'Molestiae corporis id nihil. Molestiae placeat omnis quo ut molestiae expedita aspernatur. Possimus suscipit esse provident qui voluptates incidunt. Natus dolores adipisci et. Quo aliquid nesciunt impedit assumenda aut maxime.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(62, 'Sint esse velit accusamus assumenda consequuntur et.', 'Ut et totam soluta ab dolore et et. Eum alias minima possimus cupiditate inventore omnis. Est delectus quas minus aspernatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(63, 'Labore adipisci asperiores error alias ut.', 'Natus quaerat ipsum blanditiis et porro hic est. Non nesciunt veniam sed. Magni et deleniti beatae saepe adipisci. Voluptatem amet nihil error asperiores dolore quaerat sit sequi. Quaerat dicta velit placeat iusto.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(64, 'Voluptas sit et amet et quia quos.', 'Est est adipisci fugit minus nesciunt. Soluta id optio dolor. Ad rem culpa quia eum minus porro. Excepturi magni et animi libero expedita sequi porro non.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(65, 'Et aut sit nemo.', 'Modi mollitia et eaque vitae at et. Deleniti rerum dolorum voluptatem quidem. Et explicabo harum explicabo rerum necessitatibus. Perspiciatis veritatis non numquam nam consequuntur inventore illum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(66, 'In beatae facilis sint voluptatum perferendis non explicabo.', 'Illum ad amet omnis facilis eius. Ea excepturi totam numquam aut impedit minus quo. Natus praesentium aut quis commodi dicta vero. Qui nam deleniti aut quis expedita dolores. Dolores ratione dolor corporis necessitatibus enim nihil.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(67, 'Ipsam voluptatum labore vitae expedita iste sequi ut nemo.', 'Magnam aperiam quis quia recusandae. Laboriosam quos sed asperiores eligendi dolorem iusto. Et qui est deserunt cupiditate natus. Iste et vero quas id et non delectus. Aut facere sed nisi dolores nobis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(68, 'Amet delectus cumque et temporibus non.', 'Voluptate qui cum nisi error voluptatibus nesciunt. Tenetur ratione expedita ad vitae odio vero est. Officia et atque inventore molestiae asperiores. Ut et cupiditate et dolor est magnam dolorem. Voluptatem nostrum aut itaque voluptates illum est autem. Assumenda neque laborum sit quos fuga aliquid.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(69, 'Rem distinctio est iusto iusto laboriosam.', 'Facilis sed temporibus neque maiores quasi aut qui. Eaque distinctio fugit omnis doloribus ipsa. Architecto nesciunt magni voluptas nam aut sequi. Et voluptatem unde ut maiores nostrum expedita ipsa cupiditate. Similique deleniti voluptatem nam quia tempore facere molestiae.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(70, 'Quam sint expedita ipsa dolor.', 'Itaque et officia vel est eveniet quam. Commodi illo quae enim consequuntur dolor consequuntur sed. Quod aperiam nobis ex.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(71, 'Iusto aperiam atque sed ab.', 'Ducimus praesentium consectetur unde occaecati. Nisi nisi et voluptates nihil quibusdam nulla reiciendis. Molestiae sint deleniti quia. Provident perspiciatis necessitatibus error iure possimus. Exercitationem quia quisquam ex et et laudantium quas.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(72, 'Enim cumque aliquam molestiae consequatur.', 'Aliquid quisquam aut voluptatem laudantium quia. Laborum qui qui magnam consequatur tenetur iure. Vero excepturi eius cupiditate ipsum voluptatibus porro. Dolor delectus quia inventore fuga corrupti sapiente error.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(73, 'Eos nulla neque doloribus perferendis ipsam assumenda.', 'Expedita non in velit eum reprehenderit. Libero harum rerum impedit soluta et. Enim voluptatibus quae provident est. Non soluta dolorum dicta et ipsa.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(74, 'Fuga ab eligendi eos nam qui.', 'Autem exercitationem autem quam quia. Ratione ea voluptas ea hic accusantium numquam. Accusantium eos sit inventore praesentium asperiores. Et qui ut possimus ducimus voluptatem necessitatibus. Nihil et similique doloremque ab omnis reprehenderit id. Voluptate omnis consequatur corporis id.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(75, 'Modi eaque quaerat voluptatem nulla temporibus maiores.', 'Harum eius distinctio deserunt quis ea consectetur dicta. Iusto nam aut expedita ut eum eum. Ea explicabo et et quia recusandae. Vero laborum iure nobis aut autem excepturi accusantium. Alias fuga doloribus facilis similique et asperiores consequatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(76, 'Eaque possimus repellendus sed eveniet.', 'Molestiae sit mollitia beatae molestiae dolorum labore. Quis iste voluptatibus aperiam quibusdam repellendus. Blanditiis dignissimos provident numquam ex reiciendis. In minus animi ea. Non saepe minus dicta dolor.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(77, 'Autem maiores nihil accusantium iusto aut sunt aspernatur.', 'Nihil quod optio id eaque. Occaecati quibusdam quis vitae quam. Quia ipsam qui illum modi et consequatur qui maxime. Consequatur voluptatem aliquid voluptatem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(78, 'Veritatis molestias error aut est.', 'Quia facere earum aliquam et. Accusantium sequi esse et placeat ratione placeat ut ea. Occaecati aliquam minus iure optio.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(79, 'Voluptatibus aliquam autem sit fugiat.', 'Ipsa maxime dicta doloremque impedit laboriosam quo consequatur. Deserunt in officiis provident eum. Labore iusto facilis nam modi. Fugiat sed saepe sed delectus. Inventore odio vero et nihil. Voluptas autem magni dolore esse cupiditate.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(80, 'Est doloribus alias dolor reprehenderit voluptatem.', 'Veritatis velit perferendis et deleniti. Occaecati aut aperiam voluptatem dolore qui consequatur. Quam maxime ad ea quos similique quo cupiditate. Dolores veritatis sed enim. Occaecati aliquam est ipsa sed laborum quia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(81, 'Maxime praesentium numquam itaque a labore ut voluptatem.', 'Voluptatem esse ut corporis alias qui eos corporis. Velit aperiam ut rerum. Aperiam occaecati magnam odit molestias iure est. Est distinctio laudantium doloribus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(82, 'Natus tempora labore odit libero.', 'Sunt corrupti debitis mollitia delectus velit. Natus inventore aut soluta odio. Consequatur et numquam qui quae rerum in dolores omnis. Qui quaerat enim consectetur sequi recusandae nam modi sunt. Eligendi officia mollitia ut omnis quasi provident illo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(83, 'Facere ut enim reprehenderit hic.', 'Ea laboriosam dignissimos facere sint reiciendis nesciunt. Iure vel consequatur consequatur odio ducimus et. Eum distinctio facere labore aut dolor ipsum. Id accusamus non nihil nihil. Tenetur corrupti odit ut magnam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(84, 'Aut nemo doloremque asperiores aut incidunt dicta eum.', 'Repellendus molestias dignissimos qui dolores. Inventore doloremque culpa asperiores. Error molestiae amet beatae exercitationem eos. Expedita beatae aut dolorem totam perspiciatis voluptatem sed.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(85, 'Aut laborum sed ut error nobis.', 'Qui accusantium sit ea laboriosam inventore. Consequuntur cum ipsam voluptate dolore pariatur exercitationem. Nesciunt laboriosam deserunt nam possimus eaque vero omnis velit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(86, 'Harum a dolor et vel est illum.', 'Nemo quia sit rerum quasi veniam ducimus. Incidunt provident aut consequuntur in nihil odio. Quae earum enim a qui. Fugiat delectus et quia illum. Fuga quas accusantium officiis nesciunt ullam et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(87, 'Minus nam consectetur eos.', 'Debitis numquam aut est ex est. Rem rerum quis explicabo voluptas facilis nihil. Atque possimus distinctio omnis dolor modi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(88, 'Accusantium ab consequatur laudantium autem quaerat.', 'Reiciendis eum in reprehenderit est et deleniti. Dolor eos sequi aut. Itaque rerum quis quos ad iure. Est cum doloribus repellendus sint aliquid iusto fugiat aspernatur. Nihil et magni debitis et. Deserunt voluptatem vitae maxime dolorem vero rerum sit aliquid.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(89, 'Voluptatem autem ratione ratione voluptatem doloremque illo atque.', 'Expedita blanditiis perspiciatis temporibus consectetur alias laudantium. Est repellendus eum ut et qui et. Debitis ea itaque ab eligendi quidem reiciendis. Consequuntur quis nostrum suscipit nihil distinctio.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(90, 'Distinctio distinctio dicta quod quidem.', 'Id qui dolorum rem mollitia. Quod dolores reprehenderit minima ratione. Quisquam animi est temporibus unde eum ea. Vitae et doloremque nihil doloribus. Quia id sunt sit nostrum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(91, 'Ut tenetur atque quos qui.', 'At quia cum totam. Laborum non voluptate nobis omnis porro. Voluptas unde et ullam corrupti debitis iure. Pariatur sapiente rerum reprehenderit doloremque unde alias.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(92, 'Repudiandae illo rerum nulla dolor.', 'Ipsum voluptatem accusamus eos enim similique natus. Necessitatibus ex voluptatum accusamus et iste eos. Minima harum debitis qui ipsam. Et perferendis natus qui magni.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(93, 'Sit aut quia nisi aut rem.', 'Accusamus aut illum nihil. Et quisquam qui architecto fugiat ut non rerum ut. Voluptatibus laudantium minima aperiam inventore facere necessitatibus. Saepe excepturi dolor ea magni dolore. Ea quod molestias neque dignissimos vel sed.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(94, 'Numquam qui in nihil consequuntur.', 'Illo ipsa aut magni odio id impedit architecto. Nam nam nisi rerum dolorum. Ab asperiores quo et quidem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(95, 'Eius repellendus incidunt esse dolorem consequuntur dignissimos exercitationem.', 'Odio rerum praesentium placeat est autem suscipit rerum sit. Voluptas in quis adipisci vitae voluptatum ullam alias. Voluptas numquam et non. Omnis commodi mollitia consequatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(96, 'Consequatur voluptatem iste vitae.', 'Hic omnis qui omnis porro. Impedit ut enim sint perspiciatis nisi nesciunt. Aliquid sunt ut consectetur omnis accusantium natus. Nobis a impedit omnis iste suscipit sit iure molestiae. Officiis sequi consequatur fuga illo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(97, 'Et et officiis qui molestiae repudiandae.', 'Eveniet laboriosam officia dolorum expedita sit minus non laudantium. Vitae expedita sit rerum quibusdam sit quia et. Inventore adipisci officia dolores molestias dolores culpa. Voluptatibus dolore error enim expedita ducimus. Eum illo magni placeat qui voluptate.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(98, 'Sapiente libero nam consequatur et voluptatem iusto.', 'Nesciunt quia officia animi distinctio consectetur assumenda aspernatur. Harum dignissimos ut ad id enim. Nemo possimus dolor cum quos ratione.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(99, 'Nisi odit qui veritatis repellendus dolores debitis.', 'Nihil in sint minima architecto veritatis. Corporis rerum voluptatibus deserunt qui eius ex est ullam. Dolorem ab cupiditate illum. Qui aut id soluta. At delectus voluptatem fugit non ipsa nihil.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(100, 'Id dolor architecto quod tempora omnis ducimus officia.', 'Atque nemo suscipit facere qui. Corporis quod debitis amet porro occaecati tempora. Sint voluptatibus iste illo corrupti.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(101, 'Enim optio hic et consequatur quas alias.', 'Molestias aliquam quis velit aut dicta ut natus. Corrupti sit consequatur eaque aperiam id magni aut in. Ipsam sed sunt nulla id dolor. Quisquam aut molestias nam reiciendis et. Ea quibusdam voluptatem deserunt doloribus est et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(102, 'Repudiandae asperiores quo numquam ad.', 'Quas sit officiis impedit quidem sit in velit. Repellat pariatur explicabo neque nostrum et non. Sit itaque atque debitis omnis. Aperiam fugit omnis enim. Eius dolore deleniti at ipsa.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(103, 'Corporis ut quia similique dolore cum quas id.', 'Soluta accusantium iure molestiae neque. Voluptates eum magni facere illo autem. Consectetur maxime commodi soluta et ut et et. Minus velit voluptates rerum aut fugiat et. Corrupti provident odio voluptate temporibus aut. Est neque recusandae harum delectus aliquid.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(104, 'Corporis ad ut aut tempore.', 'Animi tempora quia facere rerum veritatis. Magnam neque facere est architecto saepe et. Reiciendis dolorem velit enim nihil quod quo. Aut accusantium cum non laudantium quo reiciendis. Placeat ab possimus accusantium eum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(105, 'Hic tenetur quos sunt eos voluptates.', 'Eos voluptas aut qui omnis dolor. Eos omnis consectetur cupiditate totam. Voluptatibus aspernatur qui corporis eligendi ipsa ad. Ut necessitatibus repellat voluptate nam dolores ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-11-11 13:08:19', 0, '2015-11-11 13:08:19'),
(106, 'Sunt quia ea voluptas rerum.', 'Nihil a dicta voluptatem repudiandae amet. Quae modi voluptatem odio rerum eos quo. Magni ut in dolorem autem a dolor dolor. Qui accusamus quas sed quis. Officiis esse architecto quia eos enim.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-11-11 13:08:15', 0, '2015-11-11 13:08:15'),
(107, 'Velit et omnis eveniet recusandae veniam.', 'Est sint nobis officia aperiam nostrum. Voluptates consectetur est tenetur repellat autem. At nihil minus sunt facilis. Aspernatur maiores culpa corporis est tempore voluptas tenetur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-11-11 13:08:13', 0, '2015-11-11 13:08:13'),
(108, 'Magni ratione porro sequi error.', 'Ipsam earum facilis qui totam. Qui eaque magni recusandae. Illum impedit ut et inventore sunt. Velit non qui consequuntur odit enim. Itaque tempore dolorum nisi voluptates dolor.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(109, 'Laborum veniam maiores et quisquam neque.', 'Numquam esse quo soluta et. Dolor voluptatem odio nam et laborum provident magnam. Quos est sit tenetur enim repellat.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(110, 'Nam quis at aspernatur cupiditate assumenda tenetur at.', 'Sed consequatur debitis harum quos optio possimus. Totam neque eum esse dolore dolorem ut. Sed omnis aliquam ut porro voluptatem inventore. Autem dignissimos est omnis autem molestiae ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(111, 'Voluptatem fuga numquam deleniti.', 'Est est itaque ut dolor enim necessitatibus. Repellat maxime eveniet vero architecto corrupti facere est. Qui rerum provident minus placeat consectetur. Eligendi temporibus deserunt et beatae. Et ut maiores accusamus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(112, 'Earum consequatur tenetur perspiciatis qui.', 'Dolorem natus fugiat accusantium veritatis voluptatem consequatur quam. Illo animi voluptatem et. Voluptatem ipsum et cum voluptas. Suscipit explicabo harum tempora molestiae ea corporis. Qui maxime accusamus vel. Exercitationem ut et modi perspiciatis laudantium consectetur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(113, 'Voluptates at qui deserunt laborum quibusdam a.', 'Inventore sapiente aut nulla eveniet vitae sit aperiam. Quaerat incidunt temporibus eaque velit pariatur ipsum quia. Cum molestias eum sint quos fugiat aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(114, 'Qui eos esse voluptatem fugit quia pariatur.', 'Voluptas possimus ea a quisquam esse libero. Corporis magni qui tenetur doloremque earum. Non voluptas placeat numquam sequi enim vitae voluptate. Ut molestias a aut explicabo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(115, 'Officia debitis quasi est temporibus.', 'Nobis maiores natus modi labore. Voluptatum repellendus ea sapiente beatae suscipit dolorem quibusdam aut. Expedita debitis doloremque dolorem dolorem. Officiis architecto delectus sed ullam eius ducimus et. Voluptas vitae minus cupiditate ullam sed rem quia accusamus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(116, 'Quia soluta occaecati distinctio architecto pariatur enim eaque.', 'Ut porro itaque qui dolor minus repellendus eius quis. Mollitia eaque reprehenderit nisi dolores illum. Quo animi expedita ut quia fugiat nostrum. Est quo quibusdam ratione hic.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(117, 'Nihil quia molestiae voluptatum culpa.', 'Dolore eum esse sit. Labore enim amet omnis et exercitationem expedita. Iure aut quidem et pariatur minus facere doloribus. Deleniti repudiandae omnis ipsum autem. Optio provident ut tenetur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(118, 'Ipsum distinctio voluptates ducimus ratione corrupti sapiente sit tempore.', 'Voluptatem vel vel voluptas dolores. Dolores iusto quia et ipsum nisi. Nihil nobis qui porro et. Praesentium quidem saepe quia dolorum delectus enim omnis deserunt. Ut minima est quam atque iusto porro. Officia doloribus et et qui ab quisquam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(119, 'Ipsum quos veniam sequi eaque minima quibusdam et.', 'Recusandae error quis laborum iste voluptatem et voluptate. Laudantium explicabo vitae labore itaque incidunt id adipisci. Labore minima optio eveniet consequatur corrupti maiores. Non in earum veritatis non.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(120, 'Iste ducimus quia tempore et reiciendis quae et.', 'Aut quisquam officia autem delectus. Laborum et quo quo necessitatibus. Magni consequatur quis ea modi doloremque. Deleniti autem tempore nihil architecto. Perferendis quas sunt veniam consequatur similique. Ipsum id ab repellendus debitis minus quod.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(121, 'Voluptas consequatur vero ut qui sapiente consectetur.', 'Sit harum dolores vero. Reprehenderit voluptatem non autem atque doloremque sunt. Tenetur sunt unde in itaque facere eos. Numquam est est adipisci et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(122, 'Consectetur illo voluptas laudantium corrupti similique repudiandae commodi.', 'Illo est adipisci aut ratione rerum non aliquid. Cupiditate laborum occaecati repellendus corporis sint nostrum. Qui facilis libero perferendis omnis nihil.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(123, 'Rerum laudantium aperiam culpa ea.', 'Ut commodi autem perferendis inventore nobis porro ex officia. Esse omnis ipsum tenetur ut occaecati sunt atque. Eveniet autem consequatur consequatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(124, 'Cumque omnis placeat ut aut consequatur cumque distinctio eos.', 'Aut doloribus non doloribus nemo id minus doloribus. Libero at quidem a aperiam minima minima atque. Rerum tenetur sit nobis quaerat. Molestiae debitis et provident hic odio blanditiis voluptatibus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(125, 'Nihil beatae dolor magnam.', 'Impedit nam repudiandae deserunt quo provident quia neque. Nihil officiis rem in corporis possimus et. Fugit earum est numquam odit aperiam nesciunt. Ut ut dolor et et voluptatem veritatis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(126, 'Eius nemo adipisci fuga minima ullam laboriosam.', 'Omnis rerum et sit ad possimus eius. Ipsam autem aliquid ut tenetur. Amet possimus cupiditate magnam eligendi enim qui voluptates. Veritatis iure maxime quos rem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(127, 'Perferendis sit et omnis asperiores.', 'Nemo non laborum suscipit et maxime libero est sed. Eum sed accusantium ea quaerat nihil adipisci laudantium tempora. Quia cumque occaecati beatae amet cupiditate earum eius. Corporis unde quia ut eligendi quibusdam. Et aperiam quia dolores recusandae voluptas.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(128, 'Vero eveniet officiis commodi aut praesentium perspiciatis omnis voluptates.', 'Cumque nihil rerum molestiae placeat est aut commodi. Nihil itaque veniam quas omnis. Illum voluptates qui molestias et quis velit ut. Et assumenda et voluptates doloribus praesentium sit sed. Voluptatibus et incidunt dolore aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(129, 'Sed et vel quasi odio est.', 'Ad qui doloremque quia. Provident eos sit illo eum suscipit est. Vel repellendus quos vel reprehenderit esse. Cumque sit ea odit est eum perferendis. At omnis autem aspernatur atque. Eaque numquam deserunt quaerat qui mollitia autem non.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(130, 'Est magnam veniam hic molestiae culpa repudiandae praesentium tempore.', 'Illo voluptatem aut et harum ullam voluptatem. Voluptatum sed magnam corrupti animi. Officia commodi ex est magni rem et accusamus. Expedita rem sunt repudiandae consequatur fugiat labore.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(131, 'Quos ipsum suscipit sed et.', 'Est deserunt ut labore sit perferendis ut et. Labore alias velit ut qui. Rerum dolorem est optio sed. Saepe repellendus inventore provident quaerat sed nobis quam. Ad illum non sint sed deserunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(132, 'Et eaque quidem saepe neque qui.', 'Sunt id illum ratione vero ipsa doloribus. Pariatur est eum quia cumque officia. Eius laborum necessitatibus est corporis culpa aut. Consequatur magnam ea velit excepturi. Voluptates doloribus voluptas ipsa molestias. Sunt quia aut repudiandae distinctio possimus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(133, 'Quibusdam laboriosam eveniet numquam.', 'Ea possimus cupiditate et adipisci. Excepturi a at ut illum quia aut enim distinctio. Autem dicta distinctio ut aut quia eum. Dolores a sunt voluptas ut provident. Nam ex odio distinctio libero aperiam eos.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(134, 'Perferendis vitae ullam nisi itaque.', 'Ut ipsam sequi eius occaecati. Aut qui deserunt distinctio deleniti ut aut similique. Nemo reiciendis beatae unde ut qui qui. Ratione veniam temporibus voluptas fuga aut nemo officiis excepturi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(135, 'Magni reiciendis perspiciatis ullam tenetur sed voluptatem aut.', 'Officiis et aliquam rerum accusamus eaque. Velit quos necessitatibus eos harum cupiditate eos. Sed minus repellendus possimus quia qui eius ex. Explicabo dicta quasi adipisci quam magni odio. Repellendus rerum nesciunt sapiente aliquam ipsum. Est et possimus necessitatibus sed.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(136, 'Saepe et velit voluptate provident.', 'Vitae reprehenderit veritatis quam voluptatem consequatur. Rerum earum autem blanditiis. Harum veniam labore dignissimos illum ipsam aperiam dolorem. Est et numquam et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(137, 'Omnis ea suscipit dolores iusto iste.', 'Officiis doloribus nihil neque qui. Ipsam voluptas nam molestiae optio. Iure vel et dolores provident cumque. Quis et et qui voluptatum. Quisquam commodi velit eligendi corrupti quam quia optio voluptas.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(138, 'Quasi et minima est eligendi officia omnis.', 'Dolores ut quos voluptatem autem distinctio sint voluptate. Atque iste commodi repudiandae iusto. Sed veritatis cum qui aut assumenda repellat laborum. Rem est aperiam dolores nostrum perspiciatis soluta illum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(139, 'Dolore accusantium est saepe ullam non excepturi doloribus.', 'Eum error cumque optio temporibus non. Fuga corrupti ipsa nam animi est et. Voluptate voluptates sunt deleniti. Non soluta quas quod accusantium exercitationem voluptatem enim.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(140, 'Perspiciatis maxime temporibus delectus deserunt architecto.', 'Maxime totam beatae ipsam et. Ducimus explicabo facilis velit expedita. Magni quod nemo et eos esse consectetur. Atque amet voluptates saepe modi. Quae dicta reprehenderit eaque.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(141, 'Perferendis ab rerum nesciunt totam tenetur consequatur distinctio quae.', 'Veritatis aliquam praesentium laborum fugiat hic alias labore. Labore unde debitis quos. Debitis aut molestias laboriosam. Voluptas sequi dolores quia temporibus maxime minus odio. Autem deserunt aut veniam nemo sunt et at.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(142, 'Aut qui voluptate non dolores.', 'Reiciendis aut ullam dignissimos dolore. Optio eos tenetur laboriosam deserunt et. Saepe et veritatis amet laboriosam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(143, 'Sint maxime reiciendis esse quia sint ut enim.', 'Harum qui nulla quod libero. Hic consequatur sint quibusdam. Soluta in architecto velit quod vitae qui doloremque ex. Alias minus iusto et nemo rem adipisci. Suscipit ea architecto est animi maxime ipsa reiciendis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(144, 'Quisquam nihil unde numquam sed qui molestiae.', 'Velit suscipit soluta magnam sed voluptatem facilis sint quod. Deleniti voluptas sit voluptas recusandae. Officiis molestiae mollitia inventore velit eius quo. Illo delectus consequatur quos alias. Optio rem quo eum vitae. Nihil voluptatum voluptatem magni eos voluptatem inventore rerum suscipit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL);
INSERT INTO `contents` (`id`, `title`, `content`, `images`, `thumb_images`, `category_id`, `visitor_count`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `show_home_page`, `deleted_at`) VALUES
(145, 'Omnis assumenda facere explicabo cum tempore.', 'Tenetur illum voluptatibus ipsa excepturi id voluptatibus deleniti. Voluptatem saepe eos quia aut sit vitae iure. Libero aperiam ad ea quaerat praesentium est. Sunt provident eum iure est. Culpa nesciunt sit cupiditate officia suscipit. Vero id fugiat consequatur deserunt error.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(146, 'Dolores eveniet qui maiores impedit magni repellendus.', 'Autem nulla ut est aut quidem quaerat. Molestias ea molestiae distinctio eum et a. Velit aut consectetur quos voluptatem delectus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(147, 'Quis officiis ut autem blanditiis natus et.', 'Ex deleniti eligendi et. Ea totam consequatur molestiae qui eius vel. Cum quo voluptatem eum nam nemo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(148, 'Autem iusto labore eligendi commodi quidem est.', 'Voluptas corporis voluptatem officia reiciendis ex ratione est quo. Nesciunt iusto voluptatum rem accusamus. Pariatur distinctio sit quas atque quisquam repellat fugiat.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(149, 'Esse corporis tempore eos aliquam sunt voluptatem nulla.', 'Rerum qui minima recusandae rem placeat explicabo. Maiores est exercitationem est quia qui eveniet optio. Et ipsa occaecati est. Nobis iure dolorem officiis esse.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(150, 'Voluptatem et est consequuntur quia odit voluptas voluptas.', 'Et iste delectus voluptas soluta ea quis quae. Nobis et quod dolorem doloribus cupiditate eos dolores est. Reiciendis laborum eligendi quisquam voluptas. Est nulla laudantium et et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(151, 'Aliquid magnam vero vero.', 'Molestiae optio vero accusamus totam natus. Iusto sed eius rerum. Quibusdam qui soluta dicta laudantium. Exercitationem qui iste omnis perferendis beatae harum. Et et voluptatem eos.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(152, 'Velit voluptas sint dolorum deserunt perspiciatis possimus.', 'Voluptas quia et nisi aspernatur dolorum et. Nisi asperiores non est id modi sit omnis. Et qui rem voluptatem beatae aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(153, 'Eligendi enim eum neque incidunt voluptatem.', 'Perferendis et unde qui et qui iusto. Voluptas eveniet et sed sequi. Fugiat perspiciatis voluptas rerum impedit quia voluptas. Aut maxime quasi ipsum velit unde. Aut eveniet assumenda numquam incidunt quae qui. Voluptatem totam officia et facilis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(154, 'Ea necessitatibus illo dolor laborum consectetur.', 'Architecto nostrum ab sit dolores ad est ex. Et rem quis qui totam eos dolorum dolor aut. Qui earum ut nisi non laborum. Pariatur corrupti voluptas explicabo assumenda qui repudiandae. Aut modi et non eius fuga.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(155, 'Commodi odio dolor sed pariatur saepe magni.', 'Facilis inventore quisquam dolorem pariatur quam. Molestiae praesentium reprehenderit fugiat asperiores eum esse. Harum cum nam velit et placeat. Eligendi officiis sed non.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(156, 'Provident quia voluptatem voluptas mollitia cumque voluptas.', 'Iste culpa autem aut earum et. Et veniam quo est ut. Voluptatem officiis temporibus aut mollitia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(157, 'Architecto fugiat itaque explicabo natus dolorum occaecati blanditiis.', 'Quis quas dolor in. Corrupti quidem a eum blanditiis vitae voluptas. Repellendus iure et recusandae deserunt qui.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(158, 'Velit eaque nesciunt tempore voluptas laborum veritatis iure eligendi.', 'Dolores aperiam rerum placeat doloremque dolor. Recusandae necessitatibus minus voluptatem dolor hic deleniti. Voluptatem aut aut vel excepturi maiores quis. Sint ut eum dolor aut vel sit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(159, 'Assumenda est nihil voluptate.', 'Sed qui et temporibus sit id saepe est. Sint in temporibus consequatur beatae est. Dignissimos eveniet maiores dolorum ad voluptatem impedit. Asperiores labore unde sapiente reprehenderit eum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(160, 'Qui assumenda cumque deleniti atque labore rerum.', 'Ut aut minus qui labore nisi consequuntur. Aut libero voluptatem repudiandae et. Quia quo et deleniti optio inventore asperiores. Eligendi odit ut voluptatem dolorem. Eligendi inventore quia quis est. Dolores occaecati repellat non et alias aut voluptas.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(161, 'Officia deserunt amet enim quia ea quos.', 'Consequatur molestiae voluptatem corrupti ut molestiae adipisci. Est sunt est et in et est. Beatae quis consequuntur cum animi perferendis incidunt et. Voluptatem corrupti est dicta autem odio. Fugiat quis iusto ratione nemo ducimus. Qui eius unde praesentium quas voluptatum fugiat sit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(162, 'Aliquam tempora aut delectus assumenda quia.', 'Qui saepe sed repellendus ut saepe ea explicabo expedita. Vero commodi quas assumenda tempora dignissimos autem sed eos. Modi non soluta odit ullam nemo aut totam. In enim dolor placeat possimus enim doloribus dolores. Placeat quo consequatur ut nisi aperiam et rerum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(163, 'Et consequatur et vitae amet et.', 'Iusto aut ea earum. Iste ut voluptatem quis iusto aut dolorem dignissimos. Rem molestiae velit vel veniam nisi itaque.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(164, 'Non mollitia iusto pariatur consequuntur sit.', 'Quo voluptas et ab omnis commodi. Ipsam officiis aspernatur molestias repudiandae debitis minus. Cumque facere id autem enim porro accusamus ut. Vero animi omnis vitae voluptatem et earum. Laboriosam est consequatur voluptas ea dolore amet.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(165, 'Itaque ut sed quas et numquam eveniet.', 'Dolor fugit sint expedita repellendus. Voluptatum molestiae distinctio repellendus dicta est beatae iste. Consequuntur quasi repellendus assumenda non omnis earum. Laboriosam excepturi omnis dolores odio temporibus id ipsa.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(166, 'Fuga reiciendis voluptatem dicta quis non in eveniet.', 'Quo sit quas officiis numquam doloremque. Id eum quos veniam deleniti voluptatibus nesciunt. Quo esse animi pariatur sunt. Dignissimos occaecati id asperiores ut qui culpa nulla saepe. Dolore dolorum repellat eius sit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(167, 'Autem minus aut modi illum libero ducimus quia.', 'Nulla vitae quia et est et impedit qui eos. Quae omnis nihil iure optio laudantium dolores. Aut voluptas iste impedit amet tempore.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(168, 'Et neque unde tempore sint nam quia quia.', 'Autem assumenda placeat fugit enim in. Eaque vero in et quod voluptas in. Amet illum magni consequuntur facilis deleniti.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(169, 'Dolores autem dicta beatae ut esse doloremque et ea.', 'Repellendus saepe beatae dignissimos. Dolor hic quae accusantium earum dolorem et ut voluptas. Architecto voluptatem velit sed quo. Ea qui excepturi dolores dolorem sit. Soluta earum sit occaecati ex.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(170, 'Aliquam cupiditate ipsa itaque beatae.', 'Doloremque eos molestias porro dolorum qui non. Consectetur qui et itaque sunt non nam id est. Perferendis voluptatum hic veritatis repellat suscipit provident ex.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(171, 'Autem iure voluptatibus nulla ea non vel.', 'Iure ullam sit cumque dolore sequi qui amet. Assumenda eum aspernatur et facere nihil. Vel ab molestiae adipisci est accusamus id. Quia dignissimos harum aut officiis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(172, 'Unde odio impedit ut velit est cumque.', 'Ut consequuntur necessitatibus mollitia maiores veritatis hic. Aut eum officia ipsum alias non. Vel nobis repellat reiciendis autem sed enim perspiciatis. Voluptatibus aspernatur quia inventore. Voluptate rerum aliquid dolor eos sit culpa in.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(173, 'Quia eaque rerum id dolores.', 'Blanditiis voluptas illum illo molestiae libero. Et autem ut sed voluptatem voluptatem nam dolor. Exercitationem et incidunt magnam. Doloribus eaque esse non nisi sapiente amet. Et placeat corporis perferendis voluptate.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(174, 'Et qui facere modi iure temporibus.', 'Aut consequatur magnam possimus corrupti. Beatae libero et aspernatur. In et blanditiis dolore quod tenetur explicabo quia. Veniam eius culpa consequatur soluta.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(175, 'Voluptatem amet alias aliquam voluptatem ratione ratione.', 'Molestiae rem aut aut voluptatem. Adipisci nisi reprehenderit in omnis. Consectetur ea velit mollitia dolorem quia. Voluptatibus ut explicabo recusandae voluptatibus nihil consequatur et animi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(176, 'Incidunt reiciendis facere voluptatem dicta facere sapiente facilis.', 'Neque ab incidunt incidunt ut deleniti nesciunt repellendus. Quo aperiam odio qui rerum sed laudantium. Cupiditate itaque adipisci rem omnis accusantium et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(177, 'Dolorem libero dolorem facere ipsa consequatur et hic.', 'Omnis est porro non at accusamus quis repudiandae explicabo. Ipsam illo non omnis qui neque. Nostrum temporibus ullam dolorum beatae. Tempora sit facere laudantium dignissimos velit quia qui dolor. Quasi rem qui vel consequuntur occaecati.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(178, 'Nisi sunt reprehenderit enim.', 'Quam debitis libero tempore pariatur. Sit rem et consectetur sunt eos. Pariatur sint et eligendi ut et nobis qui. Consequuntur non quos ullam. Ut amet iusto facilis temporibus consequatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(179, 'Consequatur ad culpa sed dolorem architecto.', 'Voluptatem tempora illo sit ea velit corrupti. Fugit nobis vel porro et aut cum. Architecto quas ab eum veniam. Debitis possimus cupiditate eos. Earum autem ipsam illum occaecati autem consequatur qui.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(180, 'Dolores qui inventore hic.', 'Aut natus nam aut eius repudiandae. Fugiat asperiores voluptatem facilis a modi. Sit repellendus dolore ullam voluptate. Officia quia quo nostrum possimus autem. Id alias dolore nostrum perspiciatis quis qui. Asperiores nesciunt culpa dicta cupiditate maxime earum velit iure.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(181, 'Consequatur officia tempora et et.', 'Ipsa perspiciatis quo ab est quo. Optio porro sed iusto. Expedita aliquam maiores natus possimus nihil voluptatem. Quidem sequi vel iusto est fuga.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(182, 'Id cumque officia est placeat.', 'Enim dolorem recusandae voluptatem tenetur quis saepe. At quaerat at harum quo repudiandae numquam harum. Cum ullam non fugiat non fugiat itaque amet. Est maxime et qui vitae dolores iste consequatur. Delectus laboriosam ullam praesentium enim quo.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(183, 'Voluptas ipsum optio aspernatur eos officiis.', 'Ea id ipsum rerum aut est. Recusandae nihil et autem autem a. Vel ea est qui deleniti quibusdam incidunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(184, 'Non iusto pariatur amet sed ab reprehenderit.', 'Reiciendis eum ex voluptate exercitationem quia temporibus expedita. Ut est in qui dolor nisi dolorum. Suscipit molestiae quibusdam sequi quam sint aut voluptatibus. Est omnis culpa tempora rerum minima. Et quod quaerat perspiciatis aliquid quae voluptatem. Earum voluptatem voluptatibus qui perspiciatis similique dicta velit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(185, 'Qui quo ut id.', 'Eius est molestiae et rerum. Commodi non unde deleniti est qui corporis necessitatibus. Optio voluptatibus fugit libero eius illo ratione unde. Repellat quo iste quae qui. Laboriosam voluptas consequatur quia illum labore id commodi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(186, 'Eligendi voluptatem nulla est temporibus dolore vero officia.', 'Possimus omnis iusto voluptas sunt rerum. Nesciunt odio sint earum. At est et illo et deserunt. Aut quasi repudiandae atque. Vel impedit ullam hic cupiditate esse eveniet. Sit quos eum consectetur eaque est.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(187, 'Suscipit dolore excepturi voluptatem amet voluptatem perferendis totam.', 'Dolor consectetur non officiis molestiae deserunt voluptas qui autem. Est fuga deleniti est explicabo in. Expedita est corrupti eligendi quidem exercitationem molestiae. Odio placeat doloribus voluptatibus inventore.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(188, 'Est iure est placeat enim.', 'Nisi ea eligendi expedita. Vero sunt nulla repellendus. Reiciendis in laboriosam aliquid architecto voluptas et occaecati esse. Porro nesciunt at eveniet accusamus. Est labore eum odit exercitationem. Minus magni magnam corporis omnis alias iusto.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(189, 'Necessitatibus odio est et.', 'Eos dolores quia quo sint dolore minima ut. Enim ab error enim aut et architecto sit. Harum eligendi quae vero vero omnis maxime aut. Culpa ut odio qui rerum. A omnis dolores sapiente. Quod laborum asperiores commodi sit molestiae.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(190, 'Quidem quas molestiae eligendi quia aut.', 'Quo sunt at laudantium id id consequatur. Velit ipsa voluptatem qui voluptates sapiente. Exercitationem autem assumenda vitae quibusdam corrupti et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(191, 'Porro nisi inventore officia rerum sunt deleniti eligendi illo.', 'Porro magni eos illum eos consequuntur. Iure deserunt cupiditate suscipit alias temporibus. Rerum delectus quos sed dolores molestiae. Quia at eos ut voluptatem. Aut iste praesentium et facilis non consequuntur nihil.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(192, 'Sint amet aut aspernatur rerum hic corrupti.', 'Sunt praesentium possimus id natus delectus reprehenderit. Distinctio enim perspiciatis non ut magnam. Quis numquam quis sequi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(193, 'Molestiae ut voluptatum mollitia enim ex iusto.', 'Quas ea temporibus quibusdam. Officiis ipsa vel maxime nobis et rerum. Tempora non exercitationem aut qui minus. Officiis unde id tempora et dolorem porro ipsum. Magnam impedit quasi dicta voluptas asperiores.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(194, 'Voluptatem sint perspiciatis error quis aut sequi dignissimos necessitatibus.', 'Voluptas quia nisi itaque sed. Velit ea excepturi est. Omnis odio dolor ipsa. Consequatur maiores est rerum explicabo saepe. Molestias est voluptatum fugiat eos maxime iure.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(195, 'Magnam dolorem quibusdam aut.', 'Quia qui minus cumque ut voluptatem. Est consequuntur est adipisci error temporibus cumque. Quasi aut dolore corrupti omnis nihil.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(196, 'Laborum eum repudiandae sapiente natus sint.', 'Cumque voluptas qui dolor adipisci ipsa tenetur. Aut est et voluptas. Voluptas similique aut eos ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(197, 'Est consectetur et deserunt incidunt vitae non molestias.', 'Porro dolore eius hic quam consequatur quidem pariatur. Recusandae voluptas sint qui. Mollitia quia in quia quas sapiente eos. Et laboriosam ipsam sed ducimus distinctio. Qui rem quae similique occaecati omnis dicta at ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(198, 'Assumenda in cumque tempora inventore ducimus.', 'Sit ab assumenda fugiat corrupti dignissimos voluptatem. Pariatur nisi maxime recusandae consequatur in sint. Quisquam iusto rerum at. Ea maxime consectetur minima quo sequi blanditiis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(199, 'Omnis facilis fuga quia quis asperiores.', 'Similique minima temporibus et optio et explicabo. Omnis ut cumque non aut. Quis et enim porro numquam et aperiam alias. Tempora dolore natus qui repellendus mollitia ut molestias. Tenetur et aut fugit. Ducimus neque aliquam qui porro.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(200, 'Laborum sit praesentium enim sed sint dolorem.', 'Esse rerum modi commodi. Aut unde aut qui. Necessitatibus culpa reiciendis in omnis sint est totam. Est laborum aut officia repellendus aut. Est laborum deserunt eius cum quibusdam libero qui id.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(201, 'Sit provident et minus.', 'Sit dolores eos esse facere. Dolorem cupiditate qui vel a. Dolores labore autem dolor voluptas. Autem sit tempora aliquid.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(202, 'Cupiditate ipsam est qui quod.', 'Amet iusto et velit laboriosam. Officia fuga quis nihil molestiae soluta dignissimos. Ab sit recusandae laborum impedit voluptas architecto est. Repellat ut voluptatem explicabo quia suscipit accusantium aperiam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(203, 'Fuga voluptatem qui eos et eveniet cupiditate.', 'Quia earum error at officia eligendi aut ut. Est sunt et soluta beatae voluptatem. Ut ut sint error non. Voluptatibus totam qui autem adipisci sunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(204, 'Illo delectus alias reiciendis tempore sed voluptas illum.', 'Et repudiandae eius repellat nemo. In labore ut voluptate et. Tenetur aut id nihil sapiente debitis. Nihil hic nesciunt animi omnis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(205, 'Unde voluptatem eaque animi id.', 'Et consequuntur amet qui corrupti quia molestias labore. Doloremque aut nulla enim quod. Molestiae non optio non. Quo ipsum ipsam accusantium quas ex quibusdam voluptatem aliquid. Excepturi fugiat ipsum tempore.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(206, 'Quibusdam sit qui in asperiores a.', 'Cum mollitia enim quod dolor neque delectus. Sunt velit ullam fuga accusantium esse sit est. Qui dignissimos ullam ut quis consequatur. Itaque aperiam ut ad minus enim facilis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(207, 'Et non veritatis ipsam expedita nisi.', 'Commodi dolorem explicabo earum ipsam. Ullam ex officia commodi. Nam sunt recusandae quis omnis qui provident officiis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:19', '2015-10-22 18:04:19', 0, NULL),
(208, 'Consectetur odio consequatur ipsa ut.', 'Omnis aliquid aperiam voluptatem sunt. Tempora enim ut nemo ducimus quia et dolor. In officiis tenetur excepturi sed. Expedita rerum facere rerum qui. Sint labore debitis corrupti quasi explicabo. Nemo at ut ipsa rerum ut voluptatem reprehenderit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(209, 'Optio nam aliquid rerum aut vero maiores.', 'Voluptatem et iste et qui non velit est. Perferendis necessitatibus qui nostrum veniam deleniti iusto. Aliquam quia dolores quod.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(210, 'Facere iste eius sapiente quos earum quo corporis.', 'Aut vel perspiciatis eius. Ut id ut odio dicta eaque eligendi consequuntur sunt. Non atque ut cum. Quas velit veritatis necessitatibus sunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(211, 'Et dolor et cupiditate ut repellendus rerum.', 'Ratione esse molestias consequuntur dolore qui omnis nobis asperiores. Aut et eum dolores aut consequatur molestias. Omnis quis amet consequuntur sed corporis atque quidem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(212, 'Saepe nihil accusamus quam qui illo nostrum.', 'Corporis nemo labore neque. Quod molestiae dolores aut quo ut dolorem pariatur. Omnis nulla omnis iste maxime asperiores pariatur. Autem voluptas sed quisquam autem deserunt beatae exercitationem. Quidem aut est quia reiciendis velit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(213, 'Temporibus odit molestiae quia qui eos voluptatem.', 'Ea non doloremque vero fugit est nemo. Excepturi odit voluptas dolor iure blanditiis animi quia. Temporibus necessitatibus ut velit ullam. Enim adipisci quisquam consequatur provident molestias eveniet consequatur totam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(214, 'Quia qui inventore vero.', 'Ducimus odit voluptatem hic facilis. Enim et minus omnis sed et omnis. Vel suscipit aut non et veritatis cum rerum. Sequi accusantium reiciendis autem saepe. Et similique est et aut. Sit quo soluta quas doloribus ut et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(215, 'Placeat possimus velit unde laborum.', 'Inventore officia optio ut quam eos temporibus iusto et. Sit dignissimos illum dolor facere sapiente a. Velit qui voluptas quia temporibus facilis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(216, 'Ex neque nisi eius dolorem ipsum earum.', 'Eius facilis dolores aut nisi voluptatum. Aut sint consequatur quasi vel omnis. Labore est sit quae debitis ab autem. Id libero numquam temporibus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(217, 'Omnis debitis voluptas est quia cumque.', 'Perspiciatis rerum magni sint perspiciatis qui in nemo eaque. Omnis ut voluptatum deserunt cumque distinctio veritatis velit. Laudantium itaque quod reiciendis. Incidunt saepe sit porro explicabo temporibus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(218, 'Sed earum quo numquam impedit est accusamus sapiente dolore.', 'Beatae maxime nisi ducimus dolor ut. Eos sit sit ad. Est nesciunt amet quasi. Illum voluptatem voluptatem numquam voluptas dolorem id labore aliquam. Voluptatum doloremque quia nam. Atque adipisci omnis asperiores ut eaque iure ab a.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(219, 'Beatae facilis libero consequatur qui quibusdam minima laboriosam.', 'Eaque et quidem magnam dolores occaecati. Ut velit sunt vero et sint. Velit inventore dolorem explicabo officia. Itaque voluptate pariatur modi laborum possimus rem. Et in dolor esse eum et alias unde voluptatibus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(220, 'Temporibus nihil neque pariatur sit consectetur consequatur.', 'Neque est veniam dignissimos ea cumque vitae. Mollitia laboriosam adipisci deleniti itaque inventore. Est quia amet est sint enim aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(221, 'Et vero animi sit perferendis ut at minus.', 'Sed fuga sunt dolorem sed dolore. Dignissimos rem fugiat eos exercitationem deleniti molestiae consectetur. Quia ex dignissimos eos amet aut consectetur ipsam deleniti. Ex consequatur et quis harum consequuntur aspernatur nobis. Sequi saepe praesentium sunt et vel ipsa est. Nisi voluptas qui alias illum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(222, 'Consequatur dolores vero consequatur modi sint voluptas omnis.', 'A autem veritatis rem voluptatibus placeat quas nulla. Consectetur modi quia molestiae eos dolores modi vero omnis. Voluptatem hic labore eos cumque sequi. Natus rerum ratione quidem nesciunt porro. Maiores odit qui officia vero qui quibusdam nisi sapiente.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(223, 'Natus voluptate non et esse nihil ut quis.', 'Consequatur perspiciatis sed ducimus est. Saepe mollitia alias enim excepturi. Veritatis quod sed autem iusto.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(224, 'Aut ducimus quos et ullam voluptatem non architecto.', 'Repellat deleniti nihil doloremque sit. Reprehenderit qui quo ipsum aut et enim dolorum. Sapiente sint aut similique minus voluptatibus eos.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(225, 'Nam voluptatibus magnam libero consequatur.', 'Ea aperiam sunt reiciendis sit. Ab et quia nam provident. Molestiae in modi expedita illo. Asperiores vitae aut possimus aperiam. Culpa et sequi at quae.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(226, 'Sed animi sapiente dolore vel et.', 'Voluptatum reprehenderit est quo consectetur. Voluptatem quia debitis eaque ut. Et et quis tempora officiis totam. Voluptas tempora fuga vero quaerat.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(227, 'Sed commodi ea expedita nam eius.', 'Sunt consequatur dolorem possimus rem dolor enim labore. Molestiae ipsam sunt id animi porro similique aspernatur non. Laboriosam sapiente aliquid at qui consequatur aut non. Et dignissimos aut sit. Animi incidunt voluptate voluptatem vel ipsa. Dolor neque cupiditate fugiat quis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(228, 'Rerum et quaerat consequuntur id ut dolorem ea eligendi.', 'Voluptatem aspernatur nulla et qui eum sunt. Quia esse voluptas dolorum aliquid. Quidem voluptas asperiores quae fugiat velit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(229, 'Quasi quia quo id eum ut eos velit qui.', 'Asperiores vel dolores molestias veritatis est. Amet voluptatibus tempora similique nihil voluptas saepe consectetur iure. Quibusdam illum blanditiis soluta eius omnis est illo. Architecto ea aut laudantium. Sit qui sequi error ipsum veritatis sint asperiores.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(230, 'Quia harum sit necessitatibus aut.', 'Sed illo assumenda et laborum adipisci consequuntur deleniti. Aliquam quo architecto modi molestiae quas sit ut aut. Voluptatibus iste distinctio voluptatem sit corporis temporibus vitae. Aut perferendis pariatur expedita architecto ipsa. Ipsam rem quisquam voluptatibus sed et ea cum. Non veritatis culpa saepe ducimus occaecati sed minus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(231, 'Quia excepturi libero minus ab quas et.', 'Quia ex eaque aspernatur ullam at enim officiis reprehenderit. Repellat est possimus non in. Corporis nesciunt aut ipsum eveniet. Et dolorem ullam omnis qui.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(232, 'Debitis sed eum magnam provident a.', 'Dolor culpa cumque ea hic sed aut. Beatae corrupti recusandae saepe occaecati quia. Optio sed ea exercitationem aut non. Id expedita dolores alias maiores optio. Magnam quod fugiat quae sed ducimus.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(233, 'Amet animi nesciunt quos est qui est.', 'Possimus praesentium odit et officia aut. Excepturi perferendis voluptates et enim et voluptas. Tempora unde excepturi repellat nihil consequatur. Recusandae impedit assumenda vel veritatis facilis dolorem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(234, 'Dolores consequuntur consequatur sapiente voluptate quaerat excepturi totam.', 'Aliquid sed porro quo officia corrupti maxime. Ullam ullam quaerat ab quis aliquam et. Est perferendis omnis ipsum quo consequatur. Sint fugit est distinctio rerum consequatur. Laborum praesentium non ex aut cum totam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(235, 'Cum quisquam voluptatum ut iste recusandae.', 'Sed ab ut sed illo. Et sequi magnam eius rerum et. Eaque nisi dicta minus totam quos. Labore itaque quos minima aut numquam qui aut sed. Et et ut architecto est praesentium et rerum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(236, 'Autem harum harum ab incidunt.', 'Est ea dolor nostrum iste soluta et sequi. Et odit aut quidem itaque rerum et. Perspiciatis voluptates praesentium porro non qui quos quis mollitia. Ipsa non tempora voluptas aperiam quasi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(237, 'Qui explicabo sint facere.', 'Voluptatem doloribus sapiente libero. Fuga occaecati est similique eveniet sed. Aliquam id et non maxime voluptas natus consequuntur. Reiciendis impedit asperiores odio ut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(238, 'Dicta corrupti vero qui.', 'Vitae ducimus aut voluptas voluptatem dolores. Hic quasi ab itaque excepturi. Dolore aut rerum suscipit quo molestiae velit iusto. Laborum nemo enim numquam incidunt animi quia asperiores.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(239, 'Iste incidunt minima sit eum.', 'Ut aut optio nemo eligendi quia est non quia. Dicta quisquam aut illo voluptate. Voluptate ut distinctio pariatur totam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(240, 'Nam non et labore est cupiditate.', 'Ducimus nesciunt minima error nisi sed rerum. Aspernatur soluta tempore cupiditate rem sit voluptatem. Quae in rerum ut fugiat dolores accusantium.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(241, 'Sit quia veniam sit sed excepturi vel voluptatem.', 'Et eos id aut tempore nostrum eos. Ut voluptatem qui voluptatem rerum voluptates. Ea et fuga autem accusamus. Fugiat dolores officiis dolorem cumque officia vero et.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(242, 'Ad harum temporibus aut quas itaque dolore.', 'Qui nostrum repellat excepturi quibusdam. Ad quasi quaerat blanditiis quas debitis molestiae reiciendis. Ullam ratione debitis velit amet consectetur. Consequatur quaerat quae aut velit dolores quas fuga.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(243, 'Rerum eaque maxime alias quia aut aut.', 'Dolore earum cumque velit numquam officia. Soluta est ipsa aut perspiciatis consequatur ut. Error officiis consectetur rem rerum cumque reiciendis consectetur. Magnam aut ipsum iste et at mollitia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(244, 'Optio voluptas velit eveniet et est.', 'Est expedita reiciendis ex ad dolore et quia. Quisquam qui sit et velit. Maxime tempore qui ducimus explicabo eius nisi iure. Accusamus cupiditate consequatur distinctio exercitationem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(245, 'Dolorem voluptatibus magnam aliquam aut et.', 'Sint culpa blanditiis qui magni reiciendis voluptatem exercitationem id. Aspernatur ut voluptas tenetur aut rerum omnis dolor. Voluptatem amet placeat et ut consequuntur temporibus. Quos laborum incidunt sunt excepturi dolor. Commodi error cupiditate dolores illo ea nam. Neque dolorem nihil dolores aspernatur sapiente commodi aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(246, 'Dolore ad dolor magni velit cupiditate quibusdam eum.', 'Omnis accusantium ipsum fugiat consectetur enim molestias. Odit cum omnis occaecati quia sed excepturi. Praesentium quidem voluptas quae recusandae ad ipsa est. Maiores deleniti ea dolores cupiditate.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(247, 'Qui qui natus tenetur quisquam nulla.', 'Eos libero quis sit dolorem non consequatur qui. Id ut officia culpa. Fugit sit aut ullam sed laborum hic.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(248, 'Voluptates maiores magnam est ipsum porro cumque dignissimos possimus.', 'Corrupti nobis quia enim laudantium dignissimos tempore fugit. Alias nihil autem iusto. Velit ut et nihil rerum odio dolorem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(249, 'Porro qui reprehenderit assumenda architecto neque nemo sed.', 'Nisi dolores accusantium sit velit expedita eum. Laudantium nostrum magni eveniet et sed deserunt a. Sed harum omnis est rerum minus sunt veritatis molestias. Tempora ut labore incidunt non quia iusto. Dolorum tempora eum dolorum ut omnis molestiae quaerat aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(250, 'Officiis fuga atque dolores commodi doloribus sed voluptas et.', 'Ad rerum et odit distinctio dolor neque voluptas. Reprehenderit eos qui repellendus sit perferendis similique. Est consequatur laboriosam mollitia magni voluptatem asperiores et repudiandae. Facilis nisi sunt mollitia harum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(251, 'Eveniet voluptatem consequatur quis dolorem quod veritatis.', 'Distinctio distinctio exercitationem debitis pariatur sed. Illum accusantium nesciunt veniam velit recusandae velit consectetur. Quidem accusantium veritatis est voluptatum id ullam. Excepturi ut excepturi cum sunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(252, 'Dolor aut et id.', 'Soluta omnis ut non quisquam exercitationem. Et dolor sed aut asperiores delectus aut. Quam temporibus est perspiciatis aliquid minima quas aut rerum. Modi voluptas nemo fugiat molestiae neque ut tempore. Non et est sit.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(253, 'Molestias mollitia sapiente iure provident.', 'Et vel nam veniam asperiores corrupti nesciunt eum. Vero dolor voluptatem vero. Consequatur beatae autem asperiores veniam distinctio in.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(254, 'Mollitia culpa porro veritatis nemo blanditiis.', 'Fugit veniam omnis consectetur consequatur. Aspernatur quia eaque molestias saepe. Ipsam et quas ut vel sed esse et. Consequatur quae voluptatem enim quis quo exercitationem nisi. Quae et ut rem animi doloribus ducimus sapiente.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(255, 'Totam est ullam laborum praesentium neque similique.', 'Veniam mollitia ducimus aperiam voluptatem ullam ea laborum. Magnam explicabo quos atque blanditiis voluptatibus aliquam doloribus. Excepturi laboriosam optio sunt rerum qui unde ut. Nihil consequatur consequuntur id dolor in.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(256, 'LANDSCAPE GARDENS', '<p>Non nobis at et dolor non. Nesciunt recusandae a eos. Accusantium a voluptatibus quas est. Soluta reprehenderit explicabo laborum maxime saepe.</p>', '["http://green-architecture-design-darapenhchet.c9.io:80/source/Screen-Shot-2015-02-10-at-7.31.42-PM.png","http://green-architecture-design-darapenhchet.c9.io:80/source/dashboard.png"]', '["http://green-architecture-design-darapenhchet.c9.io:80/thumbs/Screen-Shot-2015-02-10-at-7.31.42-PM.png","http://green-architecture-design-darapenhchet.c9.io:80/thumbs/dashboard.png"]', 16, 0, 2, 1, '1', '2015-10-22 18:04:20', '2015-11-20 15:51:00', 1, '2015-11-20 15:51:00'),
(257, 'Error amet et accusamus libero.', '<p>Et enim sed dolorum repellat sunt. Quaerat ipsam optio officia repudiandae odit nostrum in. Voluptatem officiis voluptatem doloribus eum iure veniam sed. Voluptas inventore nam consequatur accusamus quasi nulla voluptas. Ad sit aut minima dolores sit. Quae sequi placeat doloremque eum fugiat.</p>', '["http://green-architecture-design-darapenhchet.c9.io:80/source/dashboard.png"]', '["http://green-architecture-design-darapenhchet.c9.io:80/thumbs/dashboard.png"]', 1, 0, 2, 1, '1', '2015-10-22 18:04:20', '2015-11-11 13:04:34', 1, '2015-11-11 13:04:34'),
(258, 'Repellendus nisi praesentium ut omnis non illum.', '<p>Recusandae quis amet nobis fugiat molestiae. Eos et nihil magni aut. Sit est et harum repellendus. Recusandae molestiae consequuntur est qui ut odio.</p>', '["http://green-architecture-design-darapenhchet.c9.io:80/source/slide1.jpg"]', '["http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide1.jpg"]', 1, 0, 2, 1, '1', '2015-10-22 18:04:20', '2015-11-11 13:06:15', 1, '2015-11-11 13:06:15'),
(259, 'Cumque repudiandae voluptates consequatur earum.', '<p>Et molestiae et hic omnis. Officiis beatae sint sit pariatur sed quis reiciendis numquam. Quos non perspiciatis consectetur iure dolore dolores. Harum saepe distinctio est est nobis.</p>', '["http://green-architecture-design-darapenhchet.c9.io:80/source/sample_img.jpg"]', '["http://green-architecture-design-darapenhchet.c9.io:80/thumbs/sample_img.jpg"]', 1, 0, 2, 1, '1', '2015-10-22 18:04:20', '2015-11-11 13:07:36', 1, '2015-11-11 13:07:36'),
(260, 'Praesentium doloribus qui non dolores consequatur repellendus impedit.', '<p>Aut excepturi quia molestiae ea pariatur ut. Mollitia qui libero quia maxime accusamus quisquam. Vitae pariatur commodi exercitationem inventore consequatur architecto dolore eligendi.</p>', '["http://green-architecture-design-darapenhchet.c9.io:80/source/slide2.jpg","http://green-architecture-design-darapenhchet.c9.io:80/source/slide1.jpg"]', '["http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide2.jpg","http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide1.jpg"]', 16, 0, 2, 1, '1', '2015-10-22 18:04:20', '2015-11-11 13:07:39', 1, '2015-11-11 13:07:39'),
(261, 'Ut facere earum ut cum quidem.', 'Consequatur ea repellendus omnis cum voluptatem ut. Nulla aut itaque qui adipisci eum enim. Explicabo quo tempora molestiae est quas. Velit dolores fugit voluptatem quasi sunt consequatur consequatur. Dolores minus iure dolorum occaecati tenetur error doloremque.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-11-11 13:07:41', 0, '2015-11-11 13:07:41'),
(262, 'Molestiae placeat velit quo sint et.', 'Incidunt at illo cupiditate illum. Debitis tempore quibusdam animi autem voluptas officiis magnam maxime. Nemo eum culpa qui quis voluptatum itaque. Aliquid beatae dolor et assumenda quae natus. Vel nulla quo et. Omnis quia explicabo necessitatibus rerum quis illum vitae id.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(263, 'Occaecati sapiente voluptas consectetur sequi molestiae velit.', 'Maiores minus aut alias eos velit similique illum. Aspernatur quam minus velit ut libero occaecati veritatis. Rerum neque aut et vel in nulla. Eos reiciendis adipisci odit temporibus ut possimus dolores. Perferendis dolorum voluptatibus quia dolorem exercitationem non.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(264, 'Recusandae dolor facere harum qui.', 'Perspiciatis mollitia beatae nulla molestias sed ducimus. Voluptas maiores qui tenetur inventore explicabo dicta maiores. Aut maxime suscipit eaque. Ut ab molestiae sint temporibus nobis quod enim ex. Pariatur praesentium impedit consequatur ipsam in magnam nesciunt. Qui quo id blanditiis voluptate neque est.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(265, 'Dolorum ex accusantium dolorem fugiat aut.', 'Consequuntur voluptatem tenetur temporibus voluptas voluptatum error. Et minus consequatur ea dolore commodi exercitationem. Asperiores suscipit excepturi odit laborum corrupti. Sed eveniet ut consectetur qui ipsam id itaque perspiciatis. Consectetur natus incidunt amet quaerat et culpa.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(266, 'Nihil corrupti dolore iusto qui omnis.', 'Eos excepturi fugiat omnis hic adipisci voluptatem vitae. Nemo aliquid corporis et voluptas dolores qui. Eius culpa qui sit exercitationem sunt dolores. Eaque facere exercitationem eum non quaerat fugit perspiciatis. Est recusandae consequatur rem maxime eum enim. Sed dolores et reprehenderit suscipit rem libero.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(267, 'Dolore consequatur et provident corrupti saepe doloribus ratione.', 'Aut illum ut deleniti atque maiores ipsum et amet. Expedita consequuntur consequatur omnis rem commodi. Nemo odio sunt quia perferendis unde qui. Quis dignissimos aut nihil. Doloribus non quod magni ipsum sunt. Sed numquam assumenda aut ut illo suscipit eum totam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(268, 'Nulla doloremque placeat aliquam enim similique id.', 'Vel aut tempora accusantium et voluptas. Voluptas hic perspiciatis autem tempore repellendus distinctio. Itaque laborum assumenda numquam ut voluptatem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(269, 'Eos unde rem minus.', 'Ut illum sit itaque voluptatum debitis nemo dolorem. Iusto pariatur inventore odio doloribus illo aut. Vel fuga deleniti eaque nihil similique vel. Dolore ex magni id harum nobis repellendus. Doloribus error occaecati soluta commodi. Quia qui ut minus voluptatem mollitia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(270, 'Ut repellendus nesciunt aperiam dolorem.', 'Tempore ipsam eos ab et. A id est natus et ex rerum molestiae sed. Illum deserunt consequatur sit molestiae id.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-27 13:13:25', 0, '2015-10-27 13:13:25'),
(271, 'Aut consectetur quo quia eaque enim.', 'Omnis sit pariatur eos voluptatem dolorem sapiente eveniet. Non veniam sint non. Officiis ullam error in dolor. Rerum nisi itaque sequi exercitationem nihil impedit repudiandae. Voluptates qui soluta aliquam tenetur commodi quibusdam quis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(272, 'Delectus sed vel impedit labore quisquam provident aut.', 'Et numquam nostrum modi rerum dolorem quia facilis. Sint aliquam quia eius. A in illo minima sed.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(273, 'Expedita sit est quia dolores.', 'Eius perspiciatis sunt est quidem alias unde quia et. Aliquid molestias quia numquam ducimus in. Occaecati corporis rerum facere maiores.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(274, 'Quas ratione ad nostrum nesciunt amet veniam earum.', 'Nulla odit nihil accusamus aut. Officiis atque sed et et deleniti. Voluptate doloremque itaque ipsum libero earum debitis consequuntur accusantium. Impedit sit quae aut quam ipsa omnis nostrum ex. Quasi nostrum eius rerum cupiditate totam magnam. Rerum recusandae ratione deleniti cupiditate ipsam consequatur quis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(275, 'Temporibus quia sint odit est.', 'Et blanditiis quas aut optio. Doloribus adipisci vero eligendi aliquam facere ipsa quisquam. Qui numquam dolores exercitationem non ipsa sint qui. Quo corporis et quaerat nostrum sit. Sequi ut maiores ipsum eos et et magnam. Nihil deleniti dolor voluptas nam.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(276, 'Delectus consequatur voluptatem laboriosam enim dolor.', 'Quis neque reprehenderit similique ut facere quam omnis. Sit nam a eius nesciunt dolorem natus perspiciatis. Ea neque animi eum vero nemo. Officia eum molestiae sunt sunt assumenda voluptas.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(277, 'Voluptatem nihil voluptates labore excepturi et tempore velit.', 'Nihil incidunt quibusdam autem. Cum natus vel odio perspiciatis earum saepe. Asperiores perferendis quis dolores distinctio voluptatem aspernatur. Quisquam aspernatur aut deleniti doloremque laborum velit. Amet esse voluptatem temporibus ipsam ut aperiam culpa rem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(278, 'Quis ipsa qui corrupti est eum distinctio.', 'Quibusdam eligendi modi mollitia non facere. Minima voluptas recusandae totam laborum. Saepe nisi dicta animi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(279, 'Suscipit nemo omnis nesciunt voluptatem aliquid aliquid.', 'Et debitis qui ut velit consequuntur nostrum dolorem. Alias aperiam non necessitatibus deleniti libero. Rem soluta quis quaerat blanditiis ipsa neque odio. Commodi error ea repudiandae autem natus impedit unde fugiat.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(280, 'Dignissimos eligendi at sunt.', 'Eum illum repellendus eius. Enim ipsa perspiciatis excepturi occaecati qui. Fuga iusto eum quis maxime impedit nemo odit nesciunt.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(281, 'Dicta eveniet praesentium eaque incidunt unde.', 'Quia nihil totam reiciendis sunt soluta esse. Non reprehenderit magnam delectus explicabo ut ab. Fuga rem voluptates aliquid aut qui. Earum eum unde architecto quaerat dolorum quia.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(282, 'Ipsum commodi distinctio totam.', 'Qui dolores illum veniam adipisci est officia et. Sed et debitis aut qui. Qui ex ab saepe enim commodi est quos. Dolores numquam atque nobis est quia qui architecto.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(283, 'Voluptatem voluptatem provident quod beatae fugiat ut et.', 'Explicabo fugiat rerum laborum. Atque et ut qui. Magnam soluta quibusdam vel ea nihil sint. Consequatur doloribus voluptatem consectetur excepturi.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(284, 'Quasi veniam numquam molestias voluptatem quasi aut.', 'Expedita quis fuga quia error aspernatur sint aliquam. Qui animi neque sit debitis aut magni laudantium magni. Animi et molestiae saepe dolore veniam itaque ut. Laborum error esse repellat quisquam officia repudiandae maxime. Quia nesciunt cumque iure et facere rerum consequatur. Eos aut necessitatibus velit vel aut.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(285, 'Quasi temporibus soluta voluptatum sequi.', 'Ducimus unde quia dignissimos rem. Libero fugit vel aut et similique. Tenetur officiis consequatur et nam quia deserunt dolorem voluptatem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(286, 'Amet sit quod et qui iure ut laboriosam.', 'Quae cumque corrupti ipsam repudiandae iusto magni. Nihil aliquid vel et cupiditate vitae nostrum. Commodi deleniti provident neque.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(287, 'Dolor eos sed illo culpa non eligendi dolor.', 'Expedita aut sit rerum sint. Dicta magni est soluta et. Iure minima aut magnam in assumenda. Necessitatibus velit a ut fugiat blanditiis.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(288, 'Neque ut voluptas cum nihil itaque magni.', 'Expedita est error molestias ex rem reiciendis. Tempora in sint in velit enim dolore. Veritatis est amet ab dolorum velit voluptatem.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL);
INSERT INTO `contents` (`id`, `title`, `content`, `images`, `thumb_images`, `category_id`, `visitor_count`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `show_home_page`, `deleted_at`) VALUES
(289, 'Consequatur quae et nemo.', 'Aut dicta aut ab sed deserunt. Beatae unde porro eveniet inventore. Quas mollitia vero saepe nisi tempora. Cupiditate enim consequatur numquam eos quia deserunt aut ipsum. Quasi perferendis rem enim nihil. Expedita ducimus illum hic occaecati dicta eum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(290, 'Magnam magnam inventore explicabo qui maiores quae dolorem explicabo.', 'Suscipit id ex unde quae quia saepe omnis. Ullam in ducimus odit incidunt voluptatem minima cum similique. Tempore maiores molestias necessitatibus aperiam unde. Fugiat sed ut error ut. Eaque qui ut rerum odio. Consequuntur quis quam itaque qui neque.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(291, 'Perferendis veniam tempore sed voluptas laudantium vel quas.', 'Harum vero ea enim voluptatum ut aut nihil. Dolor est qui deleniti qui laboriosam. Ex deserunt quis error distinctio dolor cumque laborum. Reprehenderit ullam possimus facilis autem et minima sed.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(292, 'Veritatis error excepturi rem.', 'Dolor cupiditate non officiis id in suscipit reiciendis doloribus. Ab quia autem molestiae sit nihil. Est suscipit cum corrupti eligendi quas dignissimos cum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(293, 'Omnis facere impedit quibusdam quam.', 'Tempora nihil ut quisquam consequatur id cumque distinctio. Quo id qui tempora necessitatibus. Impedit ut tempora praesentium est dolorum ipsa possimus. Qui aut ut sit quam dicta quam et tempora. Ipsa vel sunt aliquam qui nobis. Est voluptatum dicta temporibus voluptatem error.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(294, 'Aspernatur voluptatem enim suscipit beatae repellat eaque porro eius.', 'Non distinctio voluptate veniam veniam. Ratione sint beatae tempora ducimus qui aut. Dolorum voluptatum consequatur libero quaerat aliquam perspiciatis officia. Amet voluptatem omnis illo rerum voluptas.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(295, 'At et odit delectus earum.', 'Velit optio perspiciatis sapiente quod amet enim necessitatibus. Rerum beatae non omnis deleniti voluptas quo. Ut corporis rerum dignissimos et totam culpa in. Saepe assumenda hic nihil quia voluptatem aut quis. Rerum hic aut et et minus vitae est.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(296, 'Fuga est non amet repellendus repudiandae omnis.', 'Ab sit non exercitationem velit. Cupiditate itaque dolores illo. Molestias modi itaque suscipit aliquam. Harum sit nostrum praesentium similique rerum ipsum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(297, 'Eum aut assumenda modi voluptatem totam quia natus.', 'Rerum laborum fugit cum labore veritatis optio. Sit qui at et. Atque laboriosam sed voluptatibus voluptas deserunt repellat inventore. Natus autem nostrum sit velit. Dicta veritatis et quia fugit aperiam. Incidunt nobis tempora minus ab.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(298, 'Qui ea accusantium voluptatem eaque.', 'Nihil ea numquam eum voluptas et. Maiores omnis deleniti unde est ab aut. Qui modi enim odit laudantium quis voluptas. Dolores quo amet eligendi laboriosam omnis in molestiae. Ut laboriosam deserunt voluptatem et enim nam laborum.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(299, 'Et esse voluptatibus excepturi nostrum itaque quaerat adipisci.', 'Ducimus magni animi aut. Quo ducimus suscipit molestiae cum natus modi veritatis nostrum. Est velit minima quis ea.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(300, 'Inventore fugiat molestiae dolores necessitatibus et nulla quasi.', 'Ea et inventore eos ipsa. Occaecati error quos omnis error ut reprehenderit. Dignissimos asperiores earum et vero beatae consequatur.', '[]', '[]', 1, 0, 2, 2, '1', '2015-10-22 18:04:20', '2015-10-22 18:04:20', 0, NULL),
(301, 'NEW CONTENTS', '<p><img src="http://green-architecture-design-darapenhchet.c9.io/images/source/sample_img1.jpg" alt="" width="539" height="404" /></p>', '["http://green-architecture-design-darapenhchet.c9.io/images/source/563e052ccb33csample_img.jpg","http://green-architecture-design-darapenhchet.c9.io/images/source/563e053bc2580slide2.jpg","http://green-architecture-design-darapenhchet.c9.io/images/source/563e0698945f6slide3.jpg","http://green-architecture-design-darapenhchet.c9.io/images/source/563e06abddfcaslide4.jpg"]', '["http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e052ccb33csample_img.jpg","http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e053bc2580slide2.jpg","http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e0698945f6slide3.jpg","http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e06abddfcaslide4.jpg"]', 17, 0, 1, 1, '1', '2015-11-07 14:07:05', '2015-11-11 13:04:28', 0, '2015-11-11 13:04:28');

-- --------------------------------------------------------

--
-- 테이블 구조 `content_translations`
--

CREATE TABLE IF NOT EXISTS `content_translations` (
  `content_id` int(10) unsigned NOT NULL,
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`language_id`,`content_id`),
  KEY `content_translations_content_id_foreign` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 테이블의 덤프 데이터 `content_translations`
--

INSERT INTO `content_translations` (`content_id`, `language_id`, `title`, `content`, `images`) VALUES
(256, 'kh', 'អត្ថបទទាក់ទងទៅនឹង LANDSCAPE GARDENS', '<p>អត្ថបទទាក់ទងទៅនឹង LANDSCAPE GARDENS</p>', '["http://green-architecture-design-darapenhchet.c9.io:80/source/dashboard.png","http://green-architecture-design-darapenhchet.c9.io:80/source/Screen-Shot-2015-02-10-at-7.31.42-PM.png"]');

-- --------------------------------------------------------

--
-- 테이블 구조 `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `full_word` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `languages_created_by_foreign` (`created_by`),
  KEY `languages_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 테이블의 덤프 데이터 `languages`
--

INSERT INTO `languages` (`id`, `full_word`, `logo`, `is_default`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('ch', 'Chinese', 'chinese.png', 0, '1', 1, 1, '2015-10-22 18:04:18', '2015-10-22 18:04:18'),
('en', 'English', 'english.png', 1, '1', 1, 1, '2015-10-22 18:04:18', '2015-10-22 18:04:18'),
('kh', 'Khmer', 'khmer.png', 0, '1', 1, 1, '2015-10-22 18:04:18', '2015-10-22 18:04:18');

-- --------------------------------------------------------

--
-- 테이블 구조 `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `internal_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_parent_id_foreign` (`parent_id`),
  KEY `menus_created_by_foreign` (`created_by`),
  KEY `menus_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- 테이블의 덤프 데이터 `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `position`, `icon`, `ordering`, `type`, `internal_url`, `external_url`, `parent_id`, `level`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MAIN PROJECTS', '', '1', '', 1, '1', '28', '', NULL, 0, 1, 1, '1', '2015-10-22 18:38:27', '2015-10-23 05:40:25', NULL),
(2, 'FURNITURE', '', '1', '', 2, '1', '30', '', NULL, 0, 1, 2, '1', '2015-10-22 18:42:47', '2015-10-24 19:02:40', NULL),
(3, 'CATALOG', '', '1', '', 3, '1', '31', '', NULL, 0, 1, 2, '1', '2015-10-22 18:43:43', '2015-10-24 19:02:54', NULL),
(4, 'ABOUT US', '<p>WELCOME TO&nbsp;Green Global Architecture Design &amp; Construction Co., Ltd.</p>', '1', '', 4, '0', '', 'http://green-architecture-design-darapenhchet.c9.io/about_us', NULL, 0, 1, 2, '1', '2015-10-22 18:43:57', '2015-10-27 13:24:02', NULL),
(5, 'CONTACT', '<p>(+855)81 799 961<br /> info@greenglobale.com</p>\r\n<p>#70, First Floor, Preah Shihanuk Blv,<br />Sangkat Tunle Basak Khan Chhomkamon, Phnom Penh.</p>', '1', '', 5, '0', '', 'http://green-architecture-design-darapenhchet.c9.io/contact', NULL, 0, 1, 2, '1', '2015-10-22 18:44:08', '2015-11-11 13:08:56', NULL),
(6, 'FUNITURE 1', '', '1', '', 1, '1', '30', '', NULL, 0, 1, 1, '1', '2015-11-07 18:36:00', '2015-11-08 17:23:46', NULL),
(7, 'Message from Director', '<p>Green Global Architecture Design &amp; Construction Co.,Ltd Company repaired by Mr Ry Thyra. Mr Ry Thyra worked at BOREY LAYKONG in two years go with working and studying in one university in Cambodia. Than Mr Ry Thyra has studied more on object at Vietnam country wile 7 months of finishing on this object he came back to Cambodia. Mr Ry Thyra has worked in company part of Architecture &amp; Design in these he got experience like Exterior Design, Interior Design, Furniture Design, Design electric system and Design water system. Mr Ry Thyra has good experience and focus on work and on time on work. Mr Ry Thyra has experience for meeting customer and partner very good also. Than Mr Ry Thyra has cooperation with partner 4 people. The time in cooperation with Mr Ry Thyra and members partners make this company name GAC-4 on there time Mr Ry Thyra has cooperation 3 months. Mr Ry Thyra make one company like title on up line in 3 months already. All of these like:</p>', '0', '', 1, '1', '', '', 4, 1, 1, 1, '1', '2015-11-12 16:12:44', '2015-11-12 16:12:44', NULL),
(8, 'Our Partner', '<ul>\r\n<li>Architecture Design</li>\r\n<li>Exterior Decoration</li>\r\n<li>Interior Decoration</li>\r\n<li>Furniture Design</li>\r\n<li>M &amp; E water supply</li>\r\n<li>Construction &amp; Management</li>\r\n<li>Construction Contractor</li>\r\n</ul>', '0', '', 2, '1', '', '', 4, 1, 1, 1, '1', '2015-11-12 16:13:23', '2015-11-12 16:13:35', NULL),
(9, 'Mission Statement', '<p><a class="fancybox" href="http://green-architecture-design-darapenhchet.c9.io/ images/about-company-logo.png''" data-fancybox-group="gallery"> <img src="http://green-architecture-design-darapenhchet.c9.io/{{ asset(''/images/about-company-logo-thumbnail.png'')}}" alt="" /> </a></p>\r\n<p style="font-size: 16px; line-height: 24px; text-align: justify;"><br />Green Global Architecture Design &amp; Construction Co.,Ltd Company repaired by Mr Ry Thyra. Mr Ry Thyra worked at BOREY LAYKONG in two years go with working and studying in one university in Cambodia. Than Mr Ry Thyra has studied more on object at Vietnam country wile 7 months of finishing on this object he came back to Cambodia. Mr Ry Thyra has worked in company part of Architecture &amp; Design in these he got experience like Exterior Design, Interior Design, Furniture Design, Design electric system and Design water system. Mr Ry Thyra has good experience and focus on work and on time on work. Mr Ry Thyra has experience for meeting customer and partner very good also. Than Mr Ry Thyra has cooperation with partner 4 people. The time in cooperation with Mr Ry Thyra and members partners make this company name GAC-4 on there time Mr Ry Thyra has cooperation 3 months. Mr Ry Thyra make one company like title on up line in 3 months already. All of these like:</p>\r\n<ul style="list-style: disc; font-size: 16px; line-height: 24px;">\r\n<li>Architecture Design</li>\r\n<li>Exterior Decoration</li>\r\n<li>Interior Decoration</li>\r\n<li>Furniture Design</li>\r\n<li>M &amp; E water supply</li>\r\n<li>Construction &amp; Management</li>\r\n<li>Construction Contractor</li>\r\n</ul>\r\n<p style="font-size: 16px; line-height: 24px; text-align: justify;">* Location of company: #70, Phreak Shihanouk Bvl, Sangkat Tunle Basak, Khan chhomkamorn, Phnom Penh, Cambodia.<br /> Website: www.green-globale.com<br /> Email: Info@green-globale.com<br /> Phone number: (+855) 93 411676 / 78 900 676</p>', '0', '', 3, '1', '', '', 4, 1, 1, 1, '1', '2015-11-12 16:14:13', '2015-11-12 17:03:34', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `menu_translations`
--

CREATE TABLE IF NOT EXISTS `menu_translations` (
  `menu_id` int(10) unsigned NOT NULL,
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`),
  KEY `menu_translations_language_id_foreign` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 테이블의 덤프 데이터 `menu_translations`
--

INSERT INTO `menu_translations` (`menu_id`, `language_id`, `title`, `content`) VALUES
(1, 'kh', 'គម្រោងសំខាន់ៗ', '<p>គម្រោងសំខាន់ៗ</p>'),
(2, 'kh', 'គ្រឿងសង្ហារឹម', ''),
(5, 'ch', 'ទំនាក់ទំនងយើងខ្ញុំ', ''),
(5, 'kh', 'ទំនាក់ទំនងយើងខ្ញុំ', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 테이블의 덤프 데이터 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_04_012037_create_users_table', 1),
('2015_10_04_015042_create_categories_table', 1),
('2015_10_04_015133_create_contents_table', 1),
('2015_10_04_022115_create_menus_table', 1),
('2015_10_04_023021_create_sliders_table', 1),
('2015_10_04_023443_create_languages_table', 1),
('2015_10_04_063806_create_content_translations_table', 1),
('2015_10_04_063853_create_category_translations_table', 1),
('2015_10_04_063935_create_menu_translations_table', 1),
('2015_10_04_064003_create_slider_translations_table', 1),
('2015_10_05_151937_add_is_admin_column_to_users', 1),
('2015_10_12_081848_add_is_default_column_to_language_table', 1),
('2015_10_21_161130_add_ordering_column_to_categories', 1),
('2015_10_21_161329_add_show_home_page_column_to_contents_table', 1),
('2015_10_21_161354_create_settings_table', 1),
('2015_10_22_143725_add_thumb_images_to_contents_table', 1),
('2015_10_22_172157_add_image_to_category_table', 1),
('2015_10_23_090807_add_level_column_to_category_table', 2),
('2015_10_27_121119_add_deleted_at_column_to_category_table', 3),
('2015_10_27_130538_add_deleted_at_column_to_contents_table', 4),
('2015_10_27_130559_add_deleted_at_column_to_menus_table', 4),
('2015_10_27_130621_add_deleted_at_column_to_users_table', 4),
('2015_10_27_130652_add_deleted_at_column_to_slides_table', 4),
('2015_10_31_151353_add_language_column_to_settings_table', 5),
('2015_10_31_154803_add_column_company_information_to_settings_tables', 6);

-- --------------------------------------------------------

--
-- 테이블 구조 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_logo` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `company_name_kh` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_name_ch` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `copyright_kh` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `copyright_ch` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_information_kh` text COLLATE utf8_unicode_ci NOT NULL,
  `company_information_ch` text COLLATE utf8_unicode_ci NOT NULL,
  `company_information` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_created_by_foreign` (`created_by`),
  KEY `settings_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 테이블의 덤프 데이터 `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `copyright`, `company_logo`, `meta_keyword`, `meta_description`, `meta_title`, `meta_content`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `company_name_kh`, `company_name_ch`, `copyright_kh`, `copyright_ch`, `company_information_kh`, `company_information_ch`, `company_information`) VALUES
(1, 'Green Global Architecture Design & Construction Co., Ltd.', 'Copyright © 2015 GREEN ARCHITECTURE & DESIGN. All rights reserved.', 'http://green-architecture-design-darapenhchet.c9.io:80/source/green-logo.png', 'Green Global Architecture Design & Construction Co., Ltd.', 'Green Global Architecture Design & Construction Co., Ltd.', 'Green Global Architecture Design & Construction Co., Ltd.', 'Green Global Architecture Design & Construction Co., Ltd.', 1, 1, '1', '2015-10-22 18:04:20', '2015-10-31 17:15:25', 'ក្រុមហ៊ុន ហ្រ្គីន គ្លូប៊ល អាឃីធេកឈ័រ ឌីហ្សាញ & ខនស្រ្តាក់សិន.', 'ក្រុមហ៊ុន ហ្រ្គីន គ្លូប៊ល អាឃីធេកឈ័រ ឌីហ្សាញ & ខនស្រ្តាក់សិន.', 'រក្សាសិទ្ធិគ្រប់យ៉ាង © 2015 GREEN ARCHITECTURE & DESIGN. All rights reserved.', 'Copyright © 2015 GREEN ARCHITECTURE & DESIGN. All rights reserved.', '<p><em><span style="font-size: 12pt; color: #99cc00;"><strong>ក្រុមហ៊ុន ហ្រ្គីន គ្លូប៊ល អាឃីធេកឈ័រ ឌីហ្សាញ &amp; ខនស្រ្តាក់សិន.</strong></span></em>&nbsp;is a Cambodia base Company in Phnom Penh. Green branding have been in Phnom Penh since 2007.</p>\r\n<p>We provide Architectural and Interior Design with Consultancy, Construction with Renovation services for turnkey project for villa, condominium, apartment, hotel, lifestyle retail shop, cafe, ...</p>', '<p><em><span style="font-size: 12pt; color: #99cc00;"><strong>Green Global Architecture Design &amp; Construction Co., Ltd.</strong></span></em> is a Cambodia base Company in Phnom Penh. Green branding have been in Phnom Penh since 2007.</p>\r\n<p>We provide Architectural and Interior Design with Consultancy, Construction with Renovation services for turnkey project for villa, condominium, apartment, hotel, lifestyle retail shop, cafe, ...</p>', '<p><em><span style="font-size: 12pt; color: #99cc00;"><strong>Green Global Architecture Design &amp; Construction Co., Ltd.</strong></span></em> is a Cambodia base Company in Phnom Penh. Green branding have been in Phnom Penh since 2007.</p>\r\n<p>We provide Architectural and Interior Design with Consultancy, Construction with Renovation services for turnkey project for villa, condominium, apartment, hotel, lifestyle retail shop, cafe, ...</p>');

-- --------------------------------------------------------

--
-- 테이블 구조 `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `thumb_image` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_created_by_foreign` (`created_by`),
  KEY `sliders_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- 테이블의 덤프 데이터 `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `thumb_image`, `type`, `ordering`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Green Global Architecture Design & Construction Co., Ltd.', NULL, 'http://green-architecture-design-darapenhchet.c9.io:80/source/slide1.jpg', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide1.jpg', 'SLIDE SHOW', 1, 1, 1, '1', '2015-10-22 18:35:39', '2015-10-28 13:09:03', NULL),
(2, 'Green Global Architecture Design & Construction Co., Ltd.', NULL, 'http://green-architecture-design-darapenhchet.c9.io:80/source/slide2.jpg', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide2.jpg', 'SLIDE SHOW', 2, 1, 1, '1', '2015-10-22 18:35:54', '2015-10-28 13:08:41', NULL),
(3, 'Green Global Architecture Design & Construction Co., Ltd.', NULL, 'http://green-architecture-design-darapenhchet.c9.io:80/source/slide3.jpg', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide3.jpg', 'SLIDE SHOW', 3, 1, 1, '1', '2015-10-22 18:35:55', '2015-10-28 13:08:21', NULL),
(4, 'Green Global Architecture Design & Construction Co., Ltd.', NULL, 'http://green-architecture-design-darapenhchet.c9.io:80/source/sample_img.jpg', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/sample_img.jpg', 'SLIDE SHOW', 4, 1, 1, '1', '2015-10-22 19:28:27', '2015-10-28 13:08:02', NULL),
(5, 'Green Global Architecture Design & Construction Co., Ltd.', NULL, 'http://green-architecture-design-darapenhchet.c9.io:80/source/slide5.jpg', 'http://green-architecture-design-darapenhchet.c9.io:80/thumbs/slide5.jpg', 'SLIDE SHOW', 5, 1, 1, '1', '2015-10-22 19:28:48', '2015-10-28 13:07:19', NULL),
(6, 'Architural Design', NULL, 'http://green-architecture-design-darapenhchet.c9.io:80/images/source/webicon/architecture_services_icon.png', 'http://green-architecture-design-darapenhchet.c9.io:80/images/thumbs/webicon/architecture_services_icon.png', 'SERVICE SHOW', 1, 1, 1, '1', '2015-10-31 17:24:01', '2015-11-02 15:29:11', NULL),
(7, 'BLUFISH', NULL, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563ba900632fbclient_logo_4.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563ba900632fbclient_logo_4.jpg', 'CLIENT SHOW', 2, 1, 1, '1', '2015-10-31 17:33:02', '2015-11-05 19:07:44', NULL),
(8, 'CLIENT_06', NULL, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563e00ed8ccf6SPRING.png', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e00ed8ccf6SPRING.png', 'CLIENT SHOW', 6, 1, 1, '1', '2015-11-05 19:04:46', '2015-11-11 13:04:04', '2015-11-11 13:04:04'),
(9, 'SLIDE_006', NULL, 'http://green-architecture-design-darapenhchet.c9.io/images/source/563e00a114179slide2.jpg', 'http://green-architecture-design-darapenhchet.c9.io/images/thumbs/563e00a114179slide2.jpg', 'SLIDE SHOW', 6, 1, 1, '1', '2015-11-07 13:40:32', '2015-11-11 13:04:13', '2015-11-11 13:04:13');

-- --------------------------------------------------------

--
-- 테이블 구조 `slider_translations`
--

CREATE TABLE IF NOT EXISTS `slider_translations` (
  `slider_id` int(10) unsigned NOT NULL,
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`slider_id`,`language_id`),
  KEY `slider_translations_language_id_foreign` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 테이블의 덤프 데이터 `slider_translations`
--

INSERT INTO `slider_translations` (`slider_id`, `language_id`, `title`, `description`, `image`) VALUES
(5, 'ch', 'ក្រុមហ៊ុន ហ្រ្គីន គ្លូប៊ល អាឃីធេកឈ័រ ឌីហ្សាញ & ខនស្រ្តាក់សិន.', NULL, ''),
(5, 'kh', 'ក្រុមហ៊ុន ហ្រ្គីន គ្លូប៊ល អាឃីធេកឈ័រ ឌីហ្សាញ & ខនស្រ្តាក់សិន.', NULL, '');

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user.png',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 테이블의 덤프 데이터 `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `email`, `password`, `is_admin`, `status`, `photo`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GREEN', 'DESIGN', 'administrator@gmail.com', '$2a$10$dC24njswKRDGIb2bxctMoOum9kgYPIbuW3A04PrXAvUYvmLVCr4U2', 1, '1', 'user.png', 't6U1xwMkKTA23zmlAszI31M2iQrq7Q7tkaVAflhykm6oXVSFew1x12NNmdXf', '2015-10-22 18:04:18', '2015-11-15 02:52:34', NULL),
(2, 'user', 'user', 'user@gmail.com', '$2y$10$J7am0Mjnvy.2P0ryGFVp5.JulN4AGtX5ivjGuOsUq6hNScaP/pcGS', 0, '1', 'user.png', 'rDnRR1prknXbrupQm6Zkcughf1izVSY3d9y89qvjclvzDUcUsvpwNDxZUNyg', '2015-10-22 18:04:18', '2015-10-29 08:12:00', NULL),
(3, 'Green', 'Design', 'greendesign@gmail.com', '$2y$10$E.dZ/j7b2RNNRkIRsj9zEODrhABNyCZRbnKvwyf48Av.Hb58R01pW', 0, '1', 'user.png', 'ruw2rzIZZ5iLNVAujswEGYlvy4qUclEuNVSMcFjBh6i2jKx9wZL0Rb0vhyt2', '2015-10-23 11:35:26', '2015-10-29 08:11:46', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `contents_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contents_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `content_translations`
--
ALTER TABLE `content_translations`
  ADD CONSTRAINT `content_translations_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  ADD CONSTRAINT `content_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `languages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `menus_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sliders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
