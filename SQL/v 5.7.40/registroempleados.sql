-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-11-2024 a las 13:58:23
-- Versión del servidor: 5.7.40
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinarialos mushashos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroempleados`
--

DROP TABLE IF EXISTS `registroempleados`;
CREATE TABLE IF NOT EXISTS `registroempleados` (
  `nombre` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `puesto` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Volcado de datos para la tabla `registroempleados`
--

INSERT INTO `registroempleados` (`nombre`, `apellido`, `puesto`, `edad`, `telefono`, `direccion`, `Id`) VALUES
('MAMAMA', 'Dias', '9 aÃ±os', 30, '7974582131', 'mamamamammamamamammama', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
