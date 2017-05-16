-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2016 a las 17:36:49
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `permiso` int(1) NOT NULL DEFAULT '0',
  `id_users` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `edad`, `permiso`, `id_users`, `created_at`, `updated_at`) VALUES
(1, 'Jerry', 'Johnnie', 27, 0, 1, '2016-11-22 15:16:36', '2016-11-22 15:16:36'),
(2, 'Gino', 'Moshe', 19, 0, 2, '2016-11-22 15:16:36', '2016-11-22 15:16:36'),
(3, 'Lance', 'Harvey', 25, 0, 3, '2016-11-22 15:16:36', '2016-11-22 15:16:36'),
(4, 'Ben', 'Gustave', 15, 0, 4, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(5, 'Kenny', 'Nils', 22, 0, 5, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(6, 'Arvel', 'Russel', 36, 0, 6, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(7, 'Toy', 'Allen', 21, 0, 7, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(8, 'Dane', 'Gregory', 16, 0, 8, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(9, 'Corbin', 'Ryley', 34, 0, 9, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(10, 'Devonte', 'Alfonso', 38, 0, 10, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(11, 'Gene', 'Doris', 24, 0, 11, '2016-11-22 15:16:37', '2016-11-22 15:16:37'),
(12, 'Russ', 'Brando', 27, 0, 12, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(13, 'Jaylan', 'Harry', 38, 0, 13, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(14, 'Alek', 'Keeley', 23, 0, 14, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(15, 'Jairo', 'Noe', 20, 0, 15, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(16, 'Bennett', 'Payton', 30, 0, 16, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(17, 'Max', 'Carleton', 39, 0, 17, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(18, 'Franz', 'Malcolm', 28, 0, 18, '2016-11-22 15:16:38', '2016-11-22 15:16:38'),
(19, 'Toby', 'Mario', 40, 0, 19, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(20, 'Curtis', 'Percy', 16, 0, 20, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(21, 'Cicero', 'Henri', 30, 0, 21, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(22, 'Irving', 'Marcos', 27, 0, 22, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(23, 'Eliseo', 'Donnell', 36, 0, 23, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(24, 'Jerald', 'Amani', 18, 0, 24, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(25, 'Jack', 'Khalil', 18, 0, 25, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(26, 'Amani', 'Oda', 23, 0, 26, '2016-11-22 15:16:39', '2016-11-22 15:16:39'),
(27, 'Dangelo', 'Nick', 18, 0, 27, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(28, 'Cornelius', 'Zech', 26, 0, 28, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(29, 'Willy', 'Gregg', 26, 0, 29, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(30, 'Casey', 'Willard', 34, 0, 30, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(31, 'Isac', 'Pierre', 15, 0, 31, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(32, 'Dewayne', 'Orlo', 16, 0, 32, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(33, 'Adrian', 'Timothy', 36, 0, 33, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(34, 'Nick', 'Marcel', 32, 0, 34, '2016-11-22 15:16:40', '2016-11-22 15:16:40'),
(35, 'Noah', 'Wilburn', 22, 0, 35, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(36, 'Ed', 'Trenton', 17, 0, 36, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(37, 'Stefan', 'Jon', 24, 0, 37, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(38, 'Favian', 'Stephon', 38, 0, 38, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(39, 'Russel', 'Sigmund', 34, 0, 39, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(40, 'Giovanni', 'Jess', 35, 0, 40, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(41, 'Dee', 'Madyson', 31, 0, 41, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(42, 'Gene', 'Ronaldo', 19, 0, 42, '2016-11-22 15:16:41', '2016-11-22 15:16:41'),
(43, 'Stevie', 'Bart', 16, 0, 43, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(44, 'Zakary', 'Jarrod', 17, 0, 44, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(45, 'Raymond', 'Trenton', 40, 0, 45, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(46, 'Isom', 'Torrance', 37, 0, 46, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(47, 'Cordelia', 'Jayde', 23, 0, 47, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(48, 'Joel', 'Reynold', 16, 0, 48, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(49, 'Consuelo', 'Adolph', 30, 0, 49, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(50, 'Mateo', 'Hobart', 32, 0, 50, '2016-11-22 15:16:42', '2016-11-22 15:16:42'),
(51, 'Gregory', 'Jeffrey', 33, 0, 51, '2016-11-25 00:53:35', '2016-11-25 00:53:35'),
(52, 'Davion', 'Garth', 18, 0, 52, '2016-11-25 00:53:35', '2016-11-25 00:53:35'),
(53, 'Gillian', 'Fidel', 20, 0, 53, '2016-11-25 00:53:35', '2016-11-25 00:53:35'),
(54, 'Shawn', 'Narciso', 25, 0, 54, '2016-11-25 00:53:35', '2016-11-25 00:53:35'),
(55, 'Barrett', 'Tobin', 36, 0, 55, '2016-11-25 00:53:35', '2016-11-25 00:53:35'),
(56, 'Reece', 'Joan', 21, 0, 56, '2016-11-25 00:53:35', '2016-11-25 00:53:35'),
(57, 'Axel', 'Cooper', 19, 0, 57, '2016-11-25 00:53:36', '2016-11-25 00:53:36'),
(58, 'Rasheed', 'Forrest', 40, 0, 58, '2016-11-25 00:53:36', '2016-11-25 00:53:36'),
(59, 'Ignacio', 'Paolo', 28, 0, 59, '2016-11-25 00:53:36', '2016-11-25 00:53:36'),
(60, 'Keeley', 'Kaley', 19, 0, 60, '2016-11-25 00:53:36', '2016-11-25 00:53:36'),
(61, 'Rowan', 'Kamron', 24, 0, 61, '2016-11-25 00:53:36', '2016-11-25 00:53:36'),
(62, 'German', 'Quinton', 22, 0, 62, '2016-11-25 00:53:36', '2016-11-25 00:53:36'),
(63, 'Jennings', 'Marques', 31, 0, 63, '2016-11-25 00:53:37', '2016-11-25 00:53:37'),
(64, 'Saul', 'Ransom', 24, 0, 64, '2016-11-25 00:53:37', '2016-11-25 00:53:37'),
(65, 'Montana', 'Don', 16, 0, 65, '2016-11-25 00:53:37', '2016-11-25 00:53:37'),
(66, 'Ezequiel', 'Kristoffer', 18, 0, 66, '2016-11-25 00:53:37', '2016-11-25 00:53:37'),
(67, 'Candido', 'Desmond', 39, 0, 67, '2016-11-25 00:53:37', '2016-11-25 00:53:37'),
(68, 'Roger', 'Carmine', 38, 0, 68, '2016-11-25 00:53:37', '2016-11-25 00:53:37'),
(69, 'Scottie', 'Erick', 24, 0, 69, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(70, 'Kristopher', 'Bo', 39, 0, 70, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(71, 'Marcel', 'Mortimer', 37, 0, 71, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(72, 'Alexander', 'Ludwig', 34, 0, 72, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(73, 'Carlos', 'Jovani', 26, 0, 73, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(74, 'Dorian', 'Jarred', 32, 0, 74, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(75, 'Hipolito', 'Sterling', 15, 0, 75, '2016-11-25 00:53:38', '2016-11-25 00:53:38'),
(76, 'Chance', 'Cole', 26, 0, 76, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(77, 'Lenny', 'Ephraim', 30, 0, 77, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(78, 'Thomas', 'Adrain', 39, 0, 78, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(79, 'Stephon', 'Sven', 15, 0, 79, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(80, 'Kellen', 'Angel', 28, 0, 80, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(81, 'Junius', 'Brett', 34, 0, 81, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(82, 'Buck', 'Arvid', 20, 0, 82, '2016-11-25 00:53:39', '2016-11-25 00:53:39'),
(83, 'Blake', 'Maximilian', 37, 0, 83, '2016-11-25 00:53:40', '2016-11-25 00:53:40'),
(84, 'Marco', 'Demetrius', 18, 0, 84, '2016-11-25 00:53:40', '2016-11-25 00:53:40'),
(85, 'Marlin', 'Rollin', 21, 0, 85, '2016-11-25 00:53:40', '2016-11-25 00:53:40'),
(86, 'Lucius', 'Oswald', 37, 0, 86, '2016-11-25 00:53:40', '2016-11-25 00:53:40'),
(87, 'Connor', 'Jamie', 31, 0, 87, '2016-11-25 00:53:40', '2016-11-25 00:53:40'),
(88, 'Jeramie', 'Taylor', 23, 0, 88, '2016-11-25 00:53:40', '2016-11-25 00:53:40'),
(89, 'Al', 'Jett', 21, 0, 89, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(90, 'Braxton', 'Jonatan', 39, 0, 90, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(91, 'Waldo', 'Everardo', 35, 0, 91, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(92, 'Narciso', 'Lincoln', 21, 0, 92, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(93, 'Boyd', 'Alexandre', 17, 0, 93, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(94, 'Herminio', 'Sterling', 25, 0, 94, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(95, 'Ernesto', 'Maximo', 36, 0, 95, '2016-11-25 00:53:41', '2016-11-25 00:53:41'),
(96, 'Ole', 'Israel', 28, 0, 96, '2016-11-25 00:53:42', '2016-11-25 00:53:42'),
(97, 'Loyal', 'Osbaldo', 29, 0, 97, '2016-11-25 00:53:42', '2016-11-25 00:53:42'),
(98, 'Julius', 'Mose', 39, 0, 98, '2016-11-25 00:53:42', '2016-11-25 00:53:42'),
(99, 'Jermain', 'Logan', 20, 0, 99, '2016-11-25 00:53:42', '2016-11-25 00:53:42'),
(100, 'Lance', 'Emmanuel', 22, 0, 100, '2016-11-25 00:53:42', '2016-11-25 00:53:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `barrio` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_sede` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `created_at`, `updated_at`, `nombre`, `barrio`, `id_sede`) VALUES
(1, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Spinka and Sons', 'Jakobview', 5),
(2, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Schaefer-Hoppe', 'North Romaburgh', 2),
(3, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Feeney-Olson', 'Windlerton', 15),
(4, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Volkman Ltd', 'North Alannastad', 6),
(5, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Rath-Legros', 'Amosfurt', 7),
(6, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Rath-Feil', 'West Verlaville', 4),
(7, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Reynolds-Pollich', 'Lake Billy', 3),
(8, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Leannon, Harris', 'Strosinberg', 10),
(9, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Purdy and Sons', 'Malikamouth', 8),
(10, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Carroll, Bergstrom', 'East Esthermouth', 19),
(11, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Shanahan-Klocko', 'West Harrison', 16),
(12, '2016-11-22 15:16:50', '2016-11-22 15:16:50', 'Kovacek, Bogan', 'New Jaren', 12),
(13, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Rey, Armstrong ', 'Karleyview', 20),
(14, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Roob, Kuvalis', 'Thompsonview', 17),
(15, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Rath-West', 'Harrisview', 9),
(16, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Kemmer, Barrows', 'Lake Lafayette', 14),
(17, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Rutherford-Bednar', 'Alvashire', 13),
(18, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Price, Daugherty ', 'Port Archibaldville', 18),
(19, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Strosin and Sons', 'Port Isabell', 11),
(20, '2016-11-22 15:16:51', '2016-11-22 15:16:51', 'Johnston-Shanah', 'Gaylordmouth', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(10) UNSIGNED NOT NULL,
  `alias` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `posicion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `goles` tinyint(4) NOT NULL,
  `asistencias` tinyint(4) NOT NULL,
  `id_equipo` int(10) UNSIGNED NOT NULL,
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `alias`, `posicion`, `numero`, `goles`, `asistencias`, `id_equipo`, `id_cliente`, `created_at`, `updated_at`) VALUES
(1, 'Casper Gerlach', 'Arquero', '95', 5, 14, 9, 19, '2016-11-22 15:17:33', '2016-11-22 15:17:33'),
(2, 'Noah Rogahn', 'Defensor', '5', 12, 16, 3, 30, '2016-11-22 15:17:33', '2016-11-22 15:17:33'),
(3, 'Katelin Pfannerstill', 'Defensor', '92', 39, 9, 4, 3, '2016-11-22 15:17:33', '2016-11-22 15:17:33'),
(4, 'Adonis Russel', 'Arquero', '42', 31, 16, 5, 45, '2016-11-22 15:17:33', '2016-11-22 15:17:33'),
(5, 'Mr. Gussie Rau', 'Mediocampista', '41', 19, 21, 1, 28, '2016-11-22 15:17:33', '2016-11-22 15:17:33'),
(6, 'Neil Bahringer DVM', 'Defensor', '8', 37, 28, 9, 5, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(7, 'Javonte Howell Sr.', 'Delantero', '46', 10, 15, 9, 43, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(8, 'Cameron Lubowitz', 'Arquero', '70', 20, 15, 5, 10, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(9, 'Vilma Rowe DDS', 'Delantero', '53', 8, 27, 6, 11, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(10, 'Dr. Melissa Schoen', 'Arquero', '36', 5, 25, 7, 48, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(11, 'Mervin Sipes DVM', 'Delantero', '43', 2, 28, 8, 50, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(12, 'Bobbie Batz', 'Defensor', '67', 6, 9, 8, 15, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(13, 'Dillon Abshire', 'Arquero', '2', 13, 22, 8, 25, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(14, 'Donny Stanton', 'Mediocampista', '79', 9, 12, 4, 24, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(15, 'Jennings Christianse', 'Mediocampista', '58', 23, 23, 8, 33, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(16, 'Brice Reynolds II', 'Arquero', '75', 37, 15, 9, 14, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(17, 'Rocky Boehm', 'Mediocampista', '36', 36, 10, 6, 35, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(18, 'Dr. Amina Effertz', 'Delantero', '70', 32, 24, 9, 1, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(19, 'Amya Hane', 'Defensor', '9', 18, 22, 8, 23, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(20, 'Howell Senger', 'Mediocampista', '40', 16, 26, 5, 9, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(21, 'Alta Kiehn DDS', 'Mediocampista', '40', 39, 26, 7, 12, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(22, 'Brandon Homenick', 'Defensor', '79', 1, 2, 10, 17, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(23, 'Carroll Hayes', 'Delantero', '62', 25, 28, 2, 37, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(24, 'Glenna Schumm III', 'Arquero', '38', 10, 30, 9, 22, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(25, 'Mr. Oda Dickens Jr.', 'Arquero', '47', 31, 24, 3, 44, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(26, 'Easton O''Hara', 'Arquero', '57', 38, 18, 10, 49, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(27, 'Justus Fahey', 'Defensor', '2', 2, 30, 4, 42, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(28, 'Carissa Bartoletti', 'Defensor', '14', 16, 1, 6, 8, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(29, 'Albina Kirlin IV', 'Defensor', '49', 15, 23, 3, 6, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(30, 'Jace Lowe', 'Mediocampista', '67', 7, 11, 1, 4, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(31, 'Palma Bayer', 'Mediocampista', '62', 9, 3, 10, 40, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(32, 'Selena Daniel IV', 'Arquero', '50', 6, 19, 9, 34, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(33, 'Mrs. Paige Torp', 'Delantero', '88', 28, 18, 9, 29, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(34, 'Mrs. Lesly Block', 'Defensor', '93', 39, 6, 2, 2, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(35, 'Lora Baumbach', 'Mediocampista', '46', 9, 12, 2, 38, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(36, 'Mr. Henderson Ankund', 'Arquero', '46', 29, 4, 3, 20, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(37, 'Maurice Fahey', 'Arquero', '65', 3, 7, 8, 26, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(38, 'Wilhelm Rohan', 'Arquero', '60', 11, 12, 4, 21, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(39, 'Kenya Sipes', 'Defensor', '43', 5, 20, 6, 36, '2016-11-22 15:17:34', '2016-11-22 15:17:34'),
(40, 'Tavares Boehm DVM', 'Defensor', '53', 31, 23, 10, 27, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(41, 'Robb Walker', 'Delantero', '44', 1, 14, 3, 16, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(42, 'Prof. Hettie Hagenes', 'Mediocampista', '3', 39, 26, 9, 13, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(43, 'Jason Senger', 'Arquero', '95', 24, 18, 2, 32, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(44, 'Dr. Jessie Kozey', 'Defensor', '45', 27, 10, 4, 46, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(45, 'Emiliano Stroman', 'Delantero', '55', 22, 4, 2, 18, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(46, 'Brad Gorczany', 'Delantero', '66', 9, 22, 1, 7, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(47, 'Floy Hartmann', 'Delantero', '75', 1, 13, 1, 47, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(48, 'Abner Ryan', 'Arquero', '75', 5, 30, 10, 41, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(49, 'Carrie Kuhic', 'Defensor', '34', 26, 18, 6, 39, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(50, 'Mrs. Eve Hartmann IV', 'Delantero', '77', 39, 9, 3, 31, '2016-11-22 15:17:35', '2016-11-22 15:17:35'),
(51, 'Leatha Vandervort', 'Mediocampista', '94', 27, 23, 17, 55, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(52, 'Brian Runolfsdottir', 'Arquero', '85', 6, 6, 12, 60, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(53, 'Arlie Howe PhD', 'Defensor', '20', 13, 3, 11, 59, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(54, 'Misty Goldner', 'Mediocampista', '85', 31, 11, 10, 88, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(55, 'Yasmeen Nicolas', 'Mediocampista', '5', 12, 22, 15, 67, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(56, 'Dr. Irma Shields II', 'Arquero', '44', 16, 3, 11, 78, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(57, 'Marie Hayes', 'Mediocampista', '60', 31, 28, 13, 71, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(58, 'Ettie Schoen', 'Mediocampista', '94', 39, 17, 15, 72, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(59, 'Vicente Roob', 'Arquero', '94', 36, 30, 15, 86, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(60, 'Jade Reynolds MD', 'Mediocampista', '6', 23, 5, 14, 62, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(61, 'Aniya Hodkiewicz', 'Delantero', '35', 24, 16, 12, 92, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(62, 'Ms. Amaya Jaskolski', 'Arquero', '46', 22, 9, 17, 65, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(63, 'Ms. Karlee Stracke', 'Delantero', '29', 29, 8, 14, 100, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(64, 'Frederique Reynolds', 'Delantero', '85', 22, 15, 14, 52, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(65, 'Eli Kiehn', 'Mediocampista', '21', 38, 9, 14, 93, '2016-11-25 00:53:55', '2016-11-25 00:53:55'),
(66, 'Heather Willms', 'Arquero', '48', 16, 27, 13, 68, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(67, 'Arvid Medhurst', 'Mediocampista', '1', 7, 5, 17, 69, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(68, 'Yazmin Lang', 'Arquero', '95', 20, 12, 17, 51, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(69, 'Jakayla Bruen', 'Defensor', '82', 11, 19, 14, 95, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(70, 'Millie Bosco III', 'Defensor', '55', 19, 22, 13, 64, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(71, 'Anastacio Weber', 'Defensor', '87', 32, 21, 12, 79, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(72, 'Mrs. Florine Beahan', 'Arquero', '71', 39, 7, 16, 61, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(73, 'Ms. Liana Graham IV', 'Delantero', '52', 14, 24, 17, 99, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(74, 'Antonina Flatley', 'Delantero', '27', 16, 7, 16, 98, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(75, 'Miss Melyssa Moen', 'Arquero', '27', 29, 10, 13, 85, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(76, 'Mr. Ephraim Cummings', 'Defensor', '43', 39, 15, 10, 96, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(77, 'Lori Raynor', 'Delantero', '54', 39, 11, 16, 77, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(78, 'Mr. Jaren Heathcote ', 'Delantero', '49', 31, 16, 14, 56, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(79, 'Graciela Goldner', 'Defensor', '23', 8, 3, 15, 81, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(80, 'Dayton Wehner', 'Arquero', '4', 3, 25, 17, 58, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(81, 'Dr. Jamie Hauck', 'Delantero', '2', 1, 26, 14, 57, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(82, 'Pinkie Strosin', 'Delantero', '95', 24, 29, 11, 76, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(83, 'Prof. Lamont Simonis', 'Mediocampista', '84', 9, 15, 16, 80, '2016-11-25 00:53:56', '2016-11-25 00:53:56'),
(84, 'Reba Block', 'Delantero', '98', 2, 24, 10, 83, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(85, 'Oral Harber', 'Arquero', '9', 29, 14, 13, 87, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(86, 'Destany Goodwin', 'Delantero', '84', 40, 6, 16, 90, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(87, 'Miss Destinee Kuhn', 'Mediocampista', '20', 1, 21, 14, 54, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(88, 'Rory Pfannerstill DV', 'Defensor', '45', 7, 18, 20, 70, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(89, 'Rollin Anderson V', 'Delantero', '4', 2, 15, 15, 73, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(90, 'Coy Runolfsson', 'Arquero', '14', 28, 6, 17, 91, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(91, 'Mr. Lukas Wunsch Jr.', 'Mediocampista', '93', 7, 12, 18, 97, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(92, 'Dr. Deshawn Cassin', 'Arquero', '81', 28, 17, 20, 84, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(93, 'Einar Conroy', 'Defensor', '85', 6, 20, 20, 75, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(94, 'Ayla Borer', 'Mediocampista', '99', 26, 10, 19, 94, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(95, 'Isidro Fay', 'Delantero', '32', 30, 3, 14, 63, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(96, 'Myrl Langworth', 'Arquero', '75', 27, 10, 10, 82, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(97, 'Mr. Ryan Pagac III', 'Mediocampista', '59', 10, 14, 11, 74, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(98, 'Mrs. Tessie Leuschke', 'Mediocampista', '41', 37, 5, 15, 66, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(99, 'Miss Lela Farrell MD', 'Arquero', '66', 39, 10, 17, 89, '2016-11-25 00:53:57', '2016-11-25 00:53:57'),
(100, 'Ms. Malika Little', 'Mediocampista', '69', 29, 28, 19, 53, '2016-11-25 00:53:57', '2016-11-25 00:53:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_18_000507_create_table_clientes', 1),
('2016_11_18_000659_create_table_sedes', 1),
('2016_11_18_000747_create_table_equipos', 1),
('2016_11_18_001630_create_table_jugadores', 1),
('2016_11_21_172334_create_table_torneos', 1),
('2016_11_21_172502_create_table_torneos_equipos', 1),
('2016_11_26_205257_create_table_posteos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posteos`
--

CREATE TABLE `posteos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `posteos`
--

INSERT INTO `posteos` (`id`, `titulo`, `descripcion`, `imagen`, `id_cliente`, `created_at`, `updated_at`) VALUES
(1, 'James se cala y no arranca', 'Sigue ganando el Madrid y sigue perdiendo el Sporting, sexta victoria consecutiva blanca y tercera derrota seguida de los asturianos, pero en el empapado césped del Bernabéu no estuvieron tan lejos en cuanto a juego se refiere. Pero uno tiene a Cristiano, que no falló desde el punto de penalti, y otro a Duje Cop, que sí falló. James, por su parte, sigue sin arrancar.', '1', 22, '2016-11-27 00:25:07', '2016-11-27 00:25:07'),
(2, 'Pepe: "¿Mi renovación? Está en manos del club', 'Pepe atendió en zona mixta a los medios tras la victoria del equipo ante el Sporting de Gijón. El defensa fue preguntado por la renovación de su contrato, que termina a final de la presente campaña: "Está en manos del club, toca esperar. Yo siempre he dicho que voy a esperar al Madrid hasta el último momento, pero toca esperar".\r\n\r\nLaLiga (J13): Resumen y goles del Real Madrid 2-1 Sporting de Gijón\r\nSobre el encuentro, el madridista destacó la importante victoria del equipo a pesar de no haber jugado un gran partido: "Empezamos muy bien, dejamos el partido teóricamente cerrado pero bajamos un poco la intensidad y se nos complicó. Hay que sacar una lectura positiva del partido porque hemos luchado juntos como equipo, hemos sabido sufrir y conseguir una victoria importante. Es verdad que hemos bajado el ritmo, pero ha sido un partido muy raro con mucho frío y mucha agua".', '2', 36, '2016-11-27 00:25:07', '2016-11-27 00:25:07'),
(3, 'Aleix Vidal se casó ayer en Almería', 'Aleix Vidal se casó este viernes en Almería. El jugador del Barcelona, que no cuenta para Luis Enrique, pidió permiso al entrenador azulgrana hace semanas y el asturiano se lo concedió sin problemas, razón por la que no se entrenó ni ayer ni hoy.Vidal tampoco entró en la lista de convocados para el partido entre la Real Sociedad y el Barcelona que se disputa este domingo en Anoeta.', '3', 88, '2016-11-27 00:25:07', '2016-11-27 00:25:07'),
(4, 'Fallece Fidel Castro, el "amigo" de Maradona', 'Fidel Castro, lider de la revolución cubana y máximo mandatario del país caribeño entre 1956 y 2011, falleció a los 90 años el 25 noviembre según comunicó su hermano Raúl en un breve discurso televisado. Raúl Castro, actual presidente de Cuba, apareció en la televisión estatal y se encargó de comunicar la noticia.', '4', 38, '2016-11-27 00:25:07', '2016-11-27 00:25:07'),
(5, 'Keylor se vuelca con Costa Rica', 'El encuentro ante el Sporting no fue uno más para Keylor Navas, que jugó con la mente puesta en Costa Rica, donde el huracán Otto pasó con fuerza el pasado viernes, dejando un rastro de muertes y destrozos, sobre todo en el norte del país. De ahí, que nada más acabar el partido, el portero del Real Madrid lanzara un mensaje de apoyo a sus compatriotas. "Es un momento difícil para mi país. Tengo fe en que la gente pueda recuperar sus casas y todo lo que tenían, para que puedan seguir adelante. Es un momento complicado", aseguró el portero costarricense, que ya antes del duelo había utilizado sus redes sociales para difundir un mensaje de ánimo y, sobre todo, de solidarida y ayuda. "Hola, somos la familia costarricense, una familia unida, solidaria y fuerte. Por eso ayudemos a todos nuestros hermanos afectados por el huracán. Haciendo nuestras donaciones de agua, alimentos y articulos de higiene personal por medio de la Cruz Roja y La Asociación de Guías y Scouts. También recordemos seguir las instrucciones de nuestras autoridades, para así no bajar la guardia. Fuerza Costa Rica, que Dios está con nosotros. Un abrazo muy grande y que Dios les bendiga. Recordemos, que juntos todo es posible. Pura vida", dijo Keylor Navas a través de un vídeo grabado desde la misma concentración del Real Madrid.', '5', 88, '2016-11-27 00:25:07', '2016-11-27 00:25:07'),
(6, '"Hay tipos en la pista que no deberían estar"', 'Fernando Alonso ha terminado 11º en los terceros entrenamientos libres del Gran Premio de Abu Dabi, el español ha marchado séptimo durante gran parte de los libres pero al final se ha visto superado, incluso, por Esteban Gutiérrez.Durante una de sus tandas en la mañana de hoy, el asturiano se ha quejado amargamente de la actitud de otros pilotos en la pista. Aunque no se ha podido ver la acción a la que se refería por televisión, sí que se ha escuchado el mensaje de radio en el que el de McLaren cargaba contra otro piloto por impedirle dar una vuelta más. Las palabras textuales de Alonso han sido las siguientes:\r\n"Quería dar otra vuelta, pero hay tipos en la pista que no deberían estar en la F1"Parece que hay algunos pilotos que no están todo lo concentrados que deberían estar cuando están en la pista.', '6', 73, '2016-11-27 00:25:08', '2016-11-27 00:25:08'),
(7, 'conquista el Palau y aprieta la Liga', 'ElPozo dio un glpe sobre la mesa y apretó aún más la cabeza de la tabla. De hecho, el Barcelona Lassa, que había sido líder, cayó hasta la cuarta plaza, a tres puntos del liderato que mantiene el Palma Futsal. Los murcianos se han acostumbrado a rendir en los grandes momentos y en el Palau lo volvieron a hacer. Un triunfo, remontando un 2-0, que vuelve a dar cartel de favorito a un equipo que había tenido un comienzo titubeante. Eso sí, ya puede presumir de haber ganado a sus tres rivales más cercanos.El partido tuvo mucha intensidad y mucho ritmo, con ocasiones para ambas partes. La posesión en la primera parte fue para los murcianos, pero el acierto lo tuvieron los locales. El balón parado fue clave. Una banda que remató Roger y una falta que puso en la red Aicardo le daban ventaja.ElPozo encajó el golpe y lo amortiguó a pocos segundos del descanso, cuando Álex hizo el 2-1 en otra jugada de banda, tras un saque de Bebe. El gol dio bríos a los murcianos, que en la segunda parte salieron con un punto más de intensidad y que lograron el empate por medio de Raúl Campos, con una potente volea ajustada al palo.El partido entró en los minutos del miedo. Se acercaba el final y ninguno de los dos quería arriesgar el botín que ya tenía. Sólo un destello, una acción de calidad desequilibraría y esta llegó por medio de Miguelín, que se marchó por banda de Roger y cruzó ante la mala salida de Juanjo, que había hecho un partido más que notable. Quedaban apenas dos minutos en los que los azulgranas no supieron remontar con el juego de cinco y acabarn concediendo su segunda derrota en Liga de la temporada.', '7', 81, '2016-11-27 00:25:08', '2016-11-27 00:25:08'),
(8, 'Las ''Leonas'' rugen y estarán en su segundo Mundial', 'El primer paso estaba dado, pero había que confirmarlo... y así ha sido. La selección femenina de rugby XV, las ''Leonas'' de José Antonio Barrio, estarán en el próximo Mundial de Irlanda 2017, segundo consecutivo para las españolas, tras imponerse a Escocia por 15-10 en un Central de la Universidad Complutense madrileña que, pese a la lluvia caída, presentó una sensacional afluencia de espectadores, con más de 4.000 aficionados. Irlanda, por tanto, será la sexta cita mundialista, de un total de ocho, para las españolas, que sólo se han perdido los Mundiales de Escocia 1994 e Inglaterra 2010. Pese a no poder competir en el primer nivel internacional, tras la injusta exclusión por una decisión ''política'' del VI Naciones femenino hace diez años ya, el carácter y el buen juego de esta generación de jugadoras lo ha sabido contrarrestar.El 5-10 logrado hace una semana en Glasgow, donde la defensa española y su gran capacidad para placar sin desmayo fueron las notas dominantes, fue completado con los tres ensayos de Amaia Erbina, la infalible Patricia García y Marina Bravo, cuando más sufría España en la segunda parte con el empate a 10 en el marcador tras un polémico ensayo concedido a Escocia después de consulta con el TMO.Como curiosidad, es la primera vez en la historia que se consulta con el juez de televisión en un partido de España', '8', 97, '2016-11-27 00:25:08', '2016-11-27 00:25:08'),
(9, 'Croacia gana el dobles y toma ventaja', 'Argentina, la única gran potencia de la raqueta que no ha inscrito su nombre en la Ensaladera de plata, vuelve a estar contra las cuerdas en una final, la quinta en la que compiten por el título. Las cuatro anteriores acabaron con derrota, las dos últimas ante España, en 2008 y 2011, y ante Croacia se verán obligados mañana a remontar un marcador desfavorable de 2-1 a la conclusión de la segunda jornada.El equipo de Daniel Orsanic es Juan Martín Del Potro y tres más y ese es precisamente su problema. Del Potro, a sus 28 años, lo tiene que jugar y todo y, además, con la presión de que sus puntos en individuales son básicos. El gigante de Tandil ganó ayer a Ivo Karlovic pero no pudo repetir en el dobles formando pareja con Leonardo Mayer, con el que ya había perdido el único partido juntos en las semifinales frente a los hermanos Jamie y Andy Murray.Marin Cilic e Ivan Dodig, el único especialista a mitad de pista de los ocho protagonistas de la final, decantaron a su favor el tercer punto de la eliminatoria, que se presume decisivo, por 7-6(2), 7-6(4) y 6-3, en 2 horas y 42 minutos.No era casualidad que Cilic y Dodig hubiesen superado en el camino a la final a parejas como los hermanos Bob y Mike Bryan y Nicolas Mahut y Pierre-Hugues Herbert. En un Zagreb Arena con 15.000 incondicionales, 2.000 de ellos argentinos y uno de ellos de nombre Diego Maradona, los croatas ganaron los puntos claves, tanto en los dos primeros ''tie break'' como en el tercer asalto.', '9', 45, '2016-11-27 00:25:08', '2016-11-27 00:25:08'),
(10, 'Un hombre muere mientras veía a su hija jugar', 'El padre de la tenista chilena Daniela Seguel murió este sábado en Santiago mientras su hija disputaba la final de la Copa Las Condes ante la brasileña Paula Gonçalves, informaron los organizadores del torneo.Jorge Seguel estaba en la tribuna del club El Alba, donde se disputó el torneo, dotado con 10.000 dólares y puntos para el ránking de la WTA, cuando repentinamente se desvaneció, precisaron las fuentes.En ese momento se disputaba el segundo set del partido, que la chilena (233 WTA) ganaba por 6-4 y 2-1 a la brasileña Gonçalves (183 WTA), con el marcador 30-30 en el cuarto juego.', '10', 81, '2016-11-27 00:25:08', '2016-11-27 00:25:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sede` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `sede`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 'Goldner, Russel and Lang', '4897 Effertz Lights\nShermantown, RI 72819-7209', '2016-11-22 15:15:59', '2016-11-22 15:15:59'),
(2, 'Bode, Lubowitz and Borer', '726 Wyatt Via Apt. 764\nEmmettport, UT 52704-1973', '2016-11-22 15:15:59', '2016-11-22 15:15:59'),
(3, 'McLaughlin-Bayer', '6534 Velda Inlet\nHiramville, MI 00966', '2016-11-22 15:15:59', '2016-11-22 15:15:59'),
(4, 'Boehm-Hudson', '89457 Geovanny Viaduct Suite 224\nNew Josuehaven, N', '2016-11-22 15:15:59', '2016-11-22 15:15:59'),
(5, 'Hermann and Sons', '1142 Julie Garden Apt. 878\nSouth Tomas, MO 81134-5', '2016-11-22 15:15:59', '2016-11-22 15:15:59'),
(6, 'Ullrich-Nikolaus', '89208 McLaughlin Views Apt. 203\nIsaiborough, MD 20', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(7, 'Harris and Sons', '84941 Maggie Fields\nSharonville, MN 27534', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(8, 'Dicki-Lind', '62333 Weber Streets Apt. 338\nEast Adan, VT 76822-7', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(9, 'Renner, Kovacek and Marvin', '8519 Tierra Unions\nSouth Jay, MD 19016', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(10, 'Rogahn Inc', '4489 Katarina Stream\nWest Shermanton, MD 45367', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(11, 'Gusikowski Group', '23943 Paucek Dam\nIsabelletown, GA 66656', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(12, 'Haag and Sons', '606 Marion Center Suite 304\nWest Clevelandtown, MA', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(13, 'Walter-Medhurst', '384 Zoey Square\nPort Alfredaport, FL 95880', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(14, 'Oberbrunner-Heidenreich', '3388 Barton Flat\nWest Hillard, PA 98767', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(15, 'Braun-Balistreri', '73209 Bogan Turnpike\nNorth Jason, FL 04472-9629', '2016-11-22 15:16:00', '2016-11-22 15:16:00'),
(16, 'Treutel-Rohan', '53324 Schaden Camp Apt. 125\nNorth Adah, SD 16784-8', '2016-11-22 16:43:31', '2016-11-22 16:43:31'),
(17, 'Kuhlman, West and Beer', '304 Destini Land\nEast Alicia, NE 76845', '2016-11-22 16:43:31', '2016-11-22 16:43:31'),
(18, 'Schulist and Sons', '8589 Kovacek Corners\nHesselmouth, PA 53615', '2016-11-22 16:43:31', '2016-11-22 16:43:31'),
(19, 'Fadel-Ondricka', '2468 Sanford Route Apt. 542\nDonnellyburgh, MI 6264', '2016-11-22 16:43:31', '2016-11-22 16:43:31'),
(20, 'Hermann-Walker', '763 Purdy Shoal Suite 763\nOkeyborough, WI 94191', '2016-11-22 16:43:31', '2016-11-22 16:43:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formato` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inicia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `termina` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `torneos`
--

INSERT INTO `torneos` (`id`, `nombre`, `formato`, `inicia`, `termina`, `created_at`, `updated_at`) VALUES
(1, 'Torneo B VI', 'Fase de grupos', '21/12/2016', '18/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(2, 'Torneo B II', 'Fase de grupos', '01/12/2016', '01/12/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(3, 'Torneo B II', 'Fase de grupos', '30/10/2016', '13/12/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(4, 'Torneo B II', 'Especial', '30/12/2016', '11/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(5, 'Torneo B I', 'Fase de grupos', '07/10/2016', '28/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(6, 'Torneo A II', 'Fase de grupos', '02/10/2016', '14/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(7, 'Torneo B VI', 'Especial', '29/12/2016', '14/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(8, 'Torneo B V', 'Especial', '07/10/2016', '29/12/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(9, 'Torneo C V', 'Eliminacion', '20/10/2016', '28/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(10, 'Torneo A IV', 'Fase de grupos', '14/10/2016', '10/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(11, 'Torneo B II', 'Especial', '02/10/2016', '13/12/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09'),
(12, 'Torneo B II', 'Especial', '07/10/2016', '05/10/2017', '2016-11-22 15:17:09', '2016-11-22 15:17:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneosequipos`
--

CREATE TABLE `torneosequipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_inscripcion` datetime NOT NULL,
  `id_equipo` int(10) UNSIGNED NOT NULL,
  `id_torneo` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `torneosequipos`
--

INSERT INTO `torneosequipos` (`id`, `fecha_inscripcion`, `id_equipo`, `id_torneo`, `created_at`, `updated_at`) VALUES
(1, '1980-12-13 16:27:09', 2, 1, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(2, '2015-05-12 15:00:56', 18, 2, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(3, '1995-06-06 15:40:19', 11, 12, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(4, '1971-08-05 20:20:18', 20, 10, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(5, '1982-05-27 04:11:37', 8, 2, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(6, '2007-10-21 06:44:03', 2, 8, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(7, '1981-07-18 13:01:28', 18, 11, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(8, '1970-12-28 22:00:30', 6, 1, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(9, '1998-08-10 05:05:37', 13, 10, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(10, '1999-07-24 04:52:38', 2, 2, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(11, '1982-04-14 01:20:04', 16, 11, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(12, '1989-04-06 02:34:09', 18, 12, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(13, '1970-09-10 03:49:08', 5, 1, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(14, '1998-04-22 01:18:12', 4, 7, '2016-11-22 15:20:50', '2016-11-22 15:20:50'),
(15, '1990-10-28 22:16:22', 10, 5, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(16, '1993-04-30 12:22:21', 17, 5, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(17, '2016-08-20 01:14:03', 5, 4, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(18, '2013-07-05 22:41:30', 4, 10, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(19, '2004-12-04 00:51:53', 6, 1, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(20, '2004-04-21 09:16:32', 13, 4, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(21, '1993-03-13 05:37:57', 7, 7, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(22, '2010-08-06 22:02:22', 1, 10, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(23, '1981-12-28 20:34:03', 2, 1, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(24, '1987-02-12 02:04:16', 4, 1, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(25, '1998-12-16 08:33:36', 8, 8, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(26, '2010-10-23 13:08:05', 20, 11, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(27, '1979-07-14 10:04:12', 1, 3, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(28, '1981-03-22 22:35:41', 14, 9, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(29, '1997-04-17 14:28:54', 4, 11, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(30, '1988-06-12 16:12:11', 16, 7, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(31, '2000-07-03 18:21:07', 20, 7, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(32, '1975-09-01 02:29:12', 11, 4, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(33, '2000-11-16 13:49:03', 13, 6, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(34, '2005-05-15 04:26:09', 3, 9, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(35, '1975-10-14 20:37:48', 10, 1, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(36, '2015-04-30 10:49:04', 13, 4, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(37, '1993-06-21 05:35:54', 8, 12, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(38, '1992-01-17 03:24:15', 14, 4, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(39, '1995-06-30 17:05:35', 20, 7, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(40, '1993-10-06 18:52:01', 6, 5, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(41, '1991-12-04 21:39:53', 2, 2, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(42, '1981-07-01 10:39:42', 16, 12, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(43, '2003-08-29 10:15:16', 13, 8, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(44, '2014-05-11 17:19:18', 5, 4, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(45, '1986-09-19 16:07:02', 14, 9, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(46, '1981-09-07 16:32:52', 14, 8, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(47, '1999-01-13 23:06:04', 3, 10, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(48, '1979-07-06 05:22:09', 11, 11, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(49, '2013-02-09 02:42:22', 1, 11, '2016-11-22 15:20:51', '2016-11-22 15:20:51'),
(50, '1985-07-16 03:47:50', 13, 4, '2016-11-22 15:20:52', '2016-11-22 15:20:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'afton41', 'lucas.rolfson@bailey.biz', 'IxbBQ~fa>s[', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(2, 'ngrady', 'bruen.mallory@osinski.org', '$r|a+jF"WEZzV}{b', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(3, 'connelly.ivah', 'piper62@yahoo.com', 'D$Yv4g`46+d(/Bk?', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(4, 'alden.kshlerin', 'bradford.lind@grant.com', 'nK[@<W|d/.r', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(5, 'wrohan', 'qweber@kutch.com', '@]fKw]01u', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(6, 'camila21', 'oral31@gmail.com', 'sSy9G''%{m[|', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(7, 'langworth.michaela', 'omedhurst@hotmail.com', '<^v,nE`W=pAS', NULL, '2016-11-29 19:25:31', '2016-11-29 19:25:31'),
(8, 'herminio.altenwerth', 'marie89@yahoo.com', '!r5HbG', NULL, '2016-11-29 19:25:32', '2016-11-29 19:25:32'),
(9, 'stiedemann.shaniya', 'kemmerich@yahoo.com', 'wu5a,b[loc>;?8l$', NULL, '2016-11-29 19:25:32', '2016-11-29 19:25:32'),
(10, 'brendan85', 'sgleason@gmail.com', '`rLdX,`N/L~Ac!,', NULL, '2016-11-29 19:25:32', '2016-11-29 19:25:32'),
(11, 'ifranecki', 'sheaney@friesen.com', '0.e?GL_weI.Jx}p\\8INi', NULL, '2016-11-29 19:25:32', '2016-11-29 19:25:32'),
(12, 'polly14', 'nolan.adriana@morissette.com', 'F%@pjBjJcjLrv''Je_B/', NULL, '2016-11-29 19:25:33', '2016-11-29 19:25:33'),
(13, 'pansy70', 'cormier.brannon@reynolds.info', 'Air4.0u9''x', NULL, '2016-11-29 19:25:33', '2016-11-29 19:25:33'),
(14, 'zspinka', 'melba75@schuppe.net', 'CVRZ`.hx(u$-Sn_|PcqK', NULL, '2016-11-29 19:25:33', '2016-11-29 19:25:33'),
(15, 'karianne.pfeffer', 'dulce53@yahoo.com', 'xR6H~E>=Q([HI\\PILd2k', NULL, '2016-11-29 19:25:34', '2016-11-29 19:25:34'),
(16, 'zieme.raoul', 'erowe@gmail.com', ')T|PqFjZ,]MLx9CCJk', NULL, '2016-11-29 19:25:34', '2016-11-29 19:25:34'),
(17, 'penelope15', 'fay.schneider@schroeder.com', '[di*GMue7J"', NULL, '2016-11-29 19:25:34', '2016-11-29 19:25:34'),
(18, 'johathan25', 'fahey.pamela@hermiston.com', 'wH''nC;)J#@Z5~!S2', NULL, '2016-11-29 19:25:34', '2016-11-29 19:25:34'),
(19, 'zbernier', 'carroll.miles@yahoo.com', 'rJLoJXy^:Gg0G,yCuT', NULL, '2016-11-29 19:25:34', '2016-11-29 19:25:34'),
(20, 'alayna23', 'nestor94@gmail.com', 'iCu5rN`(G', NULL, '2016-11-29 19:25:34', '2016-11-29 19:25:34'),
(21, 'afton.grady', 'hudson.rosetta@hotmail.com', '>/HT3cLBqD', NULL, '2016-11-29 19:25:50', '2016-11-29 19:25:50'),
(22, 'dooley.jayda', 'juliet77@yahoo.com', '40@Qin-@z{<WPaBA', NULL, '2016-11-29 19:25:50', '2016-11-29 19:25:50'),
(23, 'terence.murray', 'guiseppe96@hotmail.com', '!7A7RT/TG39f-YtsVt', NULL, '2016-11-29 19:25:50', '2016-11-29 19:25:50'),
(24, 'austen.denesik', 'mortimer.boyer@bartell.info', 'Sd?5bb', NULL, '2016-11-29 19:25:50', '2016-11-29 19:25:50'),
(25, 'arvel20', 'destin80@hotmail.com', 'YjXBs1b6s8HU', NULL, '2016-11-29 19:25:50', '2016-11-29 19:25:50'),
(26, 'pfay', 'ray.littel@hotmail.com', 'ub}Qr|c5!}poU', NULL, '2016-11-29 19:25:50', '2016-11-29 19:25:50'),
(27, 'dickinson.kaden', 'rboehm@corkery.com', '~k".z%;z5(FB,', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(28, 'shintz', 'madge.jacobson@dach.com', 'L=e\\Ke^?\\', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(29, 'wilburn28', 'colin.monahan@hotmail.com', 'V,A1LtRtq', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(30, 'ada.reinger', 'xhowell@berge.com', '9=[H-XAb8tSgJ)|||X{H', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(31, 'schaden.lolita', 'qheidenreich@gmail.com', '|f0xMB<B@J,?="WYp;"', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(32, 'gustave71', 'corwin.dino@hotmail.com', ':IdE(3_pOEj<1x', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(33, 'rubye.langosh', 'deckow.lurline@weissnat.com', 'Dhb''%1V>MbF(C(L,', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(34, 'garth95', 'ettie.hackett@swaniawski.com', '?|3,-D4ZhH[RW"*', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(35, 'eleanore96', 'ervin.corwin@muller.com', 'qUz]CTMs2X', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(36, 'jaclyn.mann', 'miller13@hotmail.com', '!^zs3k`w4nb"2@', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(37, 'goyette.rodrick', 'vena.moen@cartwright.com', '9#<d|Tt^', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(38, 'dlang', 'jenkins.effie@hotmail.com', 'gfRc"%7m;[%oe@M', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(39, 'baumbach.morgan', 'zcasper@gmail.com', '5zJhCJ].%aQVJLA', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(40, 'wilkinson.omari', 'gcole@hessel.biz', 't5-qO-LWf=l]R9>;@''f', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(41, 'iking', 'hhahn@kautzer.org', 'O5)X2$', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(42, 'mkuvalis', 'cjohns@hills.com', '1XQ?hQ`v^}a9qccx-', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(43, 'bahringer.milan', 'vilma.spencer@koepp.com', '.dt81><NT{_n44a{hEi$', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(44, 'robb.bernhard', 'abernier@hotmail.com', '=CV+Q^A#jSROYT&3\\''\\~', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(45, 'fstrosin', 'chelsea64@hotmail.com', ')(5[y\\lahiw>]:', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(46, 'upton.marlee', 'kenny.collier@hotmail.com', '<yD.8K3N+4;xIsfQE"', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(47, 'uriah.jenkins', 'alexzander.balistreri@hotmail.com', 'eM:AJnr^QY'':G\\bS', NULL, '2016-11-29 19:25:51', '2016-11-29 19:25:51'),
(48, 'alphonso.lesch', 'rippin.audra@hoeger.com', 'f~5Up/<hi*', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(49, 'abigayle58', 'werner47@yahoo.com', 'dR`CH]s_c''1F)CWqKJV', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(50, 'ayden.hammes', 'lois.effertz@gmail.com', 'e{d/Y`jD[j#..%Bh,!', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(51, 'kuhic.sedrick', 'louisa99@hotmail.com', '@&M-4Qo/f', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(52, 'lakin.unique', 'ratke.gisselle@yahoo.com', 'u!.ox!+.Xp', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(53, 'madeline.wolff', 'watsica.caleigh@hotmail.com', '@kUa\\-QJ5EFvItEcB/q', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(54, 'alfreda.bernier', 'sauer.jaime@ritchie.com', 'IW{?,(2\\a*q^C*P', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(55, 'eblock', 'hgrant@mcglynn.com', 'Zv7_BEpH&ep', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(56, 'romaguera.edd', 'doyle.mariela@gmail.com', 'b`k,\\#c=<HtaX', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(57, 'jmoore', 'millie84@brakus.net', '_\\7~2+Qr71J8U0"g]', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(58, 'mayer.delbert', 'gharvey@yahoo.com', '@%]dLYH~', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(59, 'schaefer.noah', 'zdooley@miller.com', 'Qd"S/WPnQh', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(60, 'mcclure.christian', 'blanda.bryon@hotmail.com', '"\\@HA#;F))itH!', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(61, 'mhowe', 'arnaldo69@oconnell.com', '?|CXQ&x/.(jY', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(62, 'alena.will', 'aniyah94@gmail.com', 'H,u?Db;<~<%b%o[?c@8', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(63, 'caden.maggio', 'arthur.lemke@klein.com', 'h5!"~wmF8G>,.O%', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(64, 'ocie.russel', 'tobin49@jones.org', 'kLt|a!>x5~#_3hF$z0~#', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(65, 'rpagac', 'sincere.welch@lubowitz.org', '&?G7%}v3', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(66, 'monty.becker', 'lhayes@stehr.com', 'OF/xD|{NV9X@b<LU', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(67, 'christ27', 'arempel@gleichner.org', '2#WedK"$_8}qziRn;ED7', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(68, 'briana50', 'qdare@dooley.org', '2[.&o|$5i9]+W=5q<c', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(69, 'zella06', 'kaela.kunze@gmail.com', 'o]tF*HrzY!GFy?s;ywH', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(70, 'egutmann', 'eschiller@anderson.com', 'j]zh,iA5W[.D''hzFJ`', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(71, 'cole.everardo', 'khalid.littel@hotmail.com', '5s\\m-RUxi@h', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(72, 'franco67', 'rowena14@hotmail.com', 'sM{"@YRH-<Q1b)fz', NULL, '2016-11-29 19:25:52', '2016-11-29 19:25:52'),
(73, 'ikautzer', 'kautzer.kyler@ankunding.info', '%a0WHX=^&Geg*', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(74, 'jerrold63', 'akovacek@rowe.org', ')GCX=@{', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(75, 'muller.rollin', 'mmante@yahoo.com', 'g29v|`w>N-u[dL}_4<', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(76, 'lockman.kristian', 'christopher07@hotmail.com', '19U!)/\\G/@2S', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(77, 'jorge91', 'billy.borer@gmail.com', 'C`H.!X<Z4{', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(78, 'pschmeler', 'marina.schinner@yahoo.com', 'uj^{#\\N"xILt5*(8axO]', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(79, 'lmarks', 'tdubuque@yahoo.com', '5n?)X`1Ylu-', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(80, 'haven.gusikowski', 'yhalvorson@hotmail.com', '&,^/fZob.Meel$ZU', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(81, 'carroll.leilani', 'uschiller@gmail.com', '[=;Bjt;37Z', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(82, 'ashley76', 'kari.tremblay@blanda.com', 'CMkMe1=x5Rb-FMa', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(83, 'conroy.marianna', 'elind@grant.info', 'Lhv]@%', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(84, 'ibrakus', 'schultz.angelo@turcotte.net', 'R|nlbe''', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(85, 'lora13', 'janet23@goldner.com', 'A:,W6_[w]', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(86, 'princess57', 'monty58@dibbert.com', 'rfLdGF7INRhVh\\Md9.', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(87, 'johan46', 'othiel@becker.info', 'Q79Xd^H''l>IsM^W', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(88, 'walsh.ona', 'mfadel@gmail.com', 'R=ey+Q#{dI', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(89, 'ygutkowski', 'sframi@hotmail.com', '>_#$<$s(}7I&n,F+XY9#', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(90, 'chet03', 'yernser@yahoo.com', ';j?"aajk2@J+xZ0', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(91, 'whegmann', 'hilpert.eula@pollich.info', '%Z#IxeVQmW', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(92, 'oda.howell', 'senger.jacynthe@hotmail.com', 'jaDOl/iy,\\D_b,+F^[', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(93, 'percival31', 'elias.smitham@kris.info', '?MR[jz_>U`Dm'']}vgM', NULL, '2016-11-29 19:25:53', '2016-11-29 19:25:53'),
(94, 'dickinson.cordelia', 'lowe.cynthia@herzog.com', '6ia}\\eZs', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54'),
(95, 'bradford25', 'schmidt.amina@klocko.net', '7q^r8v0Xh}LaEhEaj', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54'),
(96, 'bednar.austyn', 'amueller@hotmail.com', 'c:7w]$atx&QfL<B|e', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54'),
(97, 'rita.turner', 'justen.moore@gmail.com', '9__(_S', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54'),
(98, 'ftromp', 'glover.imani@monahan.com', 'vPXo%Pm\\si4t', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54'),
(99, 'hessel.ferne', 'walker.borer@wolff.com', 'P6d2P`GJ[w#]=)^', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54'),
(100, 'vcarter', 'bailey.theodore@powlowski.info', 'q+-nj&wj<EM', NULL, '2016-11-29 19:25:54', '2016-11-29 19:25:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_clientes_users` (`id_users`) USING BTREE;

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipos_id_sede_foreign` (`id_sede`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jugadores_id_equipo_foreign` (`id_equipo`),
  ADD KEY `jugadores_id_cliente_foreign` (`id_cliente`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `posteos`
--
ALTER TABLE `posteos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posteos_id_cliente_foreign` (`id_cliente`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `torneosequipos`
--
ALTER TABLE `torneosequipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torneosequipos_id_equipo_foreign` (`id_equipo`),
  ADD KEY `torneosequipos_id_torneo_foreign` (`id_torneo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT de la tabla `posteos`
--
ALTER TABLE `posteos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `torneos`
--
ALTER TABLE `torneos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `torneosequipos`
--
ALTER TABLE `torneosequipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_id_sede_foreign` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `jugadores_id_equipo_foreign` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id`);

--
-- Filtros para la tabla `posteos`
--
ALTER TABLE `posteos`
  ADD CONSTRAINT `posteos_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `torneosequipos`
--
ALTER TABLE `torneosequipos`
  ADD CONSTRAINT `torneosequipos_id_equipo_foreign` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `torneosequipos_id_torneo_foreign` FOREIGN KEY (`id_torneo`) REFERENCES `torneos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
