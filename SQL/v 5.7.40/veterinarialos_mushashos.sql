-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-11-2024 a las 13:56:37
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
-- Estructura de tabla para la tabla `citas_vet`
--

DROP TABLE IF EXISTS `citas_vet`;
CREATE TABLE IF NOT EXISTS `citas_vet` (
  `Idmascota` int(10) NOT NULL,
  `nombreMascota` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `veterinario` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `fechaCita` date NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `estadoAnimal` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `especie` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Idcita` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Idcita`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Volcado de datos para la tabla `citas_vet`
--

INSERT INTO `citas_vet` (`Idmascota`, `nombreMascota`, `veterinario`, `fechaCita`, `direccion`, `estadoAnimal`, `especie`, `Idcita`) VALUES
(15326, 'Panfilo', 'Ocar', '2024-11-12', 'una veterinaria muy panista', 'Lesionado', 'Velocirraptor', 1),
(15326, 'Panfilo', 'Ocar', '2024-11-12', 'una veterinaria muy panista', 'Lesionado', 'Velocirraptor', 2);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registromedico`
--

DROP TABLE IF EXISTS `registromedico`;
CREATE TABLE IF NOT EXISTS `registromedico` (
  `Nomma` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Nomdue` varchar(60) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Edad` int(11) NOT NULL,
  `Peso` int(11) NOT NULL,
  `TelDue` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Dirdue` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `CURPANI` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CURPANI`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Volcado de datos para la tabla `registromedico`
--

INSERT INTO `registromedico` (`Nomma`, `Nomdue`, `Edad`, `Peso`, `TelDue`, `Dirdue`, `CURPANI`) VALUES
('Panfilo', 'Pili', 14, 1, '7971035316', 'una casa muy panista', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
