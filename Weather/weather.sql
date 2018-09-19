-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Eyl 2018, 15:21:19
-- Sunucu sürümü: 10.1.34-MariaDB
-- PHP Sürümü: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `weather`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_id` int(10) NOT NULL,
  `city_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cities`
--

INSERT INTO `cities` (`id`, `city_id`, `city_name`, `created_at`) VALUES
(1, 745044, 'Istanbul', '2018-09-18 18:07:45'),
(2, 750268, 'Bursa', '2018-09-18 18:08:00'),
(3, 323786, 'Ankara', '2018-09-18 18:08:25'),
(4, 311046, 'Izmir', '2018-09-18 18:09:35'),
(5, 323777, 'Antalya', '2018-09-18 18:09:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `forecasts`
--

CREATE TABLE `forecasts` (
  `forecast_id` int(11) NOT NULL,
  `control_id` int(100) NOT NULL,
  `city_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `date_raw` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tempk` int(10) NOT NULL,
  `wind_knot` int(10) NOT NULL,
  `humidity` int(10) NOT NULL,
  `f_condition` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `forecasts`
--

INSERT INTO `forecasts` (`forecast_id`, `control_id`, `city_name`, `date_raw`, `tempk`, `wind_knot`, `humidity`, `f_condition`, `updated_at`) VALUES
(301, 0, 'Istanbul', '2018-09-19 12:00:00', 297, 9, 85, 'clear sky', '2018-09-19 13:16:49'),
(302, 1, 'Istanbul', '2018-09-19 15:00:00', 296, 9, 89, 'clear sky', '2018-09-19 12:43:49'),
(303, 2, 'Istanbul', '2018-09-19 18:00:00', 295, 8, 90, 'clear sky', '2018-09-19 12:43:49'),
(304, 3, 'Istanbul', '2018-09-19 21:00:00', 294, 7, 91, 'clear sky', '2018-09-19 12:43:49'),
(305, 4, 'Istanbul', '2018-09-20 00:00:00', 294, 7, 91, 'clear sky', '2018-09-19 12:43:49'),
(306, 5, 'Istanbul', '2018-09-20 03:00:00', 294, 6, 90, 'clear sky', '2018-09-19 12:43:49'),
(307, 6, 'Istanbul', '2018-09-20 06:00:00', 295, 6, 84, 'clear sky', '2018-09-19 12:43:49'),
(308, 7, 'Istanbul', '2018-09-20 09:00:00', 296, 7, 83, 'clear sky', '2018-09-19 12:43:49'),
(309, 8, 'Istanbul', '2018-09-20 12:00:00', 296, 8, 84, 'clear sky', '2018-09-19 12:43:49'),
(310, 9, 'Istanbul', '2018-09-20 15:00:00', 295, 7, 88, 'clear sky', '2018-09-19 12:43:50'),
(311, 10, 'Istanbul', '2018-09-20 18:00:00', 294, 6, 90, 'clear sky', '2018-09-19 12:43:50'),
(312, 11, 'Istanbul', '2018-09-20 21:00:00', 294, 5, 91, 'broken clouds', '2018-09-19 12:43:50'),
(313, 12, 'Istanbul', '2018-09-21 00:00:00', 294, 4, 92, 'overcast clouds', '2018-09-19 12:43:50'),
(314, 13, 'Istanbul', '2018-09-21 03:00:00', 294, 3, 91, 'light rain', '2018-09-19 12:43:50'),
(315, 14, 'Istanbul', '2018-09-21 06:00:00', 294, 3, 89, 'light rain', '2018-09-19 12:43:50'),
(316, 15, 'Istanbul', '2018-09-21 09:00:00', 296, 4, 84, 'clear sky', '2018-09-19 12:43:50'),
(317, 16, 'Istanbul', '2018-09-21 12:00:00', 296, 7, 84, 'clear sky', '2018-09-19 12:43:50'),
(318, 17, 'Istanbul', '2018-09-21 15:00:00', 295, 7, 87, 'clear sky', '2018-09-19 12:43:50'),
(319, 18, 'Istanbul', '2018-09-21 18:00:00', 294, 6, 91, 'clear sky', '2018-09-19 12:43:50'),
(320, 19, 'Istanbul', '2018-09-21 21:00:00', 293, 4, 94, 'scattered clouds', '2018-09-19 12:43:50'),
(321, 20, 'Istanbul', '2018-09-22 00:00:00', 293, 3, 94, 'clear sky', '2018-09-19 12:43:50'),
(322, 21, 'Istanbul', '2018-09-22 03:00:00', 293, 2, 95, 'clear sky', '2018-09-19 12:43:50'),
(323, 22, 'Istanbul', '2018-09-22 06:00:00', 294, 0, 93, 'clear sky', '2018-09-19 12:43:50'),
(324, 23, 'Istanbul', '2018-09-22 09:00:00', 295, 1, 91, 'clear sky', '2018-09-19 12:43:50'),
(325, 24, 'Istanbul', '2018-09-22 12:00:00', 295, 1, 91, 'clear sky', '2018-09-19 12:43:50'),
(326, 25, 'Istanbul', '2018-09-22 15:00:00', 295, 3, 92, 'clear sky', '2018-09-19 12:43:50'),
(327, 26, 'Istanbul', '2018-09-22 18:00:00', 294, 2, 94, 'clear sky', '2018-09-19 12:43:50'),
(328, 27, 'Istanbul', '2018-09-22 21:00:00', 293, 1, 96, 'clear sky', '2018-09-19 12:43:50'),
(329, 28, 'Istanbul', '2018-09-23 00:00:00', 293, 2, 97, 'clear sky', '2018-09-19 12:43:51'),
(330, 29, 'Istanbul', '2018-09-23 03:00:00', 293, 3, 98, 'clear sky', '2018-09-19 12:43:51'),
(331, 30, 'Istanbul', '2018-09-23 06:00:00', 294, 2, 94, 'clear sky', '2018-09-19 12:43:51'),
(332, 31, 'Istanbul', '2018-09-23 09:00:00', 295, 1, 93, 'few clouds', '2018-09-19 12:43:51'),
(333, 32, 'Istanbul', '2018-09-23 12:00:00', 296, 6, 87, 'few clouds', '2018-09-19 12:43:51'),
(334, 33, 'Istanbul', '2018-09-23 15:00:00', 295, 8, 92, 'overcast clouds', '2018-09-19 12:43:51'),
(335, 34, 'Istanbul', '2018-09-23 18:00:00', 294, 7, 95, 'broken clouds', '2018-09-19 12:43:51'),
(336, 35, 'Istanbul', '2018-09-23 21:00:00', 293, 8, 98, 'light rain', '2018-09-19 12:43:51'),
(337, 36, 'Istanbul', '2018-09-24 00:00:00', 292, 8, 99, 'light rain', '2018-09-19 12:43:51'),
(338, 37, 'Istanbul', '2018-09-24 03:00:00', 292, 8, 100, 'light rain', '2018-09-19 12:43:51'),
(339, 38, 'Istanbul', '2018-09-24 06:00:00', 293, 8, 96, 'light rain', '2018-09-19 12:43:51'),
(340, 39, 'Istanbul', '2018-09-24 09:00:00', 294, 6, 89, 'clear sky', '2018-09-19 12:43:51'),
(341, 0, 'Bursa', '2018-09-19 12:00:00', 298, 4, 61, 'clear sky', '2018-09-19 12:44:06'),
(342, 1, 'Bursa', '2018-09-19 15:00:00', 295, 3, 70, 'clear sky', '2018-09-19 12:44:06'),
(343, 2, 'Bursa', '2018-09-19 18:00:00', 290, 2, 86, 'clear sky', '2018-09-19 12:44:06'),
(344, 3, 'Bursa', '2018-09-19 21:00:00', 287, 2, 96, 'clear sky', '2018-09-19 12:44:06'),
(345, 4, 'Bursa', '2018-09-20 00:00:00', 286, 2, 99, 'clear sky', '2018-09-19 12:44:06'),
(346, 5, 'Bursa', '2018-09-20 03:00:00', 291, 1, 78, 'clear sky', '2018-09-19 12:44:06'),
(347, 6, 'Bursa', '2018-09-20 06:00:00', 297, 2, 59, 'clear sky', '2018-09-19 12:44:06'),
(348, 7, 'Bursa', '2018-09-20 09:00:00', 298, 3, 56, 'clear sky', '2018-09-19 12:44:06'),
(349, 8, 'Bursa', '2018-09-20 12:00:00', 297, 3, 60, 'clear sky', '2018-09-19 12:44:07'),
(350, 9, 'Bursa', '2018-09-20 15:00:00', 292, 2, 81, 'clear sky', '2018-09-19 12:44:07'),
(351, 10, 'Bursa', '2018-09-20 18:00:00', 288, 2, 98, 'clear sky', '2018-09-19 12:44:07'),
(352, 11, 'Bursa', '2018-09-20 21:00:00', 286, 1, 100, 'clear sky', '2018-09-19 12:44:07'),
(353, 12, 'Bursa', '2018-09-21 00:00:00', 284, 1, 100, 'clear sky', '2018-09-19 12:44:07'),
(354, 13, 'Bursa', '2018-09-21 03:00:00', 291, 2, 84, 'clear sky', '2018-09-19 12:44:07'),
(355, 14, 'Bursa', '2018-09-21 06:00:00', 296, 2, 63, 'clear sky', '2018-09-19 12:44:07'),
(356, 15, 'Bursa', '2018-09-21 09:00:00', 298, 3, 59, 'clear sky', '2018-09-19 12:44:07'),
(357, 16, 'Bursa', '2018-09-21 12:00:00', 296, 2, 63, 'clear sky', '2018-09-19 12:44:07'),
(358, 17, 'Bursa', '2018-09-21 15:00:00', 290, 1, 96, 'clear sky', '2018-09-19 12:44:07'),
(359, 18, 'Bursa', '2018-09-21 18:00:00', 287, 1, 100, 'few clouds', '2018-09-19 12:44:07'),
(360, 19, 'Bursa', '2018-09-21 21:00:00', 287, 1, 100, 'scattered clouds', '2018-09-19 12:44:07'),
(361, 20, 'Bursa', '2018-09-22 00:00:00', 285, 0, 100, 'clear sky', '2018-09-19 12:44:07'),
(362, 21, 'Bursa', '2018-09-22 03:00:00', 291, 1, 94, 'few clouds', '2018-09-19 12:44:07'),
(363, 22, 'Bursa', '2018-09-22 06:00:00', 296, 1, 69, 'clear sky', '2018-09-19 12:44:07'),
(364, 23, 'Bursa', '2018-09-22 09:00:00', 298, 2, 62, 'clear sky', '2018-09-19 12:44:07'),
(365, 24, 'Bursa', '2018-09-22 12:00:00', 296, 1, 61, 'clear sky', '2018-09-19 12:44:07'),
(366, 25, 'Bursa', '2018-09-22 15:00:00', 289, 1, 98, 'clear sky', '2018-09-19 12:44:07'),
(367, 26, 'Bursa', '2018-09-22 18:00:00', 286, 0, 100, 'clear sky', '2018-09-19 12:44:07'),
(368, 27, 'Bursa', '2018-09-22 21:00:00', 285, 1, 98, 'clear sky', '2018-09-19 12:44:07'),
(369, 28, 'Bursa', '2018-09-23 00:00:00', 284, 1, 98, 'clear sky', '2018-09-19 12:44:08'),
(370, 29, 'Bursa', '2018-09-23 03:00:00', 292, 1, 78, 'few clouds', '2018-09-19 12:44:08'),
(371, 30, 'Bursa', '2018-09-23 06:00:00', 298, 1, 54, 'scattered clouds', '2018-09-19 12:44:08'),
(372, 31, 'Bursa', '2018-09-23 09:00:00', 299, 2, 49, 'clear sky', '2018-09-19 12:44:08'),
(373, 32, 'Bursa', '2018-09-23 12:00:00', 297, 2, 56, 'few clouds', '2018-09-19 12:44:08'),
(374, 33, 'Bursa', '2018-09-23 15:00:00', 292, 3, 87, 'scattered clouds', '2018-09-19 12:44:08'),
(375, 34, 'Bursa', '2018-09-23 18:00:00', 289, 2, 97, 'broken clouds', '2018-09-19 12:44:08'),
(376, 35, 'Bursa', '2018-09-23 21:00:00', 290, 2, 98, 'light rain', '2018-09-19 12:44:08'),
(377, 36, 'Bursa', '2018-09-24 00:00:00', 291, 2, 100, 'light rain', '2018-09-19 12:44:08'),
(378, 37, 'Bursa', '2018-09-24 03:00:00', 291, 2, 98, 'light rain', '2018-09-19 12:44:08'),
(379, 38, 'Bursa', '2018-09-24 06:00:00', 295, 2, 80, 'light rain', '2018-09-19 12:44:08'),
(380, 39, 'Bursa', '2018-09-24 09:00:00', 297, 2, 66, 'clear sky', '2018-09-19 12:44:08'),
(381, 0, 'Ankara', '2018-09-19 12:00:00', 295, 3, 25, 'clear sky', '2018-09-19 12:44:11'),
(382, 1, 'Ankara', '2018-09-19 15:00:00', 286, 3, 47, 'clear sky', '2018-09-19 12:44:11'),
(383, 2, 'Ankara', '2018-09-19 18:00:00', 281, 2, 70, 'clear sky', '2018-09-19 12:44:11'),
(384, 3, 'Ankara', '2018-09-19 21:00:00', 277, 1, 80, 'clear sky', '2018-09-19 12:44:12'),
(385, 4, 'Ankara', '2018-09-20 00:00:00', 275, 1, 78, 'clear sky', '2018-09-19 12:44:12'),
(386, 5, 'Ankara', '2018-09-20 03:00:00', 287, 2, 42, 'clear sky', '2018-09-19 12:44:12'),
(387, 6, 'Ankara', '2018-09-20 06:00:00', 295, 2, 29, 'clear sky', '2018-09-19 12:44:12'),
(388, 7, 'Ankara', '2018-09-20 09:00:00', 297, 2, 26, 'clear sky', '2018-09-19 12:44:12'),
(389, 8, 'Ankara', '2018-09-20 12:00:00', 295, 1, 27, 'clear sky', '2018-09-19 12:44:12'),
(390, 9, 'Ankara', '2018-09-20 15:00:00', 284, 1, 72, 'scattered clouds', '2018-09-19 12:44:12'),
(391, 10, 'Ankara', '2018-09-20 18:00:00', 280, 1, 77, 'few clouds', '2018-09-19 12:44:12'),
(392, 11, 'Ankara', '2018-09-20 21:00:00', 279, 1, 77, 'scattered clouds', '2018-09-19 12:44:12'),
(393, 12, 'Ankara', '2018-09-21 00:00:00', 278, 1, 81, 'scattered clouds', '2018-09-19 12:44:12'),
(394, 13, 'Ankara', '2018-09-21 03:00:00', 287, 2, 44, 'scattered clouds', '2018-09-19 12:44:12'),
(395, 14, 'Ankara', '2018-09-21 06:00:00', 296, 2, 30, 'scattered clouds', '2018-09-19 12:44:12'),
(396, 15, 'Ankara', '2018-09-21 09:00:00', 298, 1, 23, 'scattered clouds', '2018-09-19 12:44:12'),
(397, 16, 'Ankara', '2018-09-21 12:00:00', 296, 1, 25, 'few clouds', '2018-09-19 12:44:12'),
(398, 17, 'Ankara', '2018-09-21 15:00:00', 285, 1, 74, 'clear sky', '2018-09-19 12:44:13'),
(399, 18, 'Ankara', '2018-09-21 18:00:00', 281, 1, 78, 'clear sky', '2018-09-19 12:44:13'),
(400, 19, 'Ankara', '2018-09-21 21:00:00', 279, 1, 80, 'clear sky', '2018-09-19 12:44:13'),
(401, 20, 'Ankara', '2018-09-22 00:00:00', 278, 1, 78, 'clear sky', '2018-09-19 12:44:13'),
(402, 21, 'Ankara', '2018-09-22 03:00:00', 290, 2, 47, 'clear sky', '2018-09-19 12:44:13'),
(403, 22, 'Ankara', '2018-09-22 06:00:00', 298, 2, 28, 'few clouds', '2018-09-19 12:44:13'),
(404, 23, 'Ankara', '2018-09-22 09:00:00', 299, 3, 26, 'clear sky', '2018-09-19 12:44:13'),
(405, 24, 'Ankara', '2018-09-22 12:00:00', 297, 2, 27, 'clear sky', '2018-09-19 12:44:13'),
(406, 25, 'Ankara', '2018-09-22 15:00:00', 286, 1, 70, 'clear sky', '2018-09-19 12:44:13'),
(407, 26, 'Ankara', '2018-09-22 18:00:00', 283, 1, 75, 'few clouds', '2018-09-19 12:44:13'),
(408, 27, 'Ankara', '2018-09-22 21:00:00', 281, 1, 75, 'clear sky', '2018-09-19 12:44:13'),
(409, 28, 'Ankara', '2018-09-23 00:00:00', 280, 1, 82, 'clear sky', '2018-09-19 12:44:13'),
(410, 29, 'Ankara', '2018-09-23 03:00:00', 291, 1, 41, 'clear sky', '2018-09-19 12:44:13'),
(411, 30, 'Ankara', '2018-09-23 06:00:00', 299, 2, 30, 'clear sky', '2018-09-19 12:44:13'),
(412, 31, 'Ankara', '2018-09-23 09:00:00', 300, 4, 22, 'clear sky', '2018-09-19 12:44:14'),
(413, 32, 'Ankara', '2018-09-23 12:00:00', 296, 3, 22, 'few clouds', '2018-09-19 12:44:14'),
(414, 33, 'Ankara', '2018-09-23 15:00:00', 287, 1, 57, 'clear sky', '2018-09-19 12:44:14'),
(415, 34, 'Ankara', '2018-09-23 18:00:00', 281, 1, 82, 'clear sky', '2018-09-19 12:44:14'),
(416, 35, 'Ankara', '2018-09-23 21:00:00', 280, 1, 85, 'scattered clouds', '2018-09-19 12:44:14'),
(417, 36, 'Ankara', '2018-09-24 00:00:00', 278, 1, 84, 'clear sky', '2018-09-19 12:44:14'),
(418, 37, 'Ankara', '2018-09-24 03:00:00', 289, 2, 62, 'clear sky', '2018-09-19 12:44:14'),
(419, 38, 'Ankara', '2018-09-24 06:00:00', 296, 1, 40, 'clear sky', '2018-09-19 12:44:14'),
(420, 39, 'Ankara', '2018-09-24 09:00:00', 298, 2, 34, 'clear sky', '2018-09-19 12:44:14'),
(421, 0, 'Izmir', '2018-09-19 12:00:00', 302, 4, 38, 'few clouds', '2018-09-19 12:44:17'),
(422, 1, 'Izmir', '2018-09-19 15:00:00', 298, 4, 50, 'scattered clouds', '2018-09-19 12:44:17'),
(423, 2, 'Izmir', '2018-09-19 18:00:00', 293, 2, 78, 'clear sky', '2018-09-19 12:44:17'),
(424, 3, 'Izmir', '2018-09-19 21:00:00', 289, 2, 90, 'clear sky', '2018-09-19 12:44:17'),
(425, 4, 'Izmir', '2018-09-20 00:00:00', 287, 2, 93, 'clear sky', '2018-09-19 12:44:17'),
(426, 5, 'Izmir', '2018-09-20 03:00:00', 293, 2, 76, 'clear sky', '2018-09-19 12:44:17'),
(427, 6, 'Izmir', '2018-09-20 06:00:00', 300, 2, 49, 'clear sky', '2018-09-19 12:44:18'),
(428, 7, 'Izmir', '2018-09-20 09:00:00', 304, 2, 39, 'clear sky', '2018-09-19 12:44:18'),
(429, 8, 'Izmir', '2018-09-20 12:00:00', 303, 3, 36, 'clear sky', '2018-09-19 12:44:18'),
(430, 9, 'Izmir', '2018-09-20 15:00:00', 297, 3, 51, 'clear sky', '2018-09-19 12:44:18'),
(431, 10, 'Izmir', '2018-09-20 18:00:00', 291, 2, 82, 'clear sky', '2018-09-19 12:44:18'),
(432, 11, 'Izmir', '2018-09-20 21:00:00', 288, 2, 92, 'clear sky', '2018-09-19 12:44:18'),
(433, 12, 'Izmir', '2018-09-21 00:00:00', 286, 2, 96, 'clear sky', '2018-09-19 12:44:18'),
(434, 13, 'Izmir', '2018-09-21 03:00:00', 292, 2, 83, 'clear sky', '2018-09-19 12:44:18'),
(435, 14, 'Izmir', '2018-09-21 06:00:00', 299, 2, 53, 'clear sky', '2018-09-19 12:44:18'),
(436, 15, 'Izmir', '2018-09-21 09:00:00', 303, 2, 42, 'clear sky', '2018-09-19 12:44:18'),
(437, 16, 'Izmir', '2018-09-21 12:00:00', 302, 2, 40, 'clear sky', '2018-09-19 12:44:18'),
(438, 17, 'Izmir', '2018-09-21 15:00:00', 294, 2, 69, 'few clouds', '2018-09-19 12:44:18'),
(439, 18, 'Izmir', '2018-09-21 18:00:00', 291, 2, 83, 'few clouds', '2018-09-19 12:44:18'),
(440, 19, 'Izmir', '2018-09-21 21:00:00', 288, 1, 90, 'clear sky', '2018-09-19 12:44:18'),
(441, 20, 'Izmir', '2018-09-22 00:00:00', 286, 2, 95, 'clear sky', '2018-09-19 12:44:19'),
(442, 21, 'Izmir', '2018-09-22 03:00:00', 292, 2, 81, 'clear sky', '2018-09-19 12:44:19'),
(443, 22, 'Izmir', '2018-09-22 06:00:00', 300, 2, 51, 'clear sky', '2018-09-19 12:44:19'),
(444, 23, 'Izmir', '2018-09-22 09:00:00', 302, 2, 44, 'clear sky', '2018-09-19 12:44:19'),
(445, 24, 'Izmir', '2018-09-22 12:00:00', 300, 2, 44, 'clear sky', '2018-09-19 12:44:19'),
(446, 25, 'Izmir', '2018-09-22 15:00:00', 292, 1, 87, 'few clouds', '2018-09-19 12:44:19'),
(447, 26, 'Izmir', '2018-09-22 18:00:00', 288, 1, 93, 'few clouds', '2018-09-19 12:44:19'),
(448, 27, 'Izmir', '2018-09-22 21:00:00', 287, 1, 95, 'clear sky', '2018-09-19 12:44:19'),
(449, 28, 'Izmir', '2018-09-23 00:00:00', 286, 1, 95, 'few clouds', '2018-09-19 12:44:19'),
(450, 29, 'Izmir', '2018-09-23 03:00:00', 292, 1, 98, 'clear sky', '2018-09-19 12:44:19'),
(451, 30, 'Izmir', '2018-09-23 06:00:00', 301, 2, 50, 'clear sky', '2018-09-19 12:44:19'),
(452, 31, 'Izmir', '2018-09-23 09:00:00', 303, 2, 41, 'clear sky', '2018-09-19 12:44:19'),
(453, 32, 'Izmir', '2018-09-23 12:00:00', 301, 3, 40, 'clear sky', '2018-09-19 12:44:19'),
(454, 33, 'Izmir', '2018-09-23 15:00:00', 292, 1, 83, 'few clouds', '2018-09-19 12:44:20'),
(455, 34, 'Izmir', '2018-09-23 18:00:00', 289, 1, 92, 'clear sky', '2018-09-19 12:44:20'),
(456, 35, 'Izmir', '2018-09-23 21:00:00', 288, 1, 91, 'clear sky', '2018-09-19 12:44:20'),
(457, 36, 'Izmir', '2018-09-24 00:00:00', 287, 1, 93, 'clear sky', '2018-09-19 12:44:20'),
(458, 37, 'Izmir', '2018-09-24 03:00:00', 293, 2, 78, 'clear sky', '2018-09-19 12:44:20'),
(459, 38, 'Izmir', '2018-09-24 06:00:00', 301, 2, 48, 'clear sky', '2018-09-19 12:44:20'),
(460, 39, 'Izmir', '2018-09-24 09:00:00', 303, 2, 41, 'clear sky', '2018-09-19 12:44:20'),
(461, 0, 'Antalya', '2018-09-19 12:00:00', 306, 1, 23, 'clear sky', '2018-09-19 12:44:23'),
(462, 1, 'Antalya', '2018-09-19 15:00:00', 293, 1, 75, 'clear sky', '2018-09-19 12:44:23'),
(463, 2, 'Antalya', '2018-09-19 18:00:00', 288, 1, 87, 'clear sky', '2018-09-19 12:44:23'),
(464, 3, 'Antalya', '2018-09-19 21:00:00', 285, 1, 87, 'clear sky', '2018-09-19 12:44:23'),
(465, 4, 'Antalya', '2018-09-20 00:00:00', 285, 1, 87, 'few clouds', '2018-09-19 12:44:23'),
(466, 5, 'Antalya', '2018-09-20 03:00:00', 295, 1, 47, 'clear sky', '2018-09-19 12:44:23'),
(467, 6, 'Antalya', '2018-09-20 06:00:00', 303, 1, 29, 'clear sky', '2018-09-19 12:44:24'),
(468, 7, 'Antalya', '2018-09-20 09:00:00', 304, 2, 26, 'few clouds', '2018-09-19 12:44:24'),
(469, 8, 'Antalya', '2018-09-20 12:00:00', 300, 2, 32, 'few clouds', '2018-09-19 12:44:24'),
(470, 9, 'Antalya', '2018-09-20 15:00:00', 290, 0, 80, 'clear sky', '2018-09-19 12:44:24'),
(471, 10, 'Antalya', '2018-09-20 18:00:00', 288, 2, 79, 'clear sky', '2018-09-19 12:44:24'),
(472, 11, 'Antalya', '2018-09-20 21:00:00', 286, 2, 91, 'clear sky', '2018-09-19 12:44:24'),
(473, 12, 'Antalya', '2018-09-21 00:00:00', 285, 1, 92, 'clear sky', '2018-09-19 12:44:24'),
(474, 13, 'Antalya', '2018-09-21 03:00:00', 294, 1, 53, 'clear sky', '2018-09-19 12:44:24'),
(475, 14, 'Antalya', '2018-09-21 06:00:00', 302, 1, 31, 'clear sky', '2018-09-19 12:44:24'),
(476, 15, 'Antalya', '2018-09-21 09:00:00', 302, 1, 29, 'clear sky', '2018-09-19 12:44:24'),
(477, 16, 'Antalya', '2018-09-21 12:00:00', 301, 1, 31, 'few clouds', '2018-09-19 12:44:24'),
(478, 17, 'Antalya', '2018-09-21 15:00:00', 291, 1, 83, 'clear sky', '2018-09-19 12:44:24'),
(479, 18, 'Antalya', '2018-09-21 18:00:00', 287, 1, 89, 'clear sky', '2018-09-19 12:44:24'),
(480, 19, 'Antalya', '2018-09-21 21:00:00', 286, 1, 85, 'clear sky', '2018-09-19 12:44:24'),
(481, 20, 'Antalya', '2018-09-22 00:00:00', 286, 2, 78, 'clear sky', '2018-09-19 12:44:25'),
(482, 21, 'Antalya', '2018-09-22 03:00:00', 295, 1, 49, 'clear sky', '2018-09-19 12:44:25'),
(483, 22, 'Antalya', '2018-09-22 06:00:00', 303, 1, 30, 'clear sky', '2018-09-19 12:44:25'),
(484, 23, 'Antalya', '2018-09-22 09:00:00', 304, 1, 26, 'clear sky', '2018-09-19 12:44:25'),
(485, 24, 'Antalya', '2018-09-22 12:00:00', 301, 1, 32, 'clear sky', '2018-09-19 12:44:25'),
(486, 25, 'Antalya', '2018-09-22 15:00:00', 291, 1, 83, 'clear sky', '2018-09-19 12:44:25'),
(487, 26, 'Antalya', '2018-09-22 18:00:00', 287, 0, 90, 'clear sky', '2018-09-19 12:44:25'),
(488, 27, 'Antalya', '2018-09-22 21:00:00', 285, 1, 88, 'clear sky', '2018-09-19 12:44:25'),
(489, 28, 'Antalya', '2018-09-23 00:00:00', 285, 2, 88, 'clear sky', '2018-09-19 12:44:25'),
(490, 29, 'Antalya', '2018-09-23 03:00:00', 294, 1, 48, 'clear sky', '2018-09-19 12:44:25'),
(491, 30, 'Antalya', '2018-09-23 06:00:00', 302, 1, 31, 'clear sky', '2018-09-19 12:44:25'),
(492, 31, 'Antalya', '2018-09-23 09:00:00', 303, 3, 32, 'clear sky', '2018-09-19 12:44:25'),
(493, 32, 'Antalya', '2018-09-23 12:00:00', 300, 1, 34, 'clear sky', '2018-09-19 12:44:25'),
(494, 33, 'Antalya', '2018-09-23 15:00:00', 290, 1, 86, 'clear sky', '2018-09-19 12:44:26'),
(495, 34, 'Antalya', '2018-09-23 18:00:00', 286, 1, 88, 'clear sky', '2018-09-19 12:44:26'),
(496, 35, 'Antalya', '2018-09-23 21:00:00', 285, 1, 87, 'clear sky', '2018-09-19 12:44:26'),
(497, 36, 'Antalya', '2018-09-24 00:00:00', 284, 1, 86, 'clear sky', '2018-09-19 12:44:26'),
(498, 37, 'Antalya', '2018-09-24 03:00:00', 295, 1, 47, 'clear sky', '2018-09-19 12:44:26'),
(499, 38, 'Antalya', '2018-09-24 06:00:00', 303, 1, 26, 'clear sky', '2018-09-19 12:44:26'),
(500, 39, 'Antalya', '2018-09-24 09:00:00', 304, 2, 27, 'clear sky', '2018-09-19 12:44:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `period`
--

CREATE TABLE `period` (
  `id` int(11) NOT NULL,
  `period_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `period_length` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `period`
--

INSERT INTO `period` (`id`, `period_name`, `period_length`, `created_at`) VALUES
(1, 'Anlık', 1, '2018-09-19 07:59:04'),
(2, 'Bir Günlük', 8, '2018-09-19 07:59:13'),
(3, 'Üç Günlük', 24, '2018-09-19 07:59:22'),
(4, 'Beş Günlük', 40, '2018-09-19 07:59:30');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `forecasts`
--
ALTER TABLE `forecasts`
  ADD PRIMARY KEY (`forecast_id`);

--
-- Tablo için indeksler `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `forecasts`
--
ALTER TABLE `forecasts`
  MODIFY `forecast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- Tablo için AUTO_INCREMENT değeri `period`
--
ALTER TABLE `period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;