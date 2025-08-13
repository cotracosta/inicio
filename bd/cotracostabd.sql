-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2023 a las 03:00:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cotracostabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `idLugar` int(10) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `avLugar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`idLugar`, `nombre`, `tipo`, `avLugar`) VALUES
(1, 'VALLEDUPAR', 'ORIGEN', 'V'),
(2, 'BARRANQUILLA', 'ORIGEN', 'BQUILLA'),
(3, 'TAMALAMEQUE', 'ORIGEN', 'T'),
(4, 'SANTA MARTA', 'ORIGEN', 'SM'),
(5, 'MAICAO', 'ORIGEN', 'M'),
(6, 'RIO HACHA', 'ORIGEN', 'RHA'),
(7, 'EL BANCO', 'ORIGEN', 'EBAN'),
(8, 'PLATO', 'ORIGEN', 'PLA'),
(9, 'ALBANIA', 'DESTINO', 'ALB'),
(10, 'APURE', 'DESTINO', 'AP'),
(11, 'ARACATACA', 'DESTINO', 'ARC'),
(12, 'ARJONA', 'DESTINO', 'ARJ'),
(13, 'BARRANCAS', 'DESTINO', 'BARR'),
(14, 'BARRANQUILLA', 'DESTINO', 'BQILLA'),
(15, 'BECERRIL', 'DESTINO', 'B'),
(16, 'BOSCONIA', 'DESTINO', 'BOS'),
(17, 'CHIMICHAGUA', 'DESTINO', 'CHIM'),
(18, 'CHIRIGUANA', 'DESTINO', 'CHIR'),
(19, 'CIENAGA', 'DESTINO', 'CIE'),
(20, 'CODAZZI', 'DESTINO', 'C'),
(21, 'CRUCE CHIRIGUANA', 'DESTINO', 'CR'),
(22, 'CUATRO VIENTOS', 'DESTINO', 'CV'),
(23, 'CUESTECITA', 'DESTINO', 'CUE'),
(24, 'CURUMANI', 'DESTINO', 'CUR'),
(25, 'EL BANCO', 'DESTINO', 'EBAN'),
(26, 'EL BURRO', 'DESTINO', 'EBURR'),
(27, 'EL COPEY', 'DESTINO', 'EC'),
(28, 'EL DIFICIL', 'DESTINO', 'ED'),
(29, 'EL PASO', 'DESTINO', 'EP'),
(30, 'FONSECA', 'DESTINO', 'F'),
(31, 'FUNDACION', 'DESTINO', 'FUND'),
(32, 'GRANADA', 'DESTINO', 'GR'),
(33, 'HATO NUEVO', 'DESTINO', 'HN'),
(34, 'LA GLORIA', 'DESTINO', 'LGLO'),
(35, 'LA JAGUA DE IBIRICO', 'DESTINO', 'LJDI'),
(36, 'LA LOMA DEL BALSAMO', 'DESTINO', 'LLDB'),
(37, 'MAICAO', 'DESTINO', 'M'),
(38, 'MANDINGUILLA', 'DESTINO', 'MAND'),
(39, 'MARIA ANGOLA', 'DESTINO', 'MA'),
(40, 'PAILITAS', 'DESTINO', 'PAI'),
(41, 'PLATO', 'DESTINO', 'PLA'),
(42, 'PUEBLO NUEVO', 'DESTINO', 'PN'),
(43, 'RINCON HONDO', 'DESTINO', 'RHON'),
(44, 'RIO HACHA', 'DESTINO', 'RHA'),
(45, 'SAN JUAN', 'DESTINO', 'SJ'),
(46, 'SAN ROQUE', 'DESTINO', 'SR'),
(47, 'SANTA MARTA', 'DESTINO', 'SM'),
(48, 'TAMALAMEQUE', 'DESTINO', 'T'),
(49, 'VALLEDUPAR', 'DESTINO', 'V'),
(50, 'VILLA NUEVA', 'DESTINO', 'VN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `idRuta` int(11) NOT NULL,
  `nombreRuta` varchar(50) NOT NULL,
  `avRuta` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`idRuta`, `nombreRuta`, `avRuta`) VALUES
(1, 'VALLEDUPAR A BARRANQUILLA', 'VB'),
(2, 'BARRANQUILLA A VALLEDUPAR', 'BV'),
(3, 'VALLEDUPAR A TAMALAMEQUE', 'VT'),
(4, 'TAMALAMEQUE A VALLEDUPAR', 'TV'),
(5, 'VALLEDUPAR A SANTA MARTA', 'VSM'),
(6, 'SANTA MARTA A MAICAO Y VALLEDUPAR', 'SMV'),
(7, 'VALLEDUPAR A MAICAO Y RIO HACHA', 'VMRH'),
(8, 'RIO HACHA Y MAICAO A VALLEDUPAR Y SANTA MARTA', 'RHMVSM'),
(9, 'VALLEDUPAR A EL BANCO MAGDALENA', 'VEB'),
(10, 'VALLEDUPAR A EL BANCO MAGDALENA', 'EBV'),
(11, 'VALLEDUPAR A PLATO MAGDALENA', 'VP'),
(12, 'PLATO A VALLEDUPAR', 'PV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutass`
--

CREATE TABLE `rutass` (
  `idRuta` int(11) NOT NULL,
  `origen` int(11) NOT NULL,
  `destino` int(11) NOT NULL,
  `avRuta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutass`
--

INSERT INTO `rutass` (`idRuta`, `origen`, `destino`, `avRuta`) VALUES
(1, 1, 2, 'V-B'),
(2, 2, 1, 'B-V'),
(3, 1, 3, ''),
(4, 3, 1, ''),
(5, 1, 4, ''),
(6, 4, 1, ''),
(7, 1, 6, ''),
(8, 1, 7, ''),
(9, 7, 1, ''),
(10, 1, 8, ''),
(11, 8, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `idTarifa` int(11) NOT NULL,
  `destino` varchar(35) NOT NULL,
  `precio` int(11) NOT NULL,
  `rutaAsignada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`idTarifa`, `destino`, `precio`, `rutaAsignada`) VALUES
(1, 'MARIA ANGOLA', 10000, 1),
(2, 'BOSCONIA', 15000, 1),
(3, 'EL COPEY', 25000, 1),
(4, 'LA LOMA DEL BALSAMO', 27000, 1),
(5, 'FUNDACION', 35000, 1),
(6, 'ARACATACA', 35000, 1),
(7, 'CIENAGA', 40000, 1),
(8, 'BARRANQUILLA', 50000, 1),
(9, 'CIENAGA', 15000, 2),
(10, 'FUNDACION', 30000, 2),
(11, 'LA LOMA DEL BALSAMO', 35000, 2),
(12, 'EL COPEY', 37000, 2),
(13, 'BOSCONIA', 40000, 2),
(14, 'MARIA ANGOLA', 45000, 2),
(15, 'VALLEDUPAR', 50000, 2),
(16, 'CODAZZI', 10000, 3),
(17, 'BECERRIL', 15000, 3),
(18, 'LA JAGUA DE IBIRICO', 18000, 3),
(19, 'RINCON HONDO', 20000, 3),
(20, 'CHIRIGUANA', 25000, 3),
(21, 'SAN ROQUE', 25000, 3),
(22, 'CURUMANI', 25000, 3),
(23, 'PAILITAS', 30000, 3),
(24, 'EL BURRO', 35000, 3),
(25, 'TAMALAMEQUE', 40000, 3),
(26, 'EL BURRO', 5000, 4),
(27, 'PAILITAS', 10000, 4),
(28, 'CURUMANI', 15000, 4),
(29, 'SAN ROQUE', 18000, 4),
(30, 'CRUCE CHIRIGUANA', 20000, 4),
(31, 'RINCON HONDO', 22000, 4),
(32, 'LA JAGUA DE IBIRICO', 25000, 4),
(33, 'BECERRIL', 27000, 4),
(34, 'CODAZZI', 30000, 4),
(35, 'VALLEDUPAR', 40000, 4),
(36, 'MARIA ANGOLA', 10000, 5),
(37, 'BOSCONIA', 15000, 5),
(38, 'EL COPEY', 25000, 5),
(39, 'LA LOMA DEL BALSAMO', 27000, 5),
(40, 'FUNDACION', 35000, 5),
(41, 'ARACATACA', 35000, 5),
(42, 'SANTA MARTA', 50000, 5),
(43, 'MAICAO', 50000, 6),
(44, 'ARACATACA', 30000, 6),
(45, 'FUNDACION', 30000, 6),
(46, 'LA LOMA DEL BALSAMO', 35000, 6),
(47, 'EL COPEY', 37000, 6),
(48, 'BOSCONIA', 40000, 6),
(49, 'MARIA ANGOLA', 45000, 6),
(50, 'VALLEDUPAR', 50000, 6),
(51, 'VILLA NUEVA', 15000, 7),
(52, 'SAN JUAN', 20000, 7),
(53, 'FONSECA', 25000, 7),
(54, 'BARRANCAS', 30000, 7),
(55, 'HATO NUEVO', 33000, 7),
(56, 'CUESTECITA', 35000, 7),
(57, 'ALBANIA', 37000, 7),
(58, 'MAICAO', 40000, 7),
(59, 'RIO HACHA', 40000, 7),
(60, 'SANTA MARTA', 40000, 8),
(61, 'ALBANIA', 10000, 8),
(62, 'CUESTECITA', 15000, 8),
(63, 'HATO NUEVO', 25000, 8),
(64, 'BARRANCAS', 27000, 8),
(65, 'FONSECA', 35000, 8),
(66, 'SAN JUAN', 35000, 8),
(67, 'VILLA NUEVA', 27000, 8),
(68, 'VALLEDUPAR', 40000, 8),
(69, 'BOSCONIA', 15000, 9),
(70, 'CUATRO VIENTOS', 20000, 9),
(71, 'EL PASO', 22000, 9),
(72, 'ARJONA', 25000, 9),
(73, 'MANDINGUILLA', 30000, 9),
(74, 'CHIMICHAGUA', 40000, 9),
(75, 'EL BANCO', 50000, 9),
(76, 'CHIMICHAGUA', 15000, 10),
(77, 'MANDINGUILLA', 20000, 10),
(78, 'ARJONA', 25000, 10),
(79, 'EL PASO', 30000, 10),
(80, 'CUATRO VIENTOS', 35000, 10),
(81, 'BOSCONIA', 40000, 10),
(82, 'VALLEDUPAR', 50000, 10),
(83, 'BOSCONIA', 15000, 11),
(84, 'PUEBLO NUEVO', 18000, 11),
(85, 'EL DIFICIL', 20000, 11),
(86, 'LA GLORIA', 30000, 11),
(87, 'GRANADA', 35000, 11),
(88, 'APURE', 40000, 11),
(89, 'PLATO', 50000, 11),
(90, 'APURE', 10000, 12),
(91, 'GRANADA', 15000, 12),
(92, 'LA GLORIA', 25000, 12),
(93, 'EL DIFICIL', 27000, 12),
(94, 'PUEBLO NUEVO', 35000, 12),
(95, 'BOSCONIA', 40000, 12),
(96, 'VALLEDUPAR', 50000, 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`idLugar`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`idRuta`);

--
-- Indices de la tabla `rutass`
--
ALTER TABLE `rutass`
  ADD PRIMARY KEY (`idRuta`),
  ADD KEY `fk_origen` (`origen`),
  ADD KEY `fk_destino` (`destino`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`idTarifa`),
  ADD KEY `fk_rutaAsignada` (`rutaAsignada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `idLugar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `idRuta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `rutass`
--
ALTER TABLE `rutass`
  MODIFY `idRuta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `idTarifa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rutass`
--
ALTER TABLE `rutass`
  ADD CONSTRAINT `fk_destino` FOREIGN KEY (`destino`) REFERENCES `lugares` (`idLugar`),
  ADD CONSTRAINT `fk_origen` FOREIGN KEY (`origen`) REFERENCES `lugares` (`idLugar`);

--
-- Filtros para la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD CONSTRAINT `fk_rutaAsignada` FOREIGN KEY (`rutaAsignada`) REFERENCES `rutas` (`idRuta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
