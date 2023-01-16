-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2023 a las 06:00:17
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bddrone`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `distrito` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `dni`, `nombre`, `distrito`, `edad`, `celular`, `correo`, `sexo`) VALUES
(1, '11111', 'Rosario', 'San Borja', 20, '9999999', 'rocio@gmail.com', 'femenino'),
(2, '2222222', 'Elizabeth', 'Miraflores', 25, '32144634', 'eli@gmail.com', 'femenino'),
(3, '3333333', 'Pedro', 'San Miguel', 30, '3345363', 'pedro@gmail.com', 'masculino'),
(4, '44444444', 'Juan', 'Magdalena', 35, '43654753', 'juan@gmail.com', 'masculino'),
(5, '555555', 'Jose', 'Cercado de Lima', 40, '48952301', 'jose@gmail.com', 'masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `sueldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla empleado';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `fabricacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla producto';

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `nombre`, `marca`, `modelo`, `precio`, `stock`, `fabricacion`) VALUES
(1, 'KKM22', 'DJI Mini', 'DJI', 'SE FI', 2000, 10, 2018),
(2, 'LLK009', 'DJI Mini 2', 'DJI', 'Fly', 2500, 20, 2023),
(3, 'KJKJ98', 'DJI OM', 'DJI', 'Athens', 1400, 5, 2012),
(4, 'JK211', 'Dron Sycron', 'S/M', 'F20', 3000, 20, 2022),
(5, 'LKK99', 'Mini Drone', 'ITELSYSTEM', 'TK 106', 2000, 22, 2019);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` varchar(10) NOT NULL,
  `razonsocial` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `distrito` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `paginaweb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla proveedor';

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `ruc`, `razonsocial`, `direccion`, `distrito`, `telefono`, `correo`, `paginaweb`) VALUES
(1, '101111111', 'Drones Lurin', 'Urb. Los Girasoles 234 - Av. E', 'Lurin', '998887667', 'lurin@gmail.com', 'drones.lurin.com.pe'),
(2, '102222222', 'Drones Los Olivos', 'Urb. Los Geranios 111 - Av. La', 'Los Olivos', '998222345', 'losolivos@gmail.com', 'drones.losolivos.com.pe'),
(3, '9080', 'jibkj', 'kbk', 'jkj', 'kjb', 'klnkl', 'kbl');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
