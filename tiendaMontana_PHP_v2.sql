-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2021 a las 18:29:36
-- Versión del servidor: 8.0.22
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendamontana_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `idActividad` int NOT NULL,
  `escaladaActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ferrataActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderoActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paseoCaballoActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horarioActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`idActividad`, `escaladaActividad`, `ferrataActividad`, `senderoActividad`, `paseoCaballoActividad`, `horarioActividad`) VALUES
(1, 'Ana Maestre', '', 'Lucia Chopo', '', '10:00:00'),
(2, '', 'Dario Cruz', '', 'Alex Dominguez', '11:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `idAdministrativo` int NOT NULL,
  `eventualTrabajdor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoTrabajdor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoTrabajador` int NOT NULL,
  `sueldoTrabajador` decimal(18,2) NOT NULL,
  `atencionPublico` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrabilidad` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idTrabajadorFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`idAdministrativo`, `eventualTrabajdor`, `nombreTrabajador`, `apellidoTrabajdor`, `telefonoTrabajador`, `sueldoTrabajador`, `atencionPublico`, `contrabilidad`, `idTrabajadorFK`) VALUES
(1, 'Si', 'Ana', 'Maestre', 659898789, '1200.00', 'No', 'No', 1),
(2, 'Si', 'Lucia', 'Chopo', 659568789, '1200.00', 'No', 'No', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int NOT NULL,
  `dniCliente` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoCliente` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionCliente` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoCliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idClientes`, `dniCliente`, `nombreCliente`, `apellidoCliente`, `direccionCliente`, `telefonoCliente`) VALUES
(1, '13465678P', 'Mirian', 'Garcia', 'Calle Persiana 12', 656234567),
(2, '16784569U', 'Pablo', 'Perez', 'Camino Pompella 45', 604548967);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE `guias` (
  `idGuia` int NOT NULL,
  `eventualTrabajdor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoTrabajdor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoTrabajador` int NOT NULL,
  `sueldoTrabajador` decimal(18,2) NOT NULL,
  `tituloEspecializado` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idTrabajadorFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`idGuia`, `eventualTrabajdor`, `nombreTrabajador`, `apellidoTrabajdor`, `telefonoTrabajador`, `sueldoTrabajador`, `tituloEspecializado`, `idTrabajadorFK`) VALUES
(1, 'Si', 'Ana', 'Maestre', 659898789, '1200.00', 'Escalada', 1),
(2, 'Si', 'Lucia', 'Chopo', 629898756, '1200.00', 'Paseo Caballo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idReserva` int NOT NULL,
  `fechaReserva` date NOT NULL,
  `idClienteFK` int NOT NULL,
  `idActividadFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idReserva`, `fechaReserva`, `idClienteFK`, `idActividadFK`) VALUES
(1, '2020-03-20', 2, 1),
(2, '2020-04-01', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguros`
--

CREATE TABLE `seguros` (
  `idSeguro` int NOT NULL,
  `nombreSeguro` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuotaSeguro` decimal(18,2) NOT NULL,
  `gradoGarantia` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionCompania` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seguros`
--

INSERT INTO `seguros` (`idSeguro`, `nombreSeguro`, `cuotaSeguro`, `gradoGarantia`, `direccionCompania`) VALUES
(1, 'MAPFRE - Todo Riesgo Vehiculos', '1800.00', 'Todo Riesgo Vehiculos', 'Calle Gloriosa 13'),
(2, 'MAPFRE - Todo Riesgo Actividades', '1800.00', 'Todo Riesgo Actividades', 'Calle Gloriosa, 13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `idTienda` int NOT NULL,
  `localidadTienda` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoTienda` int NOT NULL,
  `nombreTienda` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionTienda` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeguroFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`idTienda`, `localidadTienda`, `telefonoTienda`, `nombreTienda`, `direccionTienda`, `idSeguroFK`) VALUES
(1, 'Zaragoza', 659786956, 'NertaSport', 'Calle Galaroza, 24', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `idTrabajador` int NOT NULL,
  `nombreTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoTrabajador` int NOT NULL,
  `sueldoTrabajador` decimal(18,2) NOT NULL,
  `eventualTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idTrabajadorFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`idTrabajador`, `nombreTrabajador`, `apellidoTrabajador`, `telefonoTrabajador`, `sueldoTrabajador`, `eventualTrabajador`, `idTrabajadorFK`) VALUES
(1, 'Ana', 'Maestre', 659898789, '1200.00', 'Si', 0),
(2, 'Lucia', 'Chopo', 659568789, '1200.00', 'Si', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`idActividad`);

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`idAdministrativo`),
  ADD KEY `idTrabajadorFK` (`idTrabajadorFK`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
  ADD PRIMARY KEY (`idGuia`),
  ADD KEY `idTrabajadorFK` (`idTrabajadorFK`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idClienteFK` (`idClienteFK`),
  ADD KEY `idActividadFK` (`idActividadFK`);

--
-- Indices de la tabla `seguros`
--
ALTER TABLE `seguros`
  ADD PRIMARY KEY (`idSeguro`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`idTienda`),
  ADD KEY `idSeguroFK` (`idSeguroFK`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`idTrabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `idActividad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `idAdministrativo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `guias`
--
ALTER TABLE `guias`
  MODIFY `idGuia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idReserva` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguros`
--
ALTER TABLE `seguros`
  MODIFY `idSeguro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `idTienda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `idTrabajador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_ibfk_1` FOREIGN KEY (`idTrabajadorFK`) REFERENCES `trabajadores` (`idTrabajador`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `guias`
--
ALTER TABLE `guias`
  ADD CONSTRAINT `guias_ibfk_1` FOREIGN KEY (`idTrabajadorFK`) REFERENCES `trabajadores` (`idTrabajador`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idClientes`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`idActividadFK`) REFERENCES `actividades` (`idActividad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`idSeguroFK`) REFERENCES `seguros` (`idSeguro`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
