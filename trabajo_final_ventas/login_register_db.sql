-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2023 a las 04:44:02
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_register_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre_producto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` int NOT NULL,
  `cantidad` int NOT NULL,
  `imagen` varchar(555) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre_producto`, `precio`, `cantidad`, `imagen`) VALUES
(1, 'Laptop HP', 800, 6, 'imagen1.png'),
(2, 'Smartphone Samsung', 500, 14, 'imagen2.png'),
(3, 'Tablet Lenovo', 250, 19, 'imagen3.png'),
(4, 'Smartwatch Apple', 300, 12, 'imagen4.png'),
(5, 'Auriculares inalámbricos Bose', 200, 7, 'imagen5.png'),
(6, 'Altavoz Bluetooth JBL', 100, 25, 'imagen6.png'),
(7, 'Cámara Canon', 600, 6, 'imagen7.png'),
(8, 'Monitor LG', 350, 9, 'imagen8.png'),
(9, 'Teclado mecánico Logitech', 120, 18, 'imagen9.png'),
(10, 'Mouse inalámbrico Microsoft', 40, 30, 'imagen10.png'),
(11, 'Impresora HP', 180, 7, 'imagen11.png'),
(12, 'Disco duro externo Seagate', 80, 22, 'imagen12.png'),
(13, 'Tarjeta gráfica NVIDIA', 700, 5, 'imagen13.png'),
(14, 'Router ASUS', 150, 11, 'imagen14.png'),
(15, 'Webcam Logitech', 70, 17, 'imagen15.png'),
(16, 'Adaptador USB-C a HDMI', 20, 40, 'imagen16.png'),
(17, 'Batería portátil Anker', 50, 13, 'imagen17.png'),
(18, 'Estuche para laptop Targus', 30, 28, 'imagen18.png'),
(19, 'Soporte para monitor VIVO', 25, 34, 'imagen19.png'),
(20, 'LAPTOP ACER', 3033, 28, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTofRrpiDEVEluB3nMKltyceiyixZP_x4qHGA&usqp=CAU');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasena` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`) VALUES
(1, 'mary', 'graymibenjamin@gmail.com', 'lucy123'),
(2, 'pepe', 'hola@gmail.com', '1234'),
(3, 'kevin', 'kevin@gmail.com', '12345'),
(5, 'bili', 'bili@gmail.com', 'bili');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
