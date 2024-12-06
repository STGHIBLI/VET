-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-12-2024 a las 02:19:49
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

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
  `idmascota` int NOT NULL,
  `nombreMascota` varchar(40) NOT NULL,
  `veterinario` varchar(20) NOT NULL,
  `fechaCita` date NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estadoAnimal` varchar(20) NOT NULL,
  `especie` varchar(20) NOT NULL,
  `idcita` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idcita`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `citas_vet`
--

INSERT INTO `citas_vet` (`idmascota`, `nombreMascota`, `veterinario`, `fechaCita`, `direccion`, `estadoAnimal`, `especie`, `idcita`) VALUES
(9, 'Pochita', 'Momar', '2024-11-29', 'Una clinica bien panista', 'Enfermo', 'Gato', 2),
(9, 'Pochita', 'Momar', '2024-10-30', 'Una clinica bien bien panista', 'Lesionado', 'Gato', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroempleados`
--

DROP TABLE IF EXISTS `registroempleados`;
CREATE TABLE IF NOT EXISTS `registroempleados` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `puesto` varchar(20) NOT NULL,
  `edad` int NOT NULL,
  `telefono` int NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `idempleado` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idempleado`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `registroempleados`
--

INSERT INTO `registroempleados` (`nombre`, `apellido`, `puesto`, `edad`, `telefono`, `direccion`, `idempleado`) VALUES
('Jesus Yael', 'Romero Cortes', '3 años', 40, 1256842710, '0', 1),
('Jesus Yael', 'Romero Cortes', '3 años', 19, 1256842710, 'Una casa bien patrimonial ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registromedico`
--

DROP TABLE IF EXISTS `registromedico`;
CREATE TABLE IF NOT EXISTS `registromedico` (
  `Nomma` varchar(40) NOT NULL,
  `Nomdue` varchar(60) NOT NULL,
  `Edad` int NOT NULL,
  `Peso` int NOT NULL,
  `TelDue` varchar(10) NOT NULL,
  `Dirdue` varchar(100) NOT NULL,
  `CURPANI` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CURPANI`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `registromedico`
--

INSERT INTO `registromedico` (`Nomma`, `Nomdue`, `Edad`, `Peso`, `TelDue`, `Dirdue`, `CURPANI`) VALUES
('Pochita', 'Pilar', 84, 2, '7971035316', 'mamamamamam', 1),
('Pochita', 'Pilar', 84, 2, '7971035316', 'mamamamamam', 7),
('Pochita', 'Pilar', 84, 2, '7971035316', 'mamamamamam', 8),
('Pochita', 'Pilar Islas Aguilar', 96, 2, '7971035316', 'Una casa muy panista ', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `nombre_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `password_usuario` varchar(50) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre_usuario`, `email_usuario`, `password_usuario`, `id`) VALUES
('Pilar Islas Aguilar', 'piliisagui19@gmail.com', 'lalilulelo', 11),
('Jesús Omar Hernández Carrillo ', 'piliisagui19@gmail.com', '$2y$10$l8uoXGIrW490Amj7lhUh3uCpeYTZ6TVsB4WrkKWDOu3', 7),
('Pilar Islas Aguilar', 'piliisagui19@gmail.com', 'lalilulelo', 12),
('Oscar Uriel Nájera Hernández ', 'piliisagui19@gmail.com', '$2y$10$l8uoXGIrW490Amj7lhUh3uCpeYTZ6TVsB4WrkKWDOu3', 9),
('Marco Antionio Vargas Zaragoza', 'piliisagui19@gmail.com', '$2y$10$l8uoXGIrW490Amj7lhUh3uCpeYTZ6TVsB4WrkKWDOu3', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
