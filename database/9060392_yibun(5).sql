-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: PMYSQL154.dns-servicio.com:3306
-- Tiempo de generación: 05-10-2022 a las 10:07:11
-- Versión del servidor: 5.7.38
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `9060392_yibun`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text,
  `color` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `color`) VALUES
(1, 'Firmas', NULL, '#d7a100'),
(2, 'Visitas', NULL, '#34a25f'),
(3, 'Tasaciones', NULL, '#3a87ad'),
(4, 'InformÃ¡tica', NULL, '#55cc00'),
(5, 'Firmadas', NULL, '#C70039'),
(7, 'Inquilinos', NULL, '#9ee9ee'),
(8, 'prueba', NULL, '#ab56d9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_at` varchar(50) NOT NULL,
  `time_at` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `date_at`, `time_at`, `created_at`, `category_id`, `user_id`, `project_id`) VALUES
(1, 'Firma Jordi Carreras', '', '2022-02-04', '09:30', '2022-02-02 13:47:55', 1, 1, 1),
(2, 'Visita Angel FernÃ¡ndez', '', '2022-02-22', '09:00', '2022-02-02 13:49:37', 2, 1, 1),
(3, 'Visita Raquel Garcia', '', '2022-02-15', '11:00', '2022-02-02 13:54:02', 2, 1, 1),
(4, 'Visita Vanessa Cisa', '', '2022-02-15', '12:00', '2022-02-02 13:55:56', 2, 1, 1),
(22, 'Visita Daniel', '', '2022-02-15', '09:00', '2022-02-14 13:10:41', 2, 1, 1),
(7, 'Firma Poaty', '', '2022-02-11', '09:30', '2022-02-02 14:53:27', 5, 1, 1),
(8, 'Firma Suquillo', '', '2022-02-11', '10:30', '2022-02-02 14:54:19', 5, 1, 1),
(12, 'Visita Jessica Roda', '', '2022-02-15', '13:00', '2022-02-08 12:48:06', 2, 1, 1),
(13, 'Visita Jennifer Doblas', '', '2022-02-22', '10:00', '2022-02-08 12:49:10', 2, 1, 1),
(14, 'Visita Ariadna', '', '2022-02-22', '11:00', '2022-02-08 12:50:15', 2, 1, 1),
(15, 'Visita Stephanie', '', '2022-02-15', '08:00', '2022-02-11 12:03:43', 2, 1, 1),
(16, 'Visita Paula Roca', '', '2022-02-15', '14:00', '2022-02-11 12:05:09', 2, 1, 1),
(17, 'Visita Carlos Lopez', '', '2022-03-03', '08:00', '2022-02-11 12:06:29', 2, 1, 1),
(18, 'Visita Ena Hija', '', '2022-02-22', '12:00', '2022-02-11 12:07:10', 2, 1, 1),
(19, 'Firma Ena', '', '2022-03-15', '10:30', '2022-02-14 09:45:02', 5, 1, 1),
(20, 'Firma Saira y Diana', '', '2022-03-01', '09:30', '2022-02-14 09:46:06', 5, 1, 1),
(21, 'Visita Veronica', '', '2022-02-15', '10:00', '2022-02-14 12:43:01', 2, 1, 1),
(33, 'Visita Maribel ', '', '2022-02-24', '09:00', '2022-02-24 10:22:45', 2, 1, 1),
(25, 'Visita Teresa Quesada', '', '2022-02-22', '14:00', '2022-02-15 13:35:49', 2, 1, 1),
(26, 'Firma Fran y Nani', 'Banco: DeutscheBank', '2022-01-10', '10:00', '2022-02-15 14:19:10', 5, 1, 1),
(27, 'Firma Samuel y Rosario', '', '2022-01-10', '10:30', '2022-02-15 14:20:07', 5, 1, 1),
(28, 'Firma Marcos Garcia', '', '2022-01-11', '09:00', '2022-02-15 14:21:44', 5, 1, 1),
(29, 'Firma Marcos y Vicky', '', '2022-01-11', '12:00', '2022-02-15 14:22:37', 5, 1, 1),
(30, 'Firma ValentÃ­n (Manuel Vallejo)', '', '2022-01-12', '09:00', '2022-02-15 14:24:24', 5, 1, 1),
(31, 'Firma Carlos Mercadona', '', '2022-01-26', '09:30', '2022-02-15 14:25:03', 5, 1, 1),
(32, 'Firma Alberto Ibarra', '', '2022-03-15', '09:30', '2022-02-21 14:47:16', 5, 1, 1),
(34, 'Visita Jaime Echepares (con colegas)', '', '2022-02-24', '13:30', '2022-02-24 13:42:03', 2, 1, 1),
(35, 'Visita Aram', '', '2022-02-24', '14:30', '2022-02-24 14:07:15', 2, 1, 1),
(36, 'Visita Daniel Espinosa', '', '2022-02-24', '14:00', '2022-02-24 14:37:15', 2, 1, 1),
(37, 'Visita Jordi ING (con otros dos)', '', '2022-02-25', '09:30', '2022-02-25 10:59:11', 2, 1, 1),
(38, 'Firma Maria JosÃ© HernÃ¡ndez', '', '2022-03-04', '09:30', '2022-02-25 11:03:13', 5, 1, 1),
(39, 'Visita Francisco Carandell y Ariadna Pages', '', '2022-02-25', '14:00', '2022-02-25 14:18:58', 2, 1, 1),
(40, 'Firma Jose Antonio Pareja', '', '2022-03-14', '09:30', '2022-03-02 08:29:15', 5, 1, 1),
(41, 'Raul NuÃ±ez', '', '2022-03-03', '09:00', '2022-03-03 08:18:00', 2, 1, 1),
(42, 'Visita Ignacio', '', '2022-03-03', '10:00', '2022-03-03 08:18:45', 2, 1, 1),
(43, 'Visita Kevin (Elias y Eva)', '', '2022-03-03', '11:00', '2022-03-03 08:21:02', 2, 1, 1),
(44, 'Visita Ioana', '', '2022-03-03', '12:00', '2022-03-03 08:21:54', 2, 1, 1),
(45, 'Visita NÃºria', '', '2022-03-03', '13:00', '2022-03-03 08:22:44', 2, 1, 1),
(46, 'Visita Tamara Arjona', '', '2022-03-03', '14:00', '2022-03-03 08:23:12', 2, 1, 1),
(55, 'Jose Antonio Diz (MÂª Dolores)', '', '2022-03-08', '09:00', '2022-03-08 08:59:37', 2, 1, 1),
(48, 'Visita Abdul', '', '2022-03-07', '09:00', '2022-03-03 08:26:17', 2, 1, 1),
(54, 'Firma Miguel Angel y Jessica', '', '2022-03-24', '09:30', '2022-03-07 11:51:34', 5, 1, 1),
(50, 'Visita Javi Alca', '', '2022-03-07', '12:00', '2022-03-03 08:28:45', 2, 1, 1),
(51, 'Visita Montse Moreno', '', '2022-03-07', '13:00', '2022-03-03 08:29:19', 2, 1, 1),
(53, 'Visita Pedro Gelida', '', '2022-03-07', '14:00', '2022-03-07 09:56:27', 2, 1, 1),
(57, 'Visita Oriol', '', '2022-03-08', '11:00', '2022-03-08 09:00:33', 2, 1, 1),
(58, 'Visita Luisa', '', '2022-03-08', '12:00', '2022-03-08 09:01:10', 2, 1, 1),
(59, 'Daniel Jesus Mena Pirozzi y Sara Bernal Romandini', '', '2022-03-08', '13:00', '2022-03-08 09:01:43', 2, 1, 1),
(60, 'Visita Francesc (Oliver Gonzalez y Jesica Cabo)', '', '2022-03-08', '10:00', '2022-03-08 09:02:16', 2, 1, 1),
(61, 'Sr. X', '', '2022-03-09', '10:00', '2022-03-08 09:02:51', 2, 1, 1),
(62, 'Visita Matteo', '', '2022-03-09', '11:00', '2022-03-08 09:03:36', 2, 1, 1),
(64, 'Visita Josep (Estefania)', '', '2022-03-10', '11:00', '2022-03-10 11:25:10', 2, 1, 1),
(65, 'Visita David Ferri', '', '2022-03-10', '12:00', '2022-03-10 14:38:40', 2, 1, 1),
(66, 'Visita Pareja Argentinos', '', '2022-03-10', '13:00', '2022-03-10 14:39:15', 2, 1, 1),
(67, 'Visita Hombre con mascarilla pequeÃ±a', '', '2022-03-10', '14:00', '2022-03-10 14:40:03', 2, 1, 1),
(68, 'Visita Ioana', '', '2022-03-10', '14:00', '2022-03-10 14:40:36', 2, 1, 1),
(69, 'Firma Antonio (Nito)', '', '2022-03-24', '12:00', '2022-03-10 14:54:25', 5, 1, 1),
(70, 'Visita Lorena Lopez y Luis Ruiz', '', '2022-03-16', '10:00', '2022-03-15 08:15:32', 2, 1, 1),
(71, 'Visita Miquel Molina', '', '2022-03-16', '11:00', '2022-03-15 08:16:22', 2, 1, 1),
(72, 'Visita Estefania (Josep)', '', '2022-03-16', '13:30', '2022-03-15 08:16:59', 2, 1, 1),
(73, 'Visita Javier y Ariadna (Francesc)', '', '2022-03-17', '12:00', '2022-03-15 08:17:46', 2, 1, 1),
(74, 'Visita Humberto Solano', '', '2022-03-17', '11:00', '2022-03-15 08:18:43', 2, 1, 1),
(75, 'Visita David Teruel (Francesc)', '', '2022-03-17', '12:00', '2022-03-15 08:22:47', 2, 1, 1),
(78, 'Visita Amaya', '', '2022-03-17', '10:00', '2022-03-15 14:34:27', 2, 1, 1),
(77, 'Visita Vero (Piera)', '', '2022-03-15', '14:30', '2022-03-15 14:29:03', 2, 1, 1),
(79, 'Visita David (El Salvador)', '', '2022-03-22', '10:00', '2022-03-22 12:01:00', 2, 1, 1),
(86, 'Visita Matilde Riera y Pocholo (Hija Matilde Echepares)', '', '2022-03-28', '14:00', '2022-03-29 11:04:56', 2, 1, 1),
(87, 'Visita Alberto Aurora', '', '2022-03-30', '11:00', '2022-03-29 11:05:46', 2, 1, 1),
(83, 'Visita Propietarios Daniel', '', '2022-03-25', '13:30', '2022-03-22 12:03:08', 2, 1, 1),
(88, 'Visita Rocio', '', '2022-03-30', '12:00', '2022-03-29 11:06:02', 2, 1, 1),
(89, 'Visita Alex (Artem)', '', '2022-03-30', '13:00', '2022-03-29 11:06:39', 2, 1, 1),
(90, 'Visita Vero (Taxi Escolar Martina)', '', '2022-03-30', '14:00', '2022-03-29 11:07:22', 2, 1, 1),
(91, 'Visita Gemma FavÃ  RosellÃ³', '', '2022-03-30', '10:00', '2022-03-30 10:48:57', 2, 1, 1),
(92, 'Visita vecinos Meri', '', '2022-03-30', '09:45', '2022-03-30 10:49:27', 2, 1, 1),
(93, 'Visita Juan', '', '2022-03-31', '10:00', '2022-03-31 10:47:20', 2, 1, 1),
(94, 'Visita Bruno y Laura', '', '2022-03-31', '11:00', '2022-03-31 10:47:42', 2, 1, 1),
(95, 'Visita Meri', '', '2022-03-31', '12:00', '2022-03-31 10:48:07', 2, 1, 1),
(96, 'Visita Francisco Javier Carretero', '', '2022-04-04', '14:00', '2022-04-04 15:17:15', 2, 1, 1),
(97, 'Visita Jonathan (Eli)', '', '2022-04-05', '10:00', '2022-04-05 10:45:51', 2, 1, 1),
(98, 'Firma Fernando Loscos', '', '2022-04-13', '09:30', '2022-04-05 10:59:39', 5, 1, 1),
(99, 'Firma Daniel Espinosa', '', '2022-04-20', '09:30', '2022-04-05 11:00:02', 5, 1, 1),
(100, 'Tasaciones Lete', '', '2022-04-06', '12:45', '2022-04-05 11:01:41', 3, 1, 1),
(103, 'Visita Maria Dolores Baena', '', '2022-04-08', '13:00', '2022-04-08 13:20:25', 2, 1, 1),
(102, 'Visita Andreu Quesada ', '', '2022-04-07', '11:00', '2022-04-05 11:03:18', 2, 1, 1),
(104, 'Tasaciones Alfons', '', '2022-04-08', '12:00', '2022-04-08 13:21:05', 3, 1, 1),
(105, 'Visita Oscar Soto', '', '2022-04-13', '11:30', '2022-04-13 11:40:39', 2, 1, 1),
(106, 'Visita Fran HernÃ¡ndez', '', '2022-04-13', '13:00', '2022-04-13 11:41:32', 2, 1, 1),
(107, 'Visita Rosana', '', '2022-04-13', '14:00', '2022-04-13 11:42:12', 2, 1, 1),
(108, 'Visita Maribel', '', '2022-04-14', '10:00', '2022-04-13 11:42:36', 2, 1, 1),
(109, 'Firma Maria Rosa SÃ¡nchez', '', '2022-04-29', '09:30', '2022-04-13 11:44:20', 5, 1, 1),
(110, 'Visita Cris', '', '2022-04-13', '12:00', '2022-04-13 11:47:49', 7, 1, 1),
(111, 'Visita Rafa y Thais', '', '2022-04-13', '12:00', '2022-04-13 12:03:26', 2, 1, 1),
(112, 'Visita Cristian Montoya Losada y Alejandra BurguÃ©s Moral', '', '2022-04-19', '12:00', '2022-04-19 15:14:34', 2, 1, 1),
(113, 'Visita Rui Filipe (PrÃ©stamo)', '', '2022-04-20', '11:00', '2022-04-20 12:16:30', 2, 1, 1),
(114, 'Visita Sindy Doblas y Aitor AlcÃ¡ntara', '', '2022-04-20', '12:00', '2022-04-20 12:59:58', 2, 1, 1),
(115, 'Visita Joni', '', '2022-04-27', '10:00', '2022-04-27 10:29:06', 2, 1, 1),
(116, 'Visita Ioana', '', '2022-04-27', '11:00', '2022-04-27 10:29:30', 2, 1, 1),
(117, 'Cristina', '', '2022-04-29', '08:20', '2022-04-29 08:21:30', 7, 1, 1),
(118, 'Visita Yolanda Gonzalez Soria', '', '2022-04-29', '12:00', '2022-04-29 13:00:54', 2, 1, 1),
(119, 'Visita Eva Mateo y Miguel Guerrero', '', '2022-05-03', '10:00', '2022-05-03 11:13:13', 2, 1, 1),
(120, 'Visita Merche y Paco', '', '2022-05-10', '09:00', '2022-05-10 09:49:21', 2, 1, 1),
(121, 'Visita Gian', '', '2022-05-10', '10:00', '2022-05-10 09:51:44', 2, 1, 1),
(122, 'Visita Mireia y RamÃ³n', '', '2022-05-10', '11:00', '2022-05-10 09:53:38', 2, 1, 1),
(123, 'Visita Carlos Gomez y Marta', '', '2022-05-10', '12:00', '2022-05-10 12:47:24', 2, 1, 1),
(124, 'Garnik Shushana', '', '2022-05-11', '10:00', '2022-05-11 10:56:04', 2, 1, 1),
(125, 'Visita Eva Santiago', '', '2022-05-11', '11:00', '2022-05-11 10:56:35', 2, 1, 1),
(126, 'Visita Isi', '', '2022-05-11', '13:30', '2022-05-11 10:57:27', 2, 1, 1),
(127, 'Visita Gonzalo', '', '2022-05-12', '10:00', '2022-05-12 08:14:49', 2, 1, 1),
(128, 'Visita Encarna Moument', '', '2022-05-12', '11:00', '2022-05-12 08:15:36', 2, 1, 1),
(129, 'Visita JosÃ© Martinez', '', '2022-05-12', '12:00', '2022-05-12 08:17:24', 2, 1, 1),
(130, 'Visita Gardenia', '', '2022-05-13', '13:00', '2022-05-13 14:20:04', 2, 1, 1),
(131, 'Visita Pareja con muchos tatuajes', '', '2022-05-13', '14:00', '2022-05-16 12:58:11', 2, 1, 1),
(132, 'Visita Paula MaciÃ ', '', '2022-05-17', '10:00', '2022-05-17 10:32:54', 2, 1, 1),
(133, 'Firma Noelia GirÃ³n', '', '2022-05-20', '10:00', '2022-05-17 15:02:32', 5, 1, 1),
(134, 'Firma Felipe', '', '2022-05-24', '09:30', '2022-05-17 15:04:21', 5, 1, 1),
(135, 'Firma Luis y Lorena', '', '2022-05-18', '09:30', '2022-05-18 13:10:43', 5, 1, 1),
(136, 'Visita Duadi', '', '2022-05-18', '11:00', '2022-05-18 13:13:18', 2, 1, 1),
(137, 'Visita Sonia Lechuga', '', '2022-05-18', '12:00', '2022-05-18 14:54:39', 2, 1, 1),
(138, 'Visita Alejandra Calafell (Francesc)', '', '2022-05-18', '14:00', '2022-05-18 14:56:49', 2, 1, 1),
(139, 'Visita Mercedes Salas Aibar', '', '2022-05-19', '11:30', '2022-05-19 11:42:48', 2, 1, 1),
(140, 'Firma Daniel Corcoles y Nuria', '', '2022-05-27', '09:00', '2022-05-27 12:49:19', 5, 1, 1),
(141, 'Firma Noelia (Omar)', '', '2022-05-27', '09:00', '2022-05-27 12:49:43', 5, 1, 1),
(142, 'Firma Maribel', '', '2022-05-30', '09:00', '2022-05-27 12:50:24', 5, 1, 1),
(143, 'Firma Matilde Echepares', '', '2022-06-01', '09:00', '2022-06-01 09:51:11', 5, 1, 1),
(144, 'Visita Jordi ING (pareja)', '', '2022-06-01', '10:00', '2022-06-01 12:03:46', 2, 1, 1),
(145, 'Visita Jordi ING (Odalis Modesto PeÃ±a)', '', '2022-06-01', '11:00', '2022-06-01 12:04:51', 2, 1, 1),
(146, 'Visita Jordi ING (Arismendis Villalona)', '', '2022-06-01', '11:00', '2022-06-01 12:05:15', 2, 1, 1),
(147, 'Visita Felix Ramirez y Hind Azzine', '', '2022-06-01', '12:00', '2022-06-01 12:18:36', 2, 1, 1),
(148, 'Visita Diana Soler Alvarez', '', '2022-06-01', '13:00', '2022-06-01 13:06:27', 2, 1, 1),
(149, 'Firma Carlos Jorge', '', '2022-06-07', '09:30', '2022-06-01 13:07:10', 1, 1, 1),
(150, 'Firma Sara Calvo', 'Banco: DeutscheBank', '2022-06-17', '09:00', '2022-06-01 13:07:59', 5, 1, 1),
(151, 'Visita Nacer (Francesc)', '', '2022-06-02', '12:30', '2022-06-02 12:46:21', 2, 1, 1),
(152, 'Visita Carlos Fuentes MirÃ³n', '', '2022-06-03', '13:00', '2022-06-07 08:22:57', 2, 1, 1),
(153, 'Visita Jose Miguel Gonzalez', '', '2022-06-07', '10:30', '2022-06-07 12:17:53', 2, 1, 1),
(154, 'Visita David Perez', '', '2022-06-07', '13:30', '2022-06-07 13:35:29', 2, 1, 1),
(155, 'Visita Pilar', '', '2022-06-13', '11:00', '2022-06-13 12:23:30', 2, 1, 1),
(156, 'Visita Joaquin Norberto Martinez y Lizesthgab Flores Domingez', '', '2022-06-15', '09:00', '2022-06-15 09:51:07', 2, 1, 1),
(157, 'Firma Emilia', '', '2022-06-14', '09:30', '2022-06-15 09:51:51', 5, 1, 1),
(158, 'Visita Maria JosÃ© Garcia y Jordi MuntanÃ©', '', '2022-06-16', '12:00', '2022-06-17 08:18:19', 2, 1, 1),
(160, 'Firma MÂª Dolors', '', '2022-06-22', '09:30', '2022-06-17 12:52:59', 5, 1, 1),
(161, 'Firma Pablo y Evangelina', 'Banco: DeutscheBank', '2022-06-29', '09:30', '2022-06-17 12:53:47', 5, 1, 1),
(162, 'Firma Antonio Amaya', '', '2022-07-05', '09:00', '2022-06-17 12:54:25', 5, 1, 1),
(163, 'Visita Alexandra (680821660)', '', '2022-06-09', '11:00', '2022-06-17 13:00:09', 2, 1, 1),
(164, 'Visita Aram', '', '2022-06-09', '13:00', '2022-06-17 13:01:54', 2, 1, 1),
(165, 'Visita Padre Sandra NavÃ³', '', '2022-06-28', '10:00', '2022-06-28 11:00:35', 2, 1, 1),
(166, 'Firma Gemma Fava', '', '2022-07-13', '09:30', '2022-06-28 11:02:13', 5, 1, 1),
(167, 'Visita Patricia Sanchez Rebollo', '', '2022-06-29', '12:00', '2022-06-29 14:17:09', 2, 1, 1),
(168, 'Firma Kaoutar', '', '2022-07-01', '09:30', '2022-07-01 08:26:35', 5, 1, 1),
(169, 'Visita Gerard RibÃ©', '', '2022-07-01', '13:15', '2022-07-01 14:18:52', 2, 1, 1),
(170, 'Visita Roksana PredoÃ±', '', '2022-07-04', '10:30', '2022-07-04 11:33:52', 2, 1, 1),
(171, 'Visita Antonio Garibaldi Vellentina (Jordi ING)', '', '2022-07-04', '12:00', '2022-07-04 12:09:04', 2, 1, 1),
(172, 'Visita Alberto Horcas Repiso', '', '2022-07-05', '09:45', '2022-07-05 09:47:16', 2, 1, 1),
(173, 'Visita Andres Chimeno Delgado', 'achimenod@gmail.com', '2022-07-05', '10:30', '2022-07-05 10:57:01', 2, 1, 1),
(174, 'Visita Colegas JosÃ© Miguel NuÃ±ez', '', '2022-07-07', '10:00', '2022-07-07 10:39:38', 2, 1, 1),
(175, 'Firma Alejandra', '', '2022-07-08', '09:30', '2022-07-07 10:40:44', 5, 1, 1),
(176, 'Firma Bruno y Laura', 'Banco: DeutscheBank', '2022-07-20', '08:50', '2022-07-08 14:28:11', 5, 1, 1),
(177, 'Ainhoa Campos', 'Banco: DeutscheBank', '2022-07-21', '09:00', '2022-07-08 14:28:49', 5, 1, 1),
(178, 'Visita Llucia Roser Acosta y David Arias Toro (Jordi ING)', '', '2022-07-13', '12:00', '2022-07-13 12:25:52', 2, 1, 1),
(179, 'Firma Ferran Robles', '', '2022-07-22', '13:00', '2022-07-13 12:27:16', 5, 1, 1),
(180, 'Firma Joel Arias', '', '2022-07-20', '09:30', '2022-07-13 12:27:53', 5, 1, 1),
(181, 'Visita Fani Intituto', '', '2022-07-13', '13:00', '2022-07-14 11:40:46', 2, 1, 1),
(182, 'Visita Janet (Madre Vane)', '', '2022-07-14', '10:30', '2022-07-14 11:41:57', 2, 1, 1),
(183, 'Visita Joan Gilber', '', '2022-07-14', '11:15', '2022-07-14 11:43:04', 2, 1, 1),
(184, 'Visita Silvia Lopez MarÃ­nez y AgustÃ­n Martinez MillÃ¡n', '', '2022-07-14', '12:00', '2022-07-14 11:46:30', 2, 1, 1),
(185, 'Visita Vanessa Mellanye Aguayo Wong y Byron Gregorio Miranda', '', '2022-07-19', '09:00', '2022-07-19 12:42:19', 2, 1, 1),
(186, 'Visita Borja Gordillo', '', '2022-07-20', '10:00', '2022-07-20 10:11:55', 2, 1, 1),
(187, 'Visita Alexander', '', '2022-07-21', '14:00', '2022-07-22 08:27:42', 2, 1, 1),
(188, 'Antonio Gisbert Castro', '', '2022-07-28', '09:00', '2022-07-28 09:31:35', 2, 1, 1),
(189, 'Jenny Martinez', '', '2022-08-10', '', '2022-08-12 08:24:54', 2, 1, 1),
(190, 'Alba Fernandez Ballesta', '', '2022-08-10', '', '2022-08-12 08:28:18', 2, 1, 1),
(191, 'Vanesa Ponce ', '', '2022-08-10', '', '2022-08-12 08:29:07', 2, 1, 1),
(192, 'Rosa ', '', '2022-08-10', '', '2022-08-12 08:29:57', 2, 1, 1),
(193, 'Alba y Richi', '', '2022-08-11', '', '2022-08-12 08:30:27', 2, 1, 1),
(194, 'Lidia Martinez', '', '2022-08-11', '', '2022-08-12 08:31:04', 2, 1, 1),
(195, 'Firma Arnau Caldes', '', '2022-08-10', '11:00', '2022-08-22 08:55:05', 5, 1, 1),
(196, 'Firma Muriel', '', '2022-08-22', '11:00', '2022-08-22 12:05:21', 5, 1, 1),
(197, 'Visita Jaime Virgili Molina y Clarabel Romero Cabezas', '', '2022-08-23', '10:45', '2022-08-23 11:34:44', 2, 1, 1),
(198, 'Firma Valeria Popov', '', '2022-08-23', '09:00', '2022-08-23 12:03:41', 5, 1, 1),
(199, 'Firma Jordi Carreras', '', '2022-08-23', '09:00', '2022-08-23 12:04:19', 5, 1, 1),
(200, 'Visita AnÃ¡s Hamamucha', '', '2022-08-25', '09:30', '2022-08-25 10:04:06', 2, 1, 1),
(201, 'Firma Jeni y Brian', '', '2022-08-29', '09:30', '2022-08-29 10:27:37', 5, 1, 1),
(202, 'Firma Tania', '', '2022-08-30', '09:00', '2022-08-29 10:28:00', 5, 1, 1),
(203, 'Firma Joquin y Lize (MÃ©dicos)', '', '2022-08-31', '10:30', '2022-08-29 10:28:43', 5, 1, 1),
(204, 'Visita Andrea Sclafani (Italiano)', '', '2022-08-30', '10:45', '2022-08-31 11:51:40', 2, 1, 1),
(205, 'Visita Marc CabrÃ© Junyent y Maria JosÃ© Enriquez MartÃ­nez', '', '2022-08-31', '11:00', '2022-08-31 12:02:24', 2, 1, 1),
(206, 'Visita Oscar MarÃ­n y Lorena', '', '2022-08-31', '13:00', '2022-08-31 12:55:52', 2, 1, 1),
(207, 'Visita Alberto Horcas', '', '2022-09-02', '10:45', '2022-09-02 10:45:26', 2, 1, 1),
(208, 'Visita Azahara', 'Vestido de margaritas y se escaquea de pagar los 50', '2022-09-02', '12:00', '2022-09-02 12:37:26', 2, 1, 1),
(209, 'Visita Josmar', '', '2022-09-06', '11:30', '2022-09-06 11:49:41', 2, 1, 1),
(210, 'Visita Jennifer Diaz Macia', '', '2022-09-08', '10:00', '2022-09-08 11:02:26', 2, 1, 1),
(211, 'Firma Carlos JosÃ© Colomina Garcia', 'Banco: Santander\r\nFirmada en Sevilla', '2022-09-12', '11:00', '2022-09-12 13:59:28', 5, 1, 1),
(212, 'Visita Jose Contreras (con el vendedor)', '', '2022-09-13', '10:00', '2022-09-13 11:21:44', 2, 1, 1),
(213, 'Visita Juan Emilio', '', '2022-09-13', '10:45', '2022-09-13 11:22:50', 2, 1, 1),
(214, 'Visita RubÃ©n Falgas CedrÃ¡n y Maria Montserrat Lopez Gonzalez', '', '2022-09-13', '11:30', '2022-09-13 11:23:55', 2, 1, 1),
(215, 'Visita Alexander Monsalve y Andrea Parras', '', '2022-09-14', '10:00', '2022-09-14 10:33:38', 2, 1, 1),
(216, 'Visita Mireia Ramirez', '', '2022-09-14', '10:45', '2022-09-14 11:08:56', 2, 1, 1),
(217, 'Visita Emili Panosa', '', '2022-09-14', '11:30', '2022-09-14 11:39:49', 2, 1, 1),
(218, 'Visita Silvia y Miguel', 'Amigos Meri', '2022-09-15', '10:30', '2022-09-15 11:32:48', 2, 1, 1),
(219, 'Firma Marta Camacho', '', '2022-10-04', '09:00', '2022-09-15 14:56:28', 1, 1, 1),
(220, 'Visita Erik BalfagÃ³n Garrido y Eva Mateu Gardeano', '', '2022-09-27', '12:30', '2022-09-27 12:44:27', 2, 1, 1),
(221, 'Visita Miguel LÃ³pez Jimenez', '', '2022-09-28', '11:00', '2022-09-28 11:14:30', 2, 1, 1),
(222, 'Visita Marta Granell Mayor', '', '2022-09-28', '11:30', '2022-09-28 11:34:35', 2, 1, 1),
(223, 'Visita Marilo (Amadeu)', 'Estuvo esperando hasta las 11.', '2022-09-29', '10:00', '2022-09-29 11:04:23', 2, 1, 1),
(224, 'Visita Ester LupiaÃ±ez Piris', '', '2022-09-29', '11:30', '2022-09-29 11:55:24', 2, 1, 1),
(225, 'Visita David Gomez Martinez y Tamara Flores PecellÃ­n', '', '2022-10-04', '10:00', '2022-10-04 10:19:17', 2, 1, 1),
(226, 'Visita Maria Fernanda Lopez Palacios', '', '2022-10-05', '10:00', '2022-10-05 10:06:07', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`id`, `name`, `description`) VALUES
(1, 'Oficina', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `created_at`, `category_id`, `is_done`, `user_id`, `project_id`) VALUES
(1, 'Tarea de prueba', '', '2022-03-08 09:26:09', 4, 0, 1, 1),
(2, 'Alba Fernandez Ballesta', '', '2022-08-12 08:26:57', 2, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'admin', '', '', '', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2022-02-02 13:24:29'),
(2, 'usuario', 'Usuario', 'Usuario', 'oficina@habitatgestions.com', 'fa83a0f95383342d282b595c24708f5f68088943', 1, 0, '2022-02-02 14:00:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT de la tabla `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
