-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2022 a las 22:11:05
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `entrada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartera`
--

CREATE TABLE `cartera` (
  `CODCAR` int(10) UNSIGNED NOT NULL,
  `DESCRIPCAR` varchar(45) NOT NULL,
  `PRECIOCAR` varchar(45) NOT NULL,
  `FECHACAR` varchar(45) NOT NULL,
  `CODTIPCAR` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cartera`
--

INSERT INTO `cartera` (`CODCAR`, `DESCRIPCAR`, `PRECIOCAR`, `FECHACAR`, `CODTIPCAR`) VALUES
(1, 'CARTERA DE CUERO Y BARNIZ', '500.89', '16/10/209', 1),
(2, 'CARTERA DE CUERO  ROJO', '200', '4/01/2022', 2),
(3, 'CARTERA DE CUERO DE COCODRILO', '400', '23/01/2020', 3),
(4, 'CARTERA ARTESANAL COSTERA', '600', '07/01/2020', 4),
(5, 'CARTERA ARTESANAL COSTEÑO', '700', '09/04/2017', 3),
(6, 'CARTERA DE PIEL DE OBEJA', '540', '01/03/2010', 1),
(7, 'CARTERA DE CUERO AZUL', '300', '03/04/2019', 2),
(8, 'CARTERA DE PIEL DE VICUÑA', '1500', '12/01/2020', 1),
(9, 'CARTERA DE PIEL DE LAGARTO', '1250.0', '12/06/2021', 3),
(10, 'CARTERA DE PIEL DE LAGARTO', '1250.0', '12/06/2021', 3),
(11, 'CARTERA COSTERA ', '2000.0', '12/09/2020', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocartera`
--

CREATE TABLE `tipocartera` (
  `CODTIPCAR` int(10) UNSIGNED NOT NULL,
  `NOMBTIPCAR` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocartera`
--

INSERT INTO `tipocartera` (`CODTIPCAR`, `NOMBTIPCAR`) VALUES
(1, 'ANDINO'),
(2, 'TRADICIONAL'),
(3, 'SELVATICO'),
(4, 'COSTEÑO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartera`
--
ALTER TABLE `cartera`
  ADD PRIMARY KEY (`CODCAR`),
  ADD KEY `FK_CARTERA_1` (`CODTIPCAR`);

--
-- Indices de la tabla `tipocartera`
--
ALTER TABLE `tipocartera`
  ADD PRIMARY KEY (`CODTIPCAR`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cartera`
--
ALTER TABLE `cartera`
  MODIFY `CODCAR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipocartera`
--
ALTER TABLE `tipocartera`
  MODIFY `CODTIPCAR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cartera`
--
ALTER TABLE `cartera`
  ADD CONSTRAINT `FK_CARTERA_1` FOREIGN KEY (`CODTIPCAR`) REFERENCES `tipocartera` (`CODTIPCAR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
