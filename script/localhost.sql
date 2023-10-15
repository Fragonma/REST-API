-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-10-2023 a las 21:41:20
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-api`
--
CREATE DATABASE IF NOT EXISTS `rest-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rest-api`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libros`
--
-- Creación: 14-10-2023 a las 21:51:22
--

CREATE TABLE `Libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `año-publicacion` date NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Libros`
--

INSERT INTO `Libros` (`id`, `nombre`, `autor`, `categoria`, `año-publicacion`, `ISBN`) VALUES
(1, 'El corazón de la piedra', 'José María García López', 'Ficcion', '2013-01-20', '9788493975074'),
(2, 'El principito', 'Antoine de Saint-Exupéry', 'Fábula', '1943-04-06', '9783140464079'),
(3, 'Cometas en el Cielo', 'Khaled Hosseini', 'Drama', '2003-05-29', '9788478888856'),
(4, 'El Codigo Da Vinci ', 'Dan Brown', 'Misterio', '2003-03-18', '9788408096146'),
(5, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Sátira', '1605-01-16', '9788408061052');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Libros`
--
ALTER TABLE `Libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
