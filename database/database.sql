-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: PMYSQL154.dns-servicio.com:3306
-- Tiempo de generación: 16-03-2022 a las 10:44:49
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.24

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
(5, 'Firmadas', NULL, '#C70039');

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
(2, 'Visita Angel Fernandez', '', '2022-02-22', '09:00', '2022-02-02 13:49:37', 2, 1, 1),
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
(26, 'Firma Fran y Nani', '', '2022-01-10', '10:00', '2022-02-15 14:19:10', 5, 1, 1),
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
(38, 'Firma Maria JosÃ© HernÃ¡ndez', '', '2022-03-04', '09:30', '2022-02-25 11:03:13', 1, 1, 1),
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
(54, 'Firma Miguel Angel y Jessica', '', '2022-03-21', '09:30', '2022-03-07 11:51:34', 1, 1, 1),
(50, 'Visita Javi Alca', '', '2022-03-07', '12:00', '2022-03-03 08:28:45', 2, 1, 1),
(51, 'Visita Montse Moreno', '', '2022-03-07', '13:00', '2022-03-03 08:29:19', 2, 1, 1),
(53, 'Visita Pedro Gelida', '', '2022-03-07', '14:00', '2022-03-07 09:56:27', 2, 1, 1),
(57, 'Visita Oriol', '', '2022-03-08', '11:00', '2022-03-08 09:00:33', 2, 1, 1),
(58, 'Visita Luisa', '', '2022-03-08', '12:00', '2022-03-08 09:01:10', 2, 1, 1),
(59, 'Daniel Jesus Mena Pirozzi y Sara Bernal Romandini', '', '2022-03-08', '13:00', '2022-03-08 09:01:43', 2, 1, 1),
(60, 'Visita Francesc (Oliver Gonzalez y Jesica Cabo)', '', '2022-03-08', '10:00', '2022-03-08 09:02:16', 2, 1, 1),
(61, 'Sr. X', '', '2022-03-09', '10:00', '2022-03-08 09:02:51', 2, 1, 1),
(62, 'Visita Matteo', '', '2022-03-09', '11:00', '2022-03-08 09:03:36', 2, 1, 1),
(64, 'Visita Josep ', '', '2022-03-10', '11:00', '2022-03-10 11:25:10', 2, 1, 1),
(65, 'Visita David Ferri', '', '2022-03-10', '12:00', '2022-03-10 14:38:40', 2, 1, 1),
(66, 'Visita Pareja Argentinos', '', '2022-03-10', '13:00', '2022-03-10 14:39:15', 2, 1, 1),
(67, 'Visita Hombre con mascarilla pequeÃ±a', '', '2022-03-10', '14:00', '2022-03-10 14:40:03', 2, 1, 1),
(68, 'Visita Ioana', '', '2022-03-10', '14:00', '2022-03-10 14:40:36', 2, 1, 1),
(69, 'Antonio (Nito)', '', '2022-03-24', '12:00', '2022-03-10 14:54:25', 1, 1, 1),
(70, 'Visita Lorena Lopez y Luis Ruiz', '', '2022-03-16', '10:00', '2022-03-15 08:15:32', 2, 1, 1),
(71, 'Visita Miquel Molina', '', '2022-03-16', '11:00', '2022-03-15 08:16:22', 2, 1, 1),
(72, 'Visita Estefania', '', '2022-03-16', '12:00', '2022-03-15 08:16:59', 2, 1, 1),
(73, 'Visita Javier y Ariadna (Francesc)', '', '2022-03-17', '12:00', '2022-03-15 08:17:46', 2, 1, 1),
(74, 'Visita Humberto Solano', '', '2022-03-17', '11:00', '2022-03-15 08:18:43', 2, 1, 1),
(75, 'Visita David Teruel (Francesc)', '', '2022-03-17', '12:00', '2022-03-15 08:22:47', 2, 1, 1),
(78, 'Visita Amaya', '', '2022-03-17', '10:00', '2022-03-15 14:34:27', 2, 1, 1),
(77, 'Visita Vero (Piera)', '', '2022-03-15', '14:30', '2022-03-15 14:29:03', 2, 1, 1);

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
(1, 'Tarea de prueba', '', '2022-03-08 09:26:09', 4, 0, 1, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
