-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2020 a las 23:47:34
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Learn PHP 72', '300.00', 'Viele sozialwissenschaftliche Untersuchungen beruhen auf Rekonstruktionen von Situationen oder Prozessen. Das Lehrbuch vermittelt anhand zweier Beispieluntersuchungen anwendungsbereites Wissen über alle Phasen solcher rekonstruierender Untersuchungen und stellt je eine Erhebungs- und eine Auswertungsmethode ausführlich vor. Die Interviewpartner werden als Experten aufgefasst, die über spezifisches Wissen über die zu rekonstruierenden Sachverhalte verfügen. Die qualitative Inhaltsanalyse ermöglicht eine systematische Extraktion relevanter Informationen aus den Interviews und ist zugleich offen für nicht erwartete Befunde. Mit Lernfragen nach jedem Kapitel und einer übersichtlichen Gliederung eignet sich das Buch als praxisorientierte Einführung.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(2, 'Professional ASP.NET MVC 5', '1005.35', 'This book explains, demonstrates, and applies techniques that intersect with two great tools of the information age. The first tool, the database, is relatively old. On the other hand, the second tool, the Internet, is still quite young. And when you pair these tools—voilà! You can create powerful web pages.\r\n\r\nWith the help of Beginning ASP Databases, you will learn to incorporate databases into your ASP applications using ADO (which provides a set of objects that you can connect to, read from, and write to). You\'ll gain comfort installing necessary software handling stored procedures. And this book will answer many real-world questions, complete with code for you to copy and paste.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(3, 'Beginning ASP Databases', '48.32', 'Journal of Science Education and Technology is an interdisciplinary forum for the publication of original peer-reviewed, contributed and invited research articles of the highest quality that address the intersection of science education and technology with implications for improving and enhancing science education at all levels across the world. Topics covered can be categorized as disciplinary (biology, chemistry, physics, as well as some applications of computer science and engineering, including the processes of learning, teaching and teacher development), technological (hardware, software, deigned and situated environments involving applications characterized as with, through and in), and organizational (legislation, administration, implementation and teacher enhancement)', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(4, 'test de prueba', '50.36', 'Journal of Science Education and Technology is an interdisciplinary forum for the publication of original peer-reviewed, contributed and invited research articles of the highest quality that address the intersection of science education and technology with implications for improving and enhancing science education at all levels across the world. Topics covered can be categorized as disciplinary (biology, chemistry, physics, as well as some applications of computer science and engineering, including the processes of learning, teaching and teacher development), technological (hardware, software, deigned and situated environments involving applications characterized as with, through and in), and organizational (legislation, administration, implementation and teacher enhancement)', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(5, 'Armj', '25.36', 'Journal of Science Education and Technology is an interdisciplinary forum for the publication of original peer-reviewed, contributed and invited research articles of the highest quality that address the intersection of science.', 'http://duramas.com.ec/wp-content/uploads/2020/02/410nYSBxerL._SY355_.jpg?_t=1580997326'),
(6, 'Producto de prueba', '15.26', 'Descripción del producto ', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(8, 'Retorno de Datos', '1100.00', 'Cantidad del precio del producto', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `clave_transaccion` varchar(250) NOT NULL,
  `paypal_datos` text NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(5000) NOT NULL,
  `total` decimal(60,2) NOT NULL,
  `estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `clave_transaccion`, `paypal_datos`, `fecha`, `correo`, `total`, `estado`) VALUES
(1, '12345678910', '', '2020-11-11 11:07:17', 'armj1923@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2020-11-11 11:07:17', 'armj1923@gmail.com', '700.00', 'pendiente'),
(3, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 11:20:40', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(4, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 11:25:31', 'armj1923@gmail.com', '348.32', 'pendiente'),
(5, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 11:26:04', 'armj1923@gmail.com', '348.32', 'pendiente'),
(6, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 11:30:39', 'desarrollador@duramas.com.ec', '1429.39', 'pendiente'),
(7, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:07:52', 'adrianmj9@hotmail.com', '1429.39', 'pendiente'),
(8, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:12:32', 'armj1923@gmail.com', '1429.39', 'pendiente'),
(9, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:21:25', 'armj1923@gmail.com', '1429.39', 'pendiente'),
(10, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:22:49', 'armj1923@gmail.com', '1429.39', 'pendiente'),
(11, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:23:53', 'armj1923@gmail.com', '1429.39', 'pendiente'),
(12, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:25:08', 'armj1923@gmail.com', '1429.39', 'pendiente'),
(13, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:25:29', 'armj1923@gmail.com', '50.36', 'pendiente'),
(14, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:38:10', 'armj1923@gmail.com', '50.36', 'pendiente'),
(15, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:40:07', 'armj1923@gmail.com', '50.36', 'pendiente'),
(16, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:43:11', 'armj1923@gmail.com', '50.36', 'pendiente'),
(17, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:43:23', 'armj1923@gmail.com', '50.36', 'pendiente'),
(18, 'm9v1qomli1br4ocr00im6', '', '2020-11-11 12:44:42', 'armj1923@gmail.com', '50.36', 'pendiente'),
(19, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:44:57', 'armj1923@gmail.com', '50.36', 'pendiente'),
(20, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:45:07', 'armj1923@gmail.com', '50.36', 'pendiente'),
(21, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:45:19', 'armj1923@gmail.com', '50.36', 'pendiente'),
(22, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:46:45', 'armj1923@gmail.com', '50.36', 'pendiente'),
(23, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:52:44', 'armj1923@gmail.com', '50.36', 'pendiente'),
(24, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 12:52:51', 'armj1923@gmail.com', '50.36', 'pendiente'),
(25, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 13:01:51', 'armj1923@gmail.com', '50.36', 'pendiente'),
(26, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 13:03:56', 'armj1923@gmail.com', '50.36', 'pendiente'),
(27, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 13:04:42', 'armj1923@gmail.com', '50.36', 'pendiente'),
(28, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 13:04:53', 'armj1923@gmail.com', '50.36', 'pendiente'),
(29, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 14:19:36', 'adriantest@gmail.com', '1353.67', 'pendiente'),
(30, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 14:47:22', 'desarrollador@duramas.com.ec', '1104.03', 'pendiente'),
(31, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 14:47:41', 'desarrollador@duramas.com.ec', '1104.03', 'pendiente'),
(32, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 14:51:34', 'desarrollador@duramas.com.ec', '1104.03', 'pendiente'),
(33, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 14:54:33', 'desarrollador@duramas.com.ec', '348.32', 'pendiente'),
(34, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 14:55:20', 'desarrollador@duramas.com.ec', '1104.03', 'pendiente'),
(35, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 15:10:00', 'armj1923@gmail.com', '1104.03', 'pendiente'),
(36, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 15:11:00', 'armj1923@gmail.com', '1104.03', 'pendiente'),
(37, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 15:17:59', 'armj1923@gmail.com', '1104.03', 'pendiente'),
(38, 'm9v1qomli1br4ocr00im668egj', '', '2020-11-11 15:18:33', 'armj1923@gmail.com', '1104.03', 'pendiente'),
(39, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:21:44', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(40, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:25:42', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(41, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:25:57', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(42, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:35:08', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(43, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:36:35', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(44, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:36:52', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(45, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:37:13', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(46, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:37:23', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(47, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 15:40:54', 'desarrollador@duramas.com.ec', '1330.71', 'pendiente'),
(48, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 15:58:51', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(49, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:03:52', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(50, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:08:27', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(51, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:09:15', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(52, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:11:41', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(53, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:11:45', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(54, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:15:00', 'desarrollador@duramas.com.ec', '1305.35', 'pendiente'),
(55, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:15:14', 'nohemi.19@hotmail.com', '1005.35', 'pendiente'),
(56, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:16:06', 'desarrollador@duramas.com.ec', '1005.35', 'pendiente'),
(57, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:17:05', 'desarrollador@duramas.com.ec', '1005.35', 'pendiente'),
(58, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:17:38', 'desarrollador@duramas.com.ec', '1005.35', 'pendiente'),
(59, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:18:12', 'desarrollador@duramas.com.ec', '1005.35', 'pendiente'),
(60, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-11 16:18:51', 'desarrollador@duramas.com.ec', '1005.35', 'pendiente'),
(61, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:30:50', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(62, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:48:49', 'armj1923@gmail.com', '1368.93', 'pendiente'),
(63, 'brqk4gvvu358atm34412186nlb', '', '2020-11-11 16:54:49', 'armj1923@gmail.com', '1320.61', 'pendiente'),
(64, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 09:03:41', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(65, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 09:06:59', 'armj1923@gmail.com', '1305.35', 'pendiente'),
(66, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 09:07:25', 'armj1923@gmail.com', '1404.03', 'pendiente'),
(67, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 09:19:24', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(68, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 09:30:01', 'armj1923@gmail.com', '1368.93', 'pendiente'),
(69, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 09:46:21', 'armj1923@gmail.com', '1368.93', 'pendiente'),
(70, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 10:14:00', 'armj1923@gmail.com', '1419.29', 'pendiente'),
(71, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 10:14:44', 'armj1923@gmail.com', '1419.29', 'pendiente'),
(72, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 10:14:52', 'armj1923@gmail.com', '1419.29', 'pendiente'),
(73, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 10:15:03', 'armj1923@gmail.com', '50.36', 'pendiente'),
(74, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 10:16:21', 'armj1923@gmail.com', '50.36', 'pendiente'),
(75, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 10:19:47', 'armj1923@gmail.com', '1119.29', 'pendiente'),
(76, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:02:16', 'armj1923@gmail.com', '48.32', 'pendiente'),
(77, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:08:53', 'armj1923@gmail.com', '1104.03', 'pendiente'),
(78, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:10:43', 'armj1923@gmail.com', '398.68', 'pendiente'),
(79, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:12:28', 'armj1923@gmail.com', '348.32', 'pendiente'),
(80, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:14:44', 'armj1923@gmail.com', '25.36', 'pendiente'),
(81, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:19:30', 'armj1923@gmail.com', '25.36', 'pendiente'),
(82, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:23:06', 'armj1923@gmail.com', '25.36', 'pendiente'),
(83, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-12 11:42:01', 'desarrollador@duramas.com.ec', '48.32', 'pendiente'),
(84, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:45:42', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(85, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 11:49:13', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(86, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:06:16', 'armj1923@gmail.com', '1053.67', 'pendiente'),
(87, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:07:11', 'armj1923@gmail.com', '1053.67', 'pendiente'),
(88, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:07:23', 'armj1923@gmail.com', '1053.67', 'pendiente'),
(89, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-12 12:10:27', 'desarrollador@duramas.com.ec', '1119.29', 'pendiente'),
(90, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-12 12:10:37', 'desarrollador@duramas.com.ec', '1119.29', 'pendiente'),
(91, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-12 12:11:15', 'desarrollador@duramas.com.ec', '1119.29', 'pendiente'),
(92, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-12 12:12:23', 'desarrollador@duramas.com.ec', '1119.29', 'pendiente'),
(93, '1bsudhqm82mtd1jbqgv3q1viea', '', '2020-11-12 12:12:36', 'desarrollador@duramas.com.ec', '1005.35', 'pendiente'),
(94, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:17:22', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(95, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:21:08', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(96, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:21:48', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(97, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:23:07', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(98, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:23:12', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(99, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:24:12', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(100, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:28:52', 'armj1923@gmail.com', '1100.00', 'pendiente'),
(101, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:32:21', 'armj1923@gmail.com', '2453.67', 'pendiente'),
(102, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:37:16', 'armj1923@gmail.com', '2453.67', 'pendiente'),
(103, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:53:18', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(104, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:53:38', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(105, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:53:42', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(106, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 12:54:30', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(107, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:03:09', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(108, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:03:16', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(109, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:03:20', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(110, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:20:12', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(111, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:20:20', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(112, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:20:37', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(113, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 13:47:00', 'armj1923@gmail.com', '1148.32', 'pendiente'),
(114, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6WYQAI1W923824BU426070V\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"24P94012TS8841431\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1115.26\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1115.26\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,115.26\",\"custom\":\"brqk4gvvu358atm34412186nlb#g8iC6fRddRjAkVsBS3g2nQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"08A0242044394761H\",\"state\":\"completed\",\"amount\":{\"total\":\"1115.26\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1115.26\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"32.64\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6WYQAI1W923824BU426070V\",\"create_time\":\"2020-11-12T19:08:05Z\",\"update_time\":\"2020-11-12T19:08:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/08A0242044394761H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/08A0242044394761H/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6WYQAI1W923824BU426070V\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T19:07:45Z\",\"update_time\":\"2020-11-12T19:08:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6WYQAI1W923824BU426070V\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 14:07:32', 'armj1923@gmail.com', '1115.26', 'completo'),
(115, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6WZEGA2RG712109X370781A\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"8K655002K9535425R\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1425.36\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1425.36\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,425.36\",\"custom\":\"brqk4gvvu358atm34412186nlb#EKVAURFD/rXH4fsiuEW4cQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"78X83827D06194113\",\"state\":\"completed\",\"amount\":{\"total\":\"1425.36\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1425.36\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"41.64\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6WZEGA2RG712109X370781A\",\"create_time\":\"2020-11-12T19:51:14Z\",\"update_time\":\"2020-11-12T19:51:14Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/78X83827D06194113\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/78X83827D06194113/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6WZEGA2RG712109X370781A\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T19:50:48Z\",\"update_time\":\"2020-11-12T19:51:14Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6WZEGA2RG712109X370781A\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 14:50:42', 'armj1923@gmail.com', '1425.36', 'completo'),
(116, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6WZLNY5TT5752934571190P\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"7TK303683H5763944\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1425.36\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1425.36\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,425.36\",\"custom\":\"brqk4gvvu358atm34412186nlb#y7gViD7qkDC5wBCGqdCh3g==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"5C4026624J200051K\",\"state\":\"completed\",\"amount\":{\"total\":\"1425.36\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1425.36\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"41.64\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6WZLNY5TT5752934571190P\",\"create_time\":\"2020-11-12T20:06:53Z\",\"update_time\":\"2020-11-12T20:06:53Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5C4026624J200051K\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5C4026624J200051K/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6WZLNY5TT5752934571190P\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T20:06:15Z\",\"update_time\":\"2020-11-12T20:06:53Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6WZLNY5TT5752934571190P\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 15:05:56', 'armj1923@gmail.com', '1425.36', 'completo'),
(117, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W2TQI8D116448TN096430G\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"7FB55948XF3648154\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1425.36\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1425.36\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,425.36\",\"custom\":\"brqk4gvvu358atm34412186nlb#SQoFl2TfhArS/8/pcI6+Ng==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"5MU45885JM578353C\",\"state\":\"completed\",\"amount\":{\"total\":\"1425.36\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1425.36\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"41.64\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W2TQI8D116448TN096430G\",\"create_time\":\"2020-11-12T21:32:12Z\",\"update_time\":\"2020-11-12T21:32:12Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5MU45885JM578353C\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5MU45885JM578353C/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W2TQI8D116448TN096430G\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T21:31:45Z\",\"update_time\":\"2020-11-12T21:32:12Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W2TQI8D116448TN096430G\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 16:31:43', 'armj1923@gmail.com', '1425.36', 'completo'),
(118, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W234Y1H6533136D885414X\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4UE00179PW5395115\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1104.03\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1104.03\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,104.03\",\"custom\":\"brqk4gvvu358atm34412186nlb#c/Uw6ABTvxKNHKU2Wl0Ipw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"74826251M86471645\",\"state\":\"completed\",\"amount\":{\"total\":\"1104.03\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1104.03\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"32.32\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W234Y1H6533136D885414X\",\"create_time\":\"2020-11-12T21:50:03Z\",\"update_time\":\"2020-11-12T21:50:03Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/74826251M86471645\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/74826251M86471645/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W234Y1H6533136D885414X\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T21:49:39Z\",\"update_time\":\"2020-11-12T21:50:03Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W234Y1H6533136D885414X\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 16:49:37', 'armj1923@gmail.com', '1104.03', 'completo'),
(119, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3BPA73P28561G9360570S\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4YT95575YL312441F\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"2405.35\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"2405.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$2,405.35\",\"custom\":\"brqk4gvvu358atm34412186nlb#zvxTfpvx6wSp9ghYy3D+fw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"8E999109DS5191150\",\"state\":\"completed\",\"amount\":{\"total\":\"2405.35\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"2405.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"70.06\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3BPA73P28561G9360570S\",\"create_time\":\"2020-11-12T22:01:44Z\",\"update_time\":\"2020-11-12T22:01:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8E999109DS5191150\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8E999109DS5191150/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3BPA73P28561G9360570S\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:01:32Z\",\"update_time\":\"2020-11-12T22:01:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3BPA73P28561G9360570S\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:01:15', 'armj1923@gmail.com', '2405.35', 'completo'),
(120, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 17:08:21', 'armj1923@gmail.com', '1448.32', 'pendiente'),
(121, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3E2Q1KH32306D45363947\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"19U43556R36719935\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1448.32\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1448.32\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,448.32\",\"custom\":\"brqk4gvvu358atm34412186nlb#ErwS4/fQWglVAsQKcTXo/g==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"9M702804169502637\",\"state\":\"completed\",\"amount\":{\"total\":\"1448.32\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1448.32\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"42.30\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3E2Q1KH32306D45363947\",\"create_time\":\"2020-11-12T22:09:06Z\",\"update_time\":\"2020-11-12T22:09:06Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9M702804169502637\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9M702804169502637/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3E2Q1KH32306D45363947\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:08:42Z\",\"update_time\":\"2020-11-12T22:09:06Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3E2Q1KH32306D45363947\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:08:40', 'armj1923@gmail.com', '1448.32', 'completo'),
(122, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 17:14:15', 'armj1923@gmail.com', '1353.67', 'pendiente'),
(123, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3JOQ1R319863M8559614L\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"7H656452M06578908\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1353.67\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1353.67\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,353.67\",\"custom\":\"brqk4gvvu358atm34412186nlb#OmQkcEYLEwH3Agz1axxiAg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"9JL05722VB5646059\",\"state\":\"completed\",\"amount\":{\"total\":\"1353.67\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1353.67\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"39.56\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3JOQ1R319863M8559614L\",\"create_time\":\"2020-11-12T22:18:48Z\",\"update_time\":\"2020-11-12T22:18:48Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9JL05722VB5646059\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9JL05722VB5646059/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3JOQ1R319863M8559614L\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:18:34Z\",\"update_time\":\"2020-11-12T22:18:48Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3JOQ1R319863M8559614L\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:18:12', 'armj1923@gmail.com', '1353.67', 'completo'),
(124, 'brqk4gvvu358atm34412186nlb', '', '2020-11-12 17:31:22', 'armj1923@gmail.com', '1404.03', 'pendiente'),
(125, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3PUY7WV365854K750345T\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"6MA60531VR5089902\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1404.03\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1404.03\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,404.03\",\"custom\":\"brqk4gvvu358atm34412186nlb#vMMjCi0qtSqUfg5fnUyrLg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"34Y02032NT635232Y\",\"state\":\"completed\",\"amount\":{\"total\":\"1404.03\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1404.03\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"41.02\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3PUY7WV365854K750345T\",\"create_time\":\"2020-11-12T22:32:00Z\",\"update_time\":\"2020-11-12T22:32:00Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/34Y02032NT635232Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/34Y02032NT635232Y/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3PUY7WV365854K750345T\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:31:47Z\",\"update_time\":\"2020-11-12T22:32:00Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3PUY7WV365854K750345T\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:31:43', 'armj1923@gmail.com', '1404.03', 'completo'),
(126, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3TDQ62C49648BK8376058\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"80C05810KR710912W\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1100.00\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1100.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,100.00\",\"custom\":\"brqk4gvvu358atm34412186nlb#wWtcjI+3De2+Pvs+/tU8bA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"6SP33382N7581004F\",\"state\":\"completed\",\"amount\":{\"total\":\"1100.00\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1100.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"32.20\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3TDQ62C49648BK8376058\",\"create_time\":\"2020-11-12T22:39:23Z\",\"update_time\":\"2020-11-12T22:39:23Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6SP33382N7581004F\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6SP33382N7581004F/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3TDQ62C49648BK8376058\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:39:10Z\",\"update_time\":\"2020-11-12T22:39:23Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3TDQ62C49648BK8376058\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:38:52', 'armj1923@gmail.com', '1100.00', 'completo'),
(127, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3UCY74U41940T42928158\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"03Y001779R859221D\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1100.00\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1100.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,100.00\",\"custom\":\"brqk4gvvu358atm34412186nlb#VHfsPiHGjRM7AqUyu07xjw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"5FJ222535U858830K\",\"state\":\"completed\",\"amount\":{\"total\":\"1100.00\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1100.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"32.20\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3UCY74U41940T42928158\",\"create_time\":\"2020-11-12T22:41:27Z\",\"update_time\":\"2020-11-12T22:41:27Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5FJ222535U858830K\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5FJ222535U858830K/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3UCY74U41940T42928158\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:41:15Z\",\"update_time\":\"2020-11-12T22:41:27Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3UCY74U41940T42928158\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:41:08', 'armj1923@gmail.com', '1100.00', 'completo'),
(128, 'brqk4gvvu358atm34412186nlb', '{\"id\":\"PAYID-L6W3UVQ08X72938FR631732B\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"3BG07419V88963424\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"adrian-comprador@duramas.com.ec\",\"first_name\":\"Adrian\",\"last_name\":\"Morales\",\"payer_id\":\"HLWWGFNNM5J32\",\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4084068897\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1100.00\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1100.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"XQ762ZW9KW95L\",\"email\":\"duramas-empresa@duramas.com.ec\"},\"description\":\"Compra de productos a Duramas:$1,100.00\",\"custom\":\"brqk4gvvu358atm34412186nlb#HDKdHR6LP1ue8EZU5n5fEg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Adrian Morales\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"3LD19808UB439922L\",\"state\":\"completed\",\"amount\":{\"total\":\"1100.00\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1100.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"32.20\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-L6W3UVQ08X72938FR631732B\",\"create_time\":\"2020-11-12T22:42:44Z\",\"update_time\":\"2020-11-12T22:42:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/3LD19808UB439922L\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/3LD19808UB439922L/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3UVQ08X72938FR631732B\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-11-12T22:42:30Z\",\"update_time\":\"2020-11-12T22:42:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L6W3UVQ08X72938FR631732B\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-11-12 17:42:23', 'armj1923@gmail.com', '1100.00', 'completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventa_detalle`
--

CREATE TABLE `tblventa_detalle` (
  `ID` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `precio_unitario` decimal(20,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descargado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventa_detalle`
--

INSERT INTO `tblventa_detalle` (`ID`, `id_venta`, `id_producto`, `precio_unitario`, `cantidad`, `descargado`) VALUES
(1, 10, 1, '300.00', 1, 0),
(2, 10, 2, '1005.35', 1, 0),
(3, 10, 3, '48.32', 1, 0),
(4, 10, 5, '25.36', 1, 0),
(5, 10, 4, '50.36', 1, 0),
(6, 11, 1, '300.00', 1, 0),
(7, 11, 2, '1005.35', 1, 0),
(8, 11, 3, '48.32', 1, 0),
(9, 11, 5, '25.36', 1, 0),
(10, 11, 4, '50.36', 1, 0),
(11, 12, 1, '300.00', 1, 0),
(12, 12, 2, '1005.35', 1, 0),
(13, 12, 3, '48.32', 1, 0),
(14, 12, 5, '25.36', 1, 0),
(15, 12, 4, '50.36', 1, 0),
(16, 13, 4, '50.36', 1, 0),
(17, 14, 4, '50.36', 1, 0),
(18, 15, 4, '50.36', 1, 0),
(19, 16, 4, '50.36', 1, 0),
(20, 17, 4, '50.36', 1, 0),
(21, 18, 4, '50.36', 1, 0),
(22, 19, 4, '50.36', 1, 0),
(23, 20, 4, '50.36', 1, 0),
(24, 21, 4, '50.36', 1, 0),
(25, 22, 4, '50.36', 1, 0),
(26, 23, 4, '50.36', 1, 0),
(27, 24, 4, '50.36', 1, 0),
(28, 25, 4, '50.36', 1, 0),
(29, 26, 4, '50.36', 1, 0),
(30, 27, 4, '50.36', 1, 0),
(31, 28, 4, '50.36', 1, 0),
(32, 29, 1, '300.00', 1, 0),
(33, 29, 2, '1005.35', 1, 0),
(34, 29, 3, '48.32', 1, 0),
(35, 30, 2, '1005.35', 1, 0),
(36, 30, 3, '48.32', 1, 0),
(37, 30, 4, '50.36', 1, 0),
(38, 31, 2, '1005.35', 1, 0),
(39, 31, 3, '48.32', 1, 0),
(40, 31, 4, '50.36', 1, 0),
(41, 32, 2, '1005.35', 1, 0),
(42, 32, 3, '48.32', 1, 0),
(43, 32, 4, '50.36', 1, 0),
(44, 33, 1, '300.00', 1, 0),
(45, 33, 3, '48.32', 1, 0),
(46, 34, 2, '1005.35', 1, 0),
(47, 34, 3, '48.32', 1, 0),
(48, 34, 4, '50.36', 1, 0),
(49, 35, 2, '1005.35', 1, 0),
(50, 35, 3, '48.32', 1, 0),
(51, 35, 4, '50.36', 1, 0),
(52, 36, 2, '1005.35', 1, 0),
(53, 36, 3, '48.32', 1, 0),
(54, 36, 4, '50.36', 1, 0),
(55, 37, 2, '1005.35', 1, 0),
(56, 37, 3, '48.32', 1, 0),
(57, 37, 4, '50.36', 1, 0),
(58, 38, 2, '1005.35', 1, 0),
(59, 38, 3, '48.32', 1, 0),
(60, 38, 4, '50.36', 1, 0),
(61, 39, 1, '300.00', 1, 0),
(62, 39, 2, '1005.35', 1, 0),
(63, 39, 3, '48.32', 1, 0),
(64, 40, 1, '300.00', 1, 0),
(65, 40, 2, '1005.35', 1, 0),
(66, 40, 3, '48.32', 1, 0),
(67, 41, 1, '300.00', 1, 0),
(68, 41, 2, '1005.35', 1, 0),
(69, 41, 3, '48.32', 1, 0),
(70, 42, 1, '300.00', 1, 0),
(71, 42, 2, '1005.35', 1, 0),
(72, 42, 3, '48.32', 1, 0),
(73, 43, 1, '300.00', 1, 0),
(74, 43, 2, '1005.35', 1, 0),
(75, 43, 3, '48.32', 1, 0),
(76, 44, 1, '300.00', 1, 0),
(77, 44, 2, '1005.35', 1, 0),
(78, 44, 3, '48.32', 1, 0),
(79, 45, 1, '300.00', 1, 0),
(80, 45, 2, '1005.35', 1, 0),
(81, 45, 3, '48.32', 1, 0),
(82, 46, 1, '300.00', 1, 0),
(83, 46, 2, '1005.35', 1, 0),
(84, 46, 3, '48.32', 1, 0),
(85, 47, 1, '300.00', 1, 0),
(86, 47, 2, '1005.35', 1, 0),
(87, 47, 5, '25.36', 1, 0),
(88, 48, 1, '300.00', 1, 0),
(89, 48, 2, '1005.35', 1, 0),
(90, 49, 1, '300.00', 1, 0),
(91, 49, 2, '1005.35', 1, 0),
(92, 50, 1, '300.00', 1, 0),
(93, 50, 2, '1005.35', 1, 0),
(94, 51, 1, '300.00', 1, 0),
(95, 51, 2, '1005.35', 1, 0),
(96, 52, 1, '300.00', 1, 0),
(97, 52, 2, '1005.35', 1, 0),
(98, 53, 1, '300.00', 1, 0),
(99, 53, 2, '1005.35', 1, 0),
(102, 54, 1, '300.00', 1, 0),
(103, 54, 2, '1005.35', 1, 0),
(104, 55, 2, '1005.35', 1, 0),
(105, 56, 2, '1005.35', 1, 0),
(106, 57, 2, '1005.35', 1, 0),
(107, 58, 2, '1005.35', 1, 0),
(108, 60, 2, '1005.35', 1, 0),
(109, 61, 2, '1005.35', 1, 0),
(110, 61, 1, '300.00', 1, 0),
(111, 61, 3, '48.32', 1, 0),
(112, 62, 2, '1005.35', 1, 0),
(113, 62, 1, '300.00', 1, 0),
(114, 62, 3, '48.32', 1, 0),
(115, 62, 6, '15.26', 1, 0),
(116, 63, 2, '1005.35', 1, 0),
(117, 63, 1, '300.00', 1, 0),
(118, 63, 6, '15.26', 1, 0),
(119, 64, 2, '1005.35', 1, 0),
(120, 64, 1, '300.00', 1, 0),
(121, 65, 2, '1005.35', 1, 0),
(122, 65, 1, '300.00', 1, 0),
(123, 66, 2, '1005.35', 1, 0),
(124, 66, 1, '300.00', 1, 0),
(125, 66, 3, '48.32', 1, 0),
(126, 66, 4, '50.36', 1, 0),
(127, 67, 1, '300.00', 1, 0),
(128, 67, 2, '1005.35', 1, 0),
(129, 67, 3, '48.32', 1, 0),
(130, 68, 1, '300.00', 1, 0),
(131, 68, 2, '1005.35', 1, 0),
(132, 68, 3, '48.32', 1, 0),
(133, 68, 6, '15.26', 1, 0),
(134, 69, 1, '300.00', 1, 0),
(135, 69, 2, '1005.35', 1, 0),
(136, 69, 3, '48.32', 1, 0),
(137, 69, 6, '15.26', 1, 0),
(138, 70, 1, '300.00', 1, 0),
(139, 70, 2, '1005.35', 1, 0),
(140, 70, 3, '48.32', 1, 0),
(141, 70, 6, '15.26', 1, 0),
(142, 70, 4, '50.36', 1, 0),
(143, 71, 1, '300.00', 1, 0),
(144, 71, 2, '1005.35', 1, 0),
(145, 71, 3, '48.32', 1, 0),
(146, 71, 6, '15.26', 1, 0),
(147, 71, 4, '50.36', 1, 0),
(148, 72, 1, '300.00', 1, 0),
(149, 72, 2, '1005.35', 1, 0),
(150, 72, 3, '48.32', 1, 0),
(151, 72, 6, '15.26', 1, 0),
(152, 72, 4, '50.36', 1, 0),
(153, 73, 4, '50.36', 1, 0),
(154, 74, 4, '50.36', 1, 0),
(155, 75, 2, '1005.35', 1, 0),
(156, 75, 3, '48.32', 1, 0),
(157, 75, 4, '50.36', 1, 0),
(158, 75, 6, '15.26', 1, 0),
(159, 76, 3, '48.32', 1, 0),
(160, 77, 2, '1005.35', 1, 0),
(161, 77, 3, '48.32', 1, 0),
(162, 77, 4, '50.36', 1, 0),
(163, 78, 1, '300.00', 1, 0),
(164, 78, 3, '48.32', 1, 0),
(165, 78, 4, '50.36', 1, 0),
(166, 79, 1, '300.00', 1, 0),
(167, 79, 3, '48.32', 1, 0),
(168, 80, 5, '25.36', 1, 0),
(169, 81, 5, '25.36', 1, 0),
(170, 82, 5, '25.36', 1, 0),
(171, 83, 3, '48.32', 1, 0),
(172, 84, 1, '300.00', 1, 0),
(173, 84, 2, '1005.35', 1, 0),
(174, 84, 3, '48.32', 1, 0),
(175, 85, 1, '300.00', 1, 0),
(176, 85, 2, '1005.35', 1, 0),
(177, 85, 3, '48.32', 1, 0),
(178, 86, 2, '1005.35', 1, 0),
(179, 86, 3, '48.32', 1, 0),
(180, 87, 2, '1005.35', 1, 0),
(181, 87, 3, '48.32', 1, 0),
(182, 88, 2, '1005.35', 1, 0),
(183, 88, 3, '48.32', 1, 0),
(184, 89, 2, '1005.35', 1, 0),
(185, 89, 3, '48.32', 1, 0),
(186, 89, 4, '50.36', 1, 0),
(187, 89, 6, '15.26', 1, 0),
(188, 90, 2, '1005.35', 1, 0),
(189, 90, 3, '48.32', 1, 0),
(190, 90, 4, '50.36', 1, 0),
(191, 90, 6, '15.26', 1, 0),
(192, 91, 2, '1005.35', 1, 0),
(193, 91, 3, '48.32', 1, 0),
(194, 91, 4, '50.36', 1, 0),
(195, 91, 6, '15.26', 1, 0),
(196, 92, 2, '1005.35', 1, 0),
(197, 92, 3, '48.32', 1, 0),
(198, 92, 4, '50.36', 1, 0),
(199, 92, 6, '15.26', 1, 0),
(200, 93, 2, '1005.35', 1, 0),
(201, 94, 8, '1100.00', 1, 0),
(202, 95, 8, '1100.00', 1, 0),
(203, 96, 8, '1100.00', 1, 0),
(204, 97, 8, '1100.00', 1, 0),
(205, 98, 8, '1100.00', 1, 0),
(206, 99, 8, '1100.00', 1, 0),
(207, 100, 8, '1100.00', 1, 0),
(208, 101, 1, '300.00', 1, 0),
(209, 101, 2, '1005.35', 1, 0),
(210, 101, 3, '48.32', 1, 0),
(211, 101, 8, '1100.00', 1, 0),
(212, 102, 1, '300.00', 1, 0),
(213, 102, 2, '1005.35', 1, 0),
(214, 102, 3, '48.32', 1, 0),
(215, 102, 8, '1100.00', 1, 0),
(216, 103, 8, '1100.00', 1, 0),
(217, 103, 3, '48.32', 1, 0),
(218, 104, 8, '1100.00', 1, 0),
(219, 104, 3, '48.32', 1, 0),
(220, 105, 8, '1100.00', 1, 0),
(221, 105, 3, '48.32', 1, 0),
(222, 106, 8, '1100.00', 1, 0),
(223, 106, 3, '48.32', 1, 0),
(224, 107, 3, '48.32', 1, 0),
(225, 107, 8, '1100.00', 1, 0),
(226, 108, 3, '48.32', 1, 0),
(227, 108, 8, '1100.00', 1, 0),
(228, 109, 3, '48.32', 1, 0),
(229, 109, 8, '1100.00', 1, 0),
(230, 110, 3, '48.32', 1, 0),
(231, 110, 8, '1100.00', 1, 0),
(232, 111, 3, '48.32', 1, 0),
(233, 111, 8, '1100.00', 1, 0),
(234, 112, 3, '48.32', 1, 0),
(235, 112, 8, '1100.00', 1, 0),
(236, 113, 3, '48.32', 1, 0),
(237, 113, 8, '1100.00', 1, 0),
(238, 114, 6, '15.26', 1, 0),
(239, 114, 8, '1100.00', 1, 0),
(240, 115, 5, '25.36', 1, 0),
(241, 115, 1, '300.00', 1, 0),
(242, 115, 8, '1100.00', 1, 0),
(243, 116, 5, '25.36', 1, 0),
(244, 116, 1, '300.00', 1, 0),
(245, 116, 8, '1100.00', 1, 0),
(246, 117, 5, '25.36', 1, 1),
(247, 117, 1, '300.00', 1, 1),
(248, 117, 8, '1100.00', 1, 1),
(249, 118, 2, '1005.35', 1, 1),
(250, 118, 3, '48.32', 1, 1),
(251, 118, 4, '50.36', 1, 1),
(252, 119, 1, '300.00', 1, 1),
(253, 119, 2, '1005.35', 1, 1),
(254, 119, 8, '1100.00', 1, 1),
(255, 120, 1, '300.00', 1, 0),
(256, 120, 3, '48.32', 1, 0),
(257, 120, 8, '1100.00', 1, 0),
(258, 121, 1, '300.00', 1, 1),
(259, 121, 3, '48.32', 1, 1),
(260, 121, 8, '1100.00', 1, 1),
(261, 122, 1, '300.00', 1, 0),
(262, 122, 2, '1005.35', 1, 0),
(263, 122, 3, '48.32', 1, 0),
(264, 123, 1, '300.00', 1, 1),
(265, 123, 2, '1005.35', 1, 1),
(266, 123, 3, '48.32', 1, 1),
(267, 124, 1, '300.00', 1, 0),
(268, 124, 2, '1005.35', 1, 0),
(269, 124, 3, '48.32', 1, 0),
(270, 124, 4, '50.36', 1, 0),
(271, 125, 1, '300.00', 1, 1),
(272, 125, 2, '1005.35', 1, 1),
(273, 125, 3, '48.32', 1, 1),
(274, 125, 4, '50.36', 1, 1),
(275, 126, 8, '1100.00', 1, 1),
(276, 127, 8, '1100.00', 1, 1),
(277, 128, 8, '1100.00', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventa_detalle`
--
ALTER TABLE `tblventa_detalle`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `tblventa_detalle`
--
ALTER TABLE `tblventa_detalle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblventa_detalle`
--
ALTER TABLE `tblventa_detalle`
  ADD CONSTRAINT `fk_venta_detalle_producto` FOREIGN KEY (`id_producto`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_venta_detalle_venta` FOREIGN KEY (`id_venta`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
