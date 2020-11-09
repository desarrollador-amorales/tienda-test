-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2020 a las 21:20:24
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
(1, 'Learn PHP 7', '300.00', 'Viele sozialwissenschaftliche Untersuchungen beruhen auf Rekonstruktionen von Situationen oder Prozessen. Das Lehrbuch vermittelt anhand zweier Beispieluntersuchungen anwendungsbereites Wissen über alle Phasen solcher rekonstruierender Untersuchungen und stellt je eine Erhebungs- und eine Auswertungsmethode ausführlich vor. Die Interviewpartner werden als Experten aufgefasst, die über spezifisches Wissen über die zu rekonstruierenden Sachverhalte verfügen. Die qualitative Inhaltsanalyse ermöglicht eine systematische Extraktion relevanter Informationen aus den Interviews und ist zugleich offen für nicht erwartete Befunde. Mit Lernfragen nach jedem Kapitel und einer übersichtlichen Gliederung eignet sich das Buch als praxisorientierte Einführung.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(2, 'Professional ASP.NET MVC 5', '1005.35', 'This book explains, demonstrates, and applies techniques that intersect with two great tools of the information age. The first tool, the database, is relatively old. On the other hand, the second tool, the Internet, is still quite young. And when you pair these tools—voilà! You can create powerful web pages.\r\n\r\nWith the help of Beginning ASP Databases, you will learn to incorporate databases into your ASP applications using ADO (which provides a set of objects that you can connect to, read from, and write to). You\'ll gain comfort installing necessary software handling stored procedures. And this book will answer many real-world questions, complete with code for you to copy and paste.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(3, 'Beginning ASP Databases', '48.32', 'Journal of Science Education and Technology is an interdisciplinary forum for the publication of original peer-reviewed, contributed and invited research articles of the highest quality that address the intersection of science education and technology with implications for improving and enhancing science education at all levels across the world. Topics covered can be categorized as disciplinary (biology, chemistry, physics, as well as some applications of computer science and engineering, including the processes of learning, teaching and teacher development), technological (hardware, software, deigned and situated environments involving applications characterized as with, through and in), and organizational (legislation, administration, implementation and teacher enhancement)', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(4, 'test de prueba', '50.36', 'Journal of Science Education and Technology is an interdisciplinary forum for the publication of original peer-reviewed, contributed and invited research articles of the highest quality that address the intersection of science education and technology with implications for improving and enhancing science education at all levels across the world. Topics covered can be categorized as disciplinary (biology, chemistry, physics, as well as some applications of computer science and engineering, including the processes of learning, teaching and teacher development), technological (hardware, software, deigned and situated environments involving applications characterized as with, through and in), and organizational (legislation, administration, implementation and teacher enhancement)', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(5, 'Armj', '25.36', 'Journal of Science Education and Technology is an interdisciplinary forum for the publication of original peer-reviewed, contributed and invited research articles of the highest quality that address the intersection of science.', 'http://duramas.com.ec/wp-content/uploads/2020/02/410nYSBxerL._SY355_.jpg?_t=1580997326');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
