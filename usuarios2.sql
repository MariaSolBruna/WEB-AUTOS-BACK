-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2022 a las 22:30:21
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authusers`
--

CREATE TABLE `authusers` (
  `userName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `userPass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authusers`
--

INSERT INTO `authusers` (`userName`, `email`, `userPass`) VALUES
('Firulais', 'firu@firu.com', '827ccb0eea8a706c4c34a16891f84e7b'),
('HOli', 'chau@chau', '827ccb0eea8a706c4c34a16891f84e7b'),
('Homero', 'homero@dsjkdjlksa.com', '827ccb0eea8a706c4c34a16891f84e7b'),
('Lisa', 'Simpson@holi.com', '827ccb0eea8a706c4c34a16891f84e7b'),
('Marge', 'Simpson@holi.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listadoautos2`
--

CREATE TABLE `listadoautos2` (
  `Modelo` varchar(60) NOT NULL,
  `Marca` varchar(60) NOT NULL,
  `Versión` varchar(60) NOT NULL,
  `Año` varchar(60) NOT NULL,
  `Combustible` varchar(60) NOT NULL,
  `Motor` varchar(60) NOT NULL,
  `Precio` varchar(60) NOT NULL,
  `Imagen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `listadoautos2`
--

INSERT INTO `listadoautos2` (`Modelo`, `Marca`, `Versión`, `Año`, `Combustible`, `Motor`, `Precio`, `Imagen`) VALUES
('208', 'Peugeot', 'Feline Tiptronic', '2022', 'Nafta', '1.6', '4.321.620', 'rgaoakbtypowvxwirodf'),
('308', 'Peugeot', 'Feline Hdi', '2022', 'Diesel', '1.6', '4.474.575', 'd1ewpag6efx1pr6ac2sm'),
('5008', 'Peugeot', 'Allure Plus Hdi Tiptronic', '2022', 'Diesel', '2.0', '11.300.000', 'rxlgopf7blx07rsb9osb'),
('Cruze', 'Chevrolet', 'LT', '2021', 'Nafta', '1.6', '3.259.900', 'buht7vcuzxqcix9xspdq'),
('Frontier', 'Nissan', 'Xe Cd', '2021', 'Diesel', '2.3', '5.698.500', 'alw1rdcmvugfhibwrpm7'),
('Gol', 'Volkswagen', 'Trendline', '2021', 'Nafta', '1.6', ' 1.987.111', 'q53fikftefbtqakwzspk'),
('Golf', 'Volkswagen', 'Gti Tsi', '2021', 'Nafta', '2.0', '11.090.001', 'wdzp9vmq9frxuqxfk8er'),
('HR_V', 'Honda', 'EX', '2022', 'Nafta', '1.8', '6.500.000', 'wrxejzd81p9gsoyocv2s'),
('Kicks', 'Nissan', 'Sense', '2022', 'Nafta', '1.6', '4.124.000', 'qj816z1dzufenkx6hmfk'),
('Nivus', 'Volkswagen', 'Highline Tiptronic', '2022', 'Nafta', '1.0', '6.496.000', 'u1zolvyrcrjjf1mgskjh'),
('S10', 'Chevrolet', 'High Country Cd Tdci Automática', '2021', 'Diésel', '2.8', '8.051.880', 'hhmik9xgoqedd0pxq5cd'),
('T-Cross', 'Volkswagen', 'Highline Tiptronic', '2022', 'Nafta', '1.0', '6.496.000', 'ka7t41oolk0n9ghlnxus');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `listadoautos2`
--
ALTER TABLE `listadoautos2`
  ADD PRIMARY KEY (`Modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
