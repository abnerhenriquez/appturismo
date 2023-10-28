-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 28-10-2023 a las 23:04:52
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guiaturistico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aliados`
--

CREATE TABLE `aliados` (
  `id` int(11) NOT NULL,
  `documento` varchar(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `comercio` varchar(50) NOT NULL,
  `correo` text NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT 0,
  `latitud` text DEFAULT NULL,
  `longitud` text DEFAULT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aliados`
--

INSERT INTO `aliados` (`id`, `documento`, `nombre`, `telefono`, `comercio`, `correo`, `tipo_id`, `estado`, `latitud`, `longitud`, `plan_id`) VALUES
(1, '324242', 'ewdsde', '324424', 'dvfdv', 'sdasd@gmail.com', 3, 0, '8547', '145214', 1),
(2, '121515', 'dsfsdc', '151564', 'ascsad', 'stiven@gmail.com', 3, 0, '542', '854', 1),
(3, '51515', 'sacfvfv ', '1541525', 'bgbfvcg', 'torees.rosa07@gmail.com', 0, 1, '', '', 3),
(4, '1457513641', 'david', '48578945', 'ventas rapidas', 'torees.rosa07@gmail.com', 1, 1, '', '', 1),
(7, '654789', 'juan', '74125', 'pan', 'david@gmail.com', 1, 0, '', '', 1),
(8, '64215', 'padre', '548615', 'habita', 'abner09@gmail.com', 3, 0, NULL, NULL, 1),
(10, '5784631', 'yolmer', '254879', 'turismo', 'turismo@gmail.com', 2, 0, '87463', '45789', 3),
(12, '1003259538', 'abner ', '3186990534', 'proturismo', 'adhenriquez@unicesar.edu.co', 2, 0, '12350', '1242', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aliado_plan`
--

CREATE TABLE `aliado_plan` (
  `id` int(11) NOT NULL,
  `aliado_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `estado` double NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `descripcion` text NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `nota` text NOT NULL,
  `aliado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `clave`, `tipo`) VALUES
(1, 'admin123', 'admin123', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aliados`
--
ALTER TABLE `aliados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `tipo_id` (`tipo_id`);

--
-- Indices de la tabla `aliado_plan`
--
ALTER TABLE `aliado_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aliado_id` (`aliado_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aliado_id` (`aliado_id`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aliados`
--
ALTER TABLE `aliados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `aliado_plan`
--
ALTER TABLE `aliado_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
