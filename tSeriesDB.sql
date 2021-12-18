-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 18-12-2021 a las 04:32:24
-- Versión del servidor: 10.3.32-MariaDB-1:10.3.32+maria~focal
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tSeriesDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleEngine`
--

CREATE TABLE `ruleEngine` (
  `id` int(11) NOT NULL,
  `ruleName` varchar(255) NOT NULL,
  `active` binary(1) NOT NULL,
  `topicPattern` varchar(1024) NOT NULL,
  `payloadPattern` varchar(2048) NOT NULL,
  `method` varchar(7) NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruleEngine`
--

INSERT INTO `ruleEngine` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'timestamp rule', 0x01, 'timestamp%', '%', 'POST', 'http://172.17.0.1:1880/pub/modifiedTime/rule-engine-works'),
(2, 'timestamp rule 2', 0x01, 'timestamp%', '%', 'POST', 'http://172.17.0.1:1880/pub/modifiedTime/rule-engine-working-again'),
(3, 'again rule', 0x01, 'timestamp%', '%again', 'POST', 'http:/172.17.0.1:1880/pub/modifiedTime/again-found');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thingData`
--

CREATE TABLE `thingData` (
  `id` int(11) NOT NULL,
  `topic` varchar(1024) NOT NULL,
  `payload` varchar(2048) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `deleted` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `thingData`
--

INSERT INTO `thingData` (`id`, `topic`, `payload`, `timestamp`, `deleted`) VALUES
(2, 'thingsData', 'payload', '1638072599.823', 0x30),
(3, 'thingsData', '1638073587875', '1638073587.877', 0x30),
(4, 'timestamp', '1638073764738', '1638073764.740', 0x30),
(5, 'thingsData', 'payload', '1638074679.601', 0x30),
(6, 'thingsData', 'payload', '1638075172.476', 0x30),
(7, 'thingsData', 'payload', '1638075762.504', 0x30),
(8, 'thingsData', 'payload', '1638075826.386', 0x30),
(9, 'thingsData', 'payload', '1638076621.670', 0x30),
(10, 'thingsData', 'payload', '1638077583.001', 0x30),
(11, 'thingsData', 'payload', '1638077596.925', 0x30),
(12, 'thingsData', 'payload', '1638077609.570', 0x30),
(13, 'timestamp', '1638077677173', '1638077677.175', 0x30),
(14, 'timestamp', '1638077710619', '1638077710.621', 0x31),
(15, 'thingsData', 'payload', '1638078330.067', 0x30),
(16, 'timestamp', '1638078686045', '1638078686.046', 0x31),
(17, 'thingsData', 'payload', '1638146942.520', 0x30),
(18, 'timestamp', '1638148836993', '1638148836.999', 0x30),
(19, 'thingsData', 'payload', '1638148946.314', 0x30),
(20, 'timestamp', '1638768454693', '1638768454.699', 0x30),
(21, 'timestamp', '1638768456422', '1638768456.423', 0x30),
(22, 'prueba', '1638768606884', '1638768606.889', 0x30),
(23, 'prueba', '1638768631957', '1638768631.965', 0x30),
(24, 'prueba', '1638768665992', '1638768665.995', 0x30),
(25, 'prueba', '1638768668603', '1638768668.609', 0x30),
(26, 'prueba', '1638768709209', '1638768709.213', 0x30),
(27, 'thingsData', 'payload', '1639431944.420', 0x30),
(28, 'thingsData', 'payload', '1639431944.421', 0x30),
(29, 'thingsData', 'payload', '1639432133.686', 0x30),
(30, 'thingsData', 'payload', '1639432133.686', 0x30),
(31, 'thingsData', 'payload', '1639432203.307', 0x30),
(32, 'thingsData', 'payload', '1639432203.307', 0x30),
(33, 'thingsData', 'payload', '1639432307.248', 0x30),
(34, 'thingsData', 'payload', '1639432307.247', 0x30),
(35, 'topic', 'payload', '1639432853.138', 0x30),
(36, 'topic', 'payload', '1639432853.140', 0x30),
(37, 'thingsData', 'robotica', '1639432910.977', 0x30),
(38, 'thingsData', 'robotica', '1639432910.977', 0x30),
(39, 'thingsData', 'kbroncho', '1639433136.164', 0x30),
(40, 'thingsData', 'kbroncho', '1639433136.165', 0x30),
(41, 'topic', 'payload', '1639801478.393', 0x30),
(42, 'topic', 'payload', '1639801478.394', 0x30),
(43, 'topic', 'payload', '1639801478.394', 0x30),
(44, 'topic', 'payload', '1639801508.924', 0x30),
(45, 'topic', 'payload', '1639801508.925', 0x30),
(46, 'topic', 'payload', '1639801508.926', 0x30),
(47, 'topic', 'payload', '1639801602.927', 0x30),
(48, 'topic', 'payload', '1639801602.928', 0x30),
(49, 'topic', 'payload', '1639801602.928', 0x30),
(50, 'topic', 'payload', '1639801651.942', 0x30),
(51, 'topic', 'payload', '1639801651.942', 0x30),
(52, 'topic', 'payload', '1639801651.943', 0x30),
(53, 'topic', 'payload', '1639801651.944', 0x30),
(54, 'topic', 'payload', '1639801827.850', 0x30),
(55, 'topic', 'payload', '1639801827.851', 0x30),
(56, 'topic', 'payload', '1639801827.851', 0x30),
(57, 'topic', 'payload', '1639801827.851', 0x30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ruleEngine`
--
ALTER TABLE `ruleEngine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `thingData`
--
ALTER TABLE `thingData`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ruleEngine`
--
ALTER TABLE `ruleEngine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `thingData`
--
ALTER TABLE `thingData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
