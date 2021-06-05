SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `tiendamontana_php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `tiendamontana_php`;

DROP TABLE IF EXISTS `actividades`;
CREATE TABLE `actividades` (
  `idActividad` int NOT NULL,
  `escaladaActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ferrataActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderoActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paseoCaballoActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horarioActividad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `actividades` (`idActividad`, `escaladaActividad`, `ferrataActividad`, `senderoActividad`, `paseoCaballoActividad`, `horarioActividad`) VALUES
(1, 'Ana Maestre', '', 'Lucia Chopo', '', '10:00:00'),
(2, '', 'Dario Cruz', '', 'Alex Dominguez', '11:00:00');

DROP TABLE IF EXISTS `administrativos`;
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

INSERT INTO `administrativos` (`idAdministrativo`, `eventualTrabajdor`, `nombreTrabajador`, `apellidoTrabajdor`, `telefonoTrabajador`, `sueldoTrabajador`, `atencionPublico`, `contrabilidad`, `idTrabajadorFK`) VALUES
(1, 'Si', 'Ana', 'Maestre', 659898789, '1200.00', 'No', 'No', 1),
(2, 'Si', 'Lucia', 'Chopo', 659568789, '1200.00', 'No', 'No', 2);

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL,
  `dniCliente` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoCliente` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionCliente` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoCliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `clientes` (`idClientes`, `dniCliente`, `nombreCliente`, `apellidoCliente`, `direccionCliente`, `telefonoCliente`) VALUES
(1, '13465678P', 'Mirian', 'Garcia', 'Calle Persiana 12', 656234567),
(2, '16784569U', 'Pablo', 'Perez', 'Camino Pompella 45', 604548967);

DROP TABLE IF EXISTS `guias`;
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

INSERT INTO `guias` (`idGuia`, `eventualTrabajdor`, `nombreTrabajador`, `apellidoTrabajdor`, `telefonoTrabajador`, `sueldoTrabajador`, `tituloEspecializado`, `idTrabajadorFK`) VALUES
(1, 'Si', 'Ana', 'Maestre', 659898789, '1200.00', 'Escalada', 1),
(2, 'Si', 'Lucia', 'Chopo', 629898756, '1200.00', 'Paseo Caballo', 2);

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas` (
  `idReserva` int NOT NULL,
  `fechaReserva` date NOT NULL,
  `idClienteFK` int NOT NULL,
  `idActividadFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `reservas` (`idReserva`, `fechaReserva`, `idClienteFK`, `idActividadFK`) VALUES
(1, '2020-03-20', 2, 1),
(2, '2020-04-01', 1, 2);

DROP TABLE IF EXISTS `seguros`;
CREATE TABLE `seguros` (
  `idSeguro` int NOT NULL,
  `nombreSeguro` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuotaSeguro` decimal(18,2) NOT NULL,
  `gradoGarantia` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionCompania` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `seguros` (`idSeguro`, `nombreSeguro`, `cuotaSeguro`, `gradoGarantia`, `direccionCompania`) VALUES
(1, 'MAPFRE - Todo Riesgo Vehiculos', '1800.00', 'Todo Riesgo Vehiculos', 'Calle Gloriosa 13'),
(2, 'MAPFRE - Todo Riesgo Actividades', '1800.00', 'Todo Riesgo Actividades', 'Calle Gloriosa, 13');

DROP TABLE IF EXISTS `tienda`;
CREATE TABLE `tienda` (
  `idTienda` int NOT NULL,
  `localidadTienda` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoTienda` int NOT NULL,
  `nombreTienda` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionTienda` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeguroFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `trabajadores`;
CREATE TABLE `trabajadores` (
  `idTrabajador` int NOT NULL,
  `nombreTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonoTrabajador` int NOT NULL,
  `sueldoTrabajador` decimal(18,2) NOT NULL,
  `eventualTrabajador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `trabajadores` (`idTrabajador`, `nombreTrabajador`, `apellidoTrabajador`, `telefonoTrabajador`, `sueldoTrabajador`, `eventualTrabajador`) VALUES
(1, 'Ana', 'Maestre', 659898789, '1200.00', 'Si'),
(2, 'Lucia', 'Chopo', 659568789, '1200.00', 'Si');


ALTER TABLE `actividades`
  ADD PRIMARY KEY (`idActividad`);

ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`idAdministrativo`),
  ADD KEY `idTrabajadorFK` (`idTrabajadorFK`);

ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

ALTER TABLE `guias`
  ADD PRIMARY KEY (`idGuia`),
  ADD KEY `idTrabajadorFK` (`idTrabajadorFK`);

ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idClienteFK` (`idClienteFK`),
  ADD KEY `idActividadFK` (`idActividadFK`);

ALTER TABLE `seguros`
  ADD PRIMARY KEY (`idSeguro`);

ALTER TABLE `tienda`
  ADD PRIMARY KEY (`idTienda`),
  ADD KEY `idSeguroFK` (`idSeguroFK`);

ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`idTrabajador`);


ALTER TABLE `actividades`
  MODIFY `idActividad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `administrativos`
  MODIFY `idAdministrativo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `clientes`
  MODIFY `idClientes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `guias`
  MODIFY `idGuia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `reservas`
  MODIFY `idReserva` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `seguros`
  MODIFY `idSeguro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tienda`
  MODIFY `idTienda` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `trabajadores`
  MODIFY `idTrabajador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_ibfk_1` FOREIGN KEY (`idTrabajadorFK`) REFERENCES `trabajadores` (`idTrabajador`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `guias`
  ADD CONSTRAINT `guias_ibfk_1` FOREIGN KEY (`idTrabajadorFK`) REFERENCES `trabajadores` (`idTrabajador`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idClientes`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`idActividadFK`) REFERENCES `actividades` (`idActividad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`idSeguroFK`) REFERENCES `seguros` (`idSeguro`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
