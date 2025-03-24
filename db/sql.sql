

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "-03:00";


DROP TABLE IF EXISTS `entidad`;
CREATE TABLE `entidad` (
  `idEntidad` int NOT NULL auto_increment PRIMARY key,
  `Tipo` varchar(15) NOT NULL,
  `Denominacion` varchar(50) NOT NULL,
  `RazonSocial` varchar(100) NOT NULL,
  `Iva` varchar(50) NOT NULL,
  `Domicilio` varchar(70) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Transporte` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Dni` varchar(10) NOT NULL,
  `Cuit` varchar(15) NOT NULL UNIQUE,
  `Telefono` varchar(50) NOT NULL,
  `Contacto1` varchar(50) NOT NULL,
  `Contacto2` varchar(50) NOT NULL,
  `Activo` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

DROP TABLE IF EXISTS `comprobante`;
CREATE TABLE `comprobante` (
  `idComprobante` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `IdCompAsoc` int(11) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Tipo` varchar(15) NOT NULL,
  `Circuito` varchar(10) NOT NULL,
  `Numero` varchar(15) NOT NULL,
  `IdEntidadPro` int(11) NOT NULL,
  `idEntidadCli` int(11) NOT NULL,
  `IdEntidadVia` int(11) NOT NULL,
  `FormaPago` varchar(150) NOT NULL,
  `Condicion` varchar(150) NOT NULL,
  `Observacion` varchar(150) NOT NULL,
  `Promo` varchar(1000) NOT NULL DEFAULT '',
  `ImpNeto` double(10,2) NOT NULL,
  `ImpTotal` double(10,2) NOT NULL,
  `FechaP` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

DROP TABLE IF EXISTS `compdet`;
CREATE TABLE `compdet` (
  `idCompDet` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `idComprobante` int(11) NOT NULL,
  `idLisDet` int(11) NOT NULL,
  `Cant` int(5) NOT NULL,
  `Articulo` varchar(15) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Precio` double(10,2) NOT NULL
  ) ENGINE=InnoDB AUTO_INCREMENT=9268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
  
DROP TABLE IF EXISTS `listado`;
CREATE TABLE `listado` (
  `idListado` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Nombre` varchar(40) DEFAULT NULL,
  `Fecha` text DEFAULT current_timestamp(),
  `Disponible` varchar(1) DEFAULT 'S',
  `Promo` varchar(1000) DEFAULT NULL,
  `idEntidad` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

DROP TABLE IF EXISTS `lisdet`;
CREATE TABLE `lisdet` (
  `IdLisDet` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `IdListado` int(11) NOT NULL,
  `Articulo` varchar(15) NOT NULL,
  `CantxBulto` int(8) NOT NULL,
  `CantParcial` int(5) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `CajaxPalets` varchar(5) NOT NULL,
  `Oferta` varchar(100) NOT NULL,
  `Precio` varchar(14) NOT NULL,
  `Disponible` varchar(1) NOT NULL DEFAULT 'S',
  `Descuento` varchar(14) NOT NULL,
  `Neto` varchar(14) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

DROP TABLE IF EXISTS `relacionentidad`;
CREATE TABLE `relacionentidad` (
  `idRelacion` int(11) NOT NULL AUTO_INCREMENT primary KEY,
  `idEntP` int(11) NOT NULL,
  `idEntC` int(11) NOT NULL,
  `NroCli` varchar(100) NOT NULL 
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

